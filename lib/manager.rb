require_relative 'util'

class Manager
  include Util

  attr_accessor :tags,
                :current_tag,
                :floating_locations,
                :last_tiling_focus,
                :last_float_focus

  ["columns","old_columns", "fullscreen", "column_sizes","column_maximized"].each do |attr|
    eval("def #{attr}; @tags[@current_tag][:#{attr}] ; end")
    eval("def #{attr}=(val); @tags[@current_tag][:#{attr}] = val; end")
  end

  def initialize(state_path)
    @state_path = state_path

    if File.exist?(state_path) && !File.read(state_path).empty?
      c = File.read(state_path)
      state = JSON.parse(c, symbolize_names: true)
      @tags = state[:tags]
      @current_tag = state[:current_tag]

      if !PERSIST_SIZES
        @tags.each {|n| n[:column_sizes] = []; n[:old_columns] = [] }
      end
    else
      @tags = (1..9).to_a.map {{
        columns: [[]],
        old_columns: [],
        column_sizes: [],
        fullscreen: nil,
        column_maximized: []
      }}

      @current_tag = 0
    end

    @floating_locations = {}
    @last_float_focus = nil
    @last_tiling_focus = nil
  end
  
  def save_state
    return if @state_path.empty?

    File.open(@state_path, 'w') { |f| f.write(JSON.generate({
      columns: columns,
      old_columns: old_columns,
      tags: tags,
      fullscreen: fullscreen,
      current_tag: current_tag,
      column_sizes: column_sizes,
      column_maximized: column_maximized
    })) }
  end

  def print_columns
    pp columns
    pp columns.map {|c| c.map {|n| `xdotool getwindowname #{n}`.strip } }
  end

  def remove_dead_windows_and_redraw!
    before_removal = columns.dup
    remove_dead_windows!

    if before_removal == columns
      false
    else
      redraw 
      true
    end
  end

  def remove_dead_windows!
    living_windows = `wmctrl -l`.split("\n").map do |n| 
      n.scan(/^[^ ]+ /).flatten.first.to_i(16).to_s
    end

    before_filtering = columns.dup

    columns.each_with_index do |n,i|
      columns[i] = n.select {|m| living_windows.include?(m) }
    end

    redraw if columns != before_filtering
  end

  def set_column_sizes! 
    set_column_sizes(true) 
  end

  def get_resolution
    `xrandr`.scan(/connected primary (\d+)x(\d+)\+/).flatten.map(&:to_i)
  end

  def set_column_sizes(force=false)
    if columns.size != old_columns.size || force
      self.column_sizes = []
      res_w, res_h = get_resolution

      # this is specific for a 300px wide tint2 sidebar, move this 
      # to a callback in a local config file or something
      res_w -= 300 if `ps aux | grep int2` =~ / tint2\n/

      columns.each_with_index do |c,i|
        w_w = (res_w - (columns.size * MARGIN) - MARGIN) / columns.size
        w_x = (i * w_w) + MARGIN + (i * MARGIN)

        column_sizes[i] = {x: w_x, w: w_w}
        self.old_columns = columns.dup
      end
    end
  end
   
  def redraw(geom_iterations=nil)
    self.columns = columns.select {|n| !n.empty? }
    set_column_sizes

    puts "redrawing:"
    print_columns

    res_w, res_h = get_resolution
    res_w -= OFFSET_X
    res_h -= OFFSET_Y

    # this is specific for a 300px wide tint2 sidebar, move this 
    # to a callback in a local config file or something
    res_w -= 300 if `ps aux | grep int2` =~ / tint2\n/

    if fullscreen
      columns.each {|n| n.each {|id| `xdotool windowminimize #{id}` } }

      `wmctrl -ia 0x#{fullscreen.to_i.to_s(16)}`
      `wmctrl -ir 0x#{fullscreen.to_i.to_s(16)} -b add,maximized_vert,maximized_horz`
    else
      columns.each {|n| n.each {|o| `wmctrl -ia 0x#{o.to_i.to_s(16)}` }}

      threads = []
      columns.each_with_index do |c, c_i|
        set_column_sizes! unless column_sizes[c_i]

        w_w = column_sizes[c_i][:w]
        w_h = (res_h - (c.size * MARGIN) - MARGIN) / c.size unless c.empty?
        w_x = column_sizes[c_i][:x]

        c.each_with_index do |id, w_i|
          w_y = (w_i * w_h) + MARGIN + (w_i * MARGIN)
          max = column_maximized[c_i]

          if max
            set_geometry(
              id,
              w: w_w,
              h: res_h - (MARGIN*2),
              x: w_x,
              y: OFFSET_Y + MARGIN,
              geom_iterations: geom_iterations
            )

            if id == max
              `xdotool windowraise #{id}`
            else
              `xdotool windowminimize #{id}`
            end
          else
            threads << Thread.new do 
              set_geometry(
                id,
                w: w_w,
                h: w_h,# - (MARGIN*2),
                x: w_x,
                y: w_y + OFFSET_Y,# + MARGIN + OFFSET_Y
                geom_iterations: geom_iterations
              )
            end
          end
        end
      end
      threads.map(&:join)
    end
  end

  def all_windows
    `wmctrl -l`.strip.split("\n").select {|n| n !~ /0x[0-9a-z]+ -1/}.map do |line|
      line.split(' ').first.to_i(16).to_s
    end
  end
end
