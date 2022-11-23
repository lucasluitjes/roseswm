class Controller
  attr_accessor :m, :id, :curr_col, :curr_i, :curr_j

  CMDS_REQUIRING_ACTIVE_WINDOW = [
    %w{down left up right}.map {|n| "focus_#{n}"},
    %w{down left up right}.map {|n|  "move_#{n}"},
    :toggle_maximized,
    :toggle_fullscreen,
    :expand_left,
    :expand_right,
    :close_window
  ].flatten.map(&:to_sym)

  ALLOWED_CMDS = CMDS_REQUIRING_ACTIVE_WINDOW + [
    :move_tile_or_float, 
    :focus_tile_or_float, 
    :start_terminal,
    :force_resize,
    :force_redraw
  ].flatten.map(&:to_sym)

  def initialize(m)
    @m = m
  end

  def process(cmd)
    puts "\n\n"
    puts cmd

    m.remove_dead_windows!
    
    @id = `xdotool getactivewindow`.strip
    @curr_col = m.columns.find {|n| n.include?(id)}

    if ALLOWED_CMDS.include?(cmd) && !CMDS_REQUIRING_ACTIVE_WINDOW.include?(cmd)
      send(cmd)
    elsif cmd.to_s =~ /move_(\d)/
      move_tag($1)
    elsif cmd.to_s =~ /focus_(\d)/
      focus_tag($1)
    elsif curr_col && ALLOWED_CMDS.include?(cmd)
      @curr_i = m.columns.index(curr_col)
      @curr_j = curr_col.index(id)
      send(cmd)
    else
      puts "unknown command #{cmd}, or this command requires an active window managed by roses"
    end
    m.save_state
  end

  def focus_right
    m.focus (m.columns[curr_i + 1] || m.columns.first).first
  end

  def focus_left
    m.focus m.columns[curr_i - 1]&.first
  end

  def focus_up
    if m.column_maximized[curr_i]
      m.column_maximized[curr_i] = curr_col[curr_j - 1]
      m.redraw
    end

    m.focus(curr_col[curr_j - 1])
  end

  def focus_down
    if m.column_maximized[curr_i]
      m.column_maximized[curr_i] = (curr_col[curr_j + 1] || curr_col.first)
      m.redraw
    end

    m.focus(curr_col[curr_j + 1] || curr_col.first)
  end

  def toggle_maximized
    if m.column_maximized[curr_i]
      m.column_maximized[curr_i] = nil
      curr_col.each {|n| `xdotool windowraise #{n}`}
    else
      m.column_maximized[curr_i] = id
    end

    m.redraw
    m.focus(id)
  end

  def toggle_fullscreen 
    if m.fullscreen 
      m.columns.each {|n| n.each {|o| `wmctrl -ia 0x#{o.to_i.to_s(16)}` }}
      m.fullscreen = nil
    else
      m.fullscreen = id
    end

    m.redraw
    m.focus(id)
  end

  def move_up 
    return unless curr_col.size > 1
    if curr_col.first == id
      curr_col.delete(id)
      curr_col << id
    else
      curr_col[curr_j] = curr_col[curr_j - 1]
      curr_col[curr_j - 1] = id
    end

    m.redraw
    m.focus(id)
  end

  def move_down
    return unless curr_col.size > 1

    if curr_col.last == id
      curr_col.delete(id)
      curr_col.unshift(id)
    else
      curr_col[curr_j] = curr_col[curr_j + 1]
      curr_col[curr_j + 1] = id
    end

    m.redraw
    m.focus(id)
  end

  def move_right
    curr_col.delete(id)

    if m.column_maximized[curr_i] 
      m.column_maximized[curr_i] = nil#curr_col.first
      #`xdotool windowraise #{curr_col.first}` if curr_col.first
    end

    m.columns[curr_i + 1] ||= []
    m.columns[curr_i + 1].unshift(id)
    m.columns.delete(curr_col) if curr_col.empty?
    m.columns.compact!

    m.redraw
    m.focus(id)
  end

  def move_left
    curr_col.delete(id)

    if m.column_maximized[curr_i] 
      m.column_maximized[curr_i] = nil#curr_col.first
      #`xdotool windowraise #{curr_col.first}` if curr_col.first
    end

    m.column_maximized[curr_i] = nil
    m.columns.delete(curr_col) if curr_col.empty?
    m.columns.compact!

    if curr_i == 0
      m.columns.unshift([])
      self.curr_i += 1
    end
    m.columns[curr_i - 1].unshift(id)

    m.redraw
    m.focus(id)
  end

  def expand_left 
    return unless curr_i > 0 && m.columns[curr_i - 1] && m.column_sizes[curr_i]

    m.column_sizes[curr_i][:w] += RESIZE_AMOUNT
    m.column_sizes[curr_i][:x] -= RESIZE_AMOUNT
    m.column_sizes[curr_i - 1][:w] -= RESIZE_AMOUNT

    m.redraw
    m.focus(id)
  end

  def expand_right 
    return unless m.columns[curr_i + 1] && m.column_sizes[curr_i]

    m.column_sizes[curr_i][:w] += RESIZE_AMOUNT
    m.column_sizes[curr_i + 1][:w] -= RESIZE_AMOUNT
    m.column_sizes[curr_i + 1][:x] += RESIZE_AMOUNT

    m.redraw
    m.focus(id)
  end

  def close_window
    `zenity --question --ok-label OK --cancel-label Cancel --text "Close window?"`

    if $?.exitstatus == 0
      `wmctrl -i -c #{id}`

      sleep 0.1
      m.remove_dead_windows!

      if curr_col.empty?
        new_id = m.columns.find {|n| !n.empty? }&.first
        m.focus(new_id)
      else
        m.focus(curr_col.first)
      end
    end
  end

  def move_tile_or_float
    if m.columns.flatten.include?(id)
      m.columns.each {|c| c.delete(id) }
      m.set_geometry(id, m.floating_locations[id]) if m.floating_locations[id]

      m.redraw
      m.focus(id)
    else
      m.floating_locations[id] = m.get_geometry(id)
      m.columns[0] ||= []
      m.columns.first << id

      m.print_columns
      m.redraw
    end
  end
  
  def focus_tile_or_float
    tiling = m.columns.flatten.include?(id)
    floating = !tiling

    if floating && !m.columns.flatten.empty?
      m.last_float_focus = id
      m.columns.each {|c| c.each {|w| m.focus(w) }}
      m.focus(m.last_tiling_focus) if m.last_tiling_focus && m.columns.flatten.include?(m.last_tiling_focus)
    elsif tiling
      m.last_tiling_focus = id
      if m.last_float_focus && !m.columns.flatten.include?(m.last_float_focus)
        m.focus(m.last_float_focus)
      else
        candidate = (m.all_windows.flatten - m.tags.map {|t| t[:columns]}.flatten).first
        m.focus candidate if candidate
      end
    end
  end

  def move_tag(tag)
    if m.tags[tag.to_i-1][:columns].find {|n| n.include?(id)} 
      if m.tags.select {|n| n[:columns].find {|o| o.include?(id)}}.size > 1
        curr_col.delete(id)
        m.columns.delete(curr_col) if curr_col.empty? && m.columns.size > 1
        `xdotool windowminimize #{id}`
        m.redraw
      end
    else
      m.tags[tag.to_i-1][:columns][0] ||= []
      m.tags[tag.to_i-1][:columns].first << id
    end
  end

  def focus_tag(tag)
    if tag.to_i-1 != m.current_tag
      m.columns.each {|n| n.each {|o| `xdotool windowminimize #{o}`} }
      m.current_tag = tag.to_i-1
      m.columns.each {|n| n.each {|o| `wmctrl -ia 0x#{o.to_i.to_s(16)}` }}
    
      m.redraw
      m.focus(m.columns.first.first) if m.columns.first&.first
    end
  end

  def start_terminal
    curr_win_cwd = `xdotool getactivewindow getwindowname`
      .scan(/^Terminal - #{ENV['USER']}@#{HOSTNAME}: (.*?)$/)
      .flatten
      .first

    `cd #{curr_win_cwd || '~'} && nohup xfce4-terminal > /dev/null`
    sleep 0.2

    id = `xdotool getactivewindow`.strip
    m.floating_locations[id] = m.get_geometry(id)

    if curr_col
      curr_col << id
    else
      m.columns[0] ||= []
      m.columns[0] << id
    end

    m.redraw
    m.focus(id)
  end

  def force_resize
    m.set_column_sizes!
    m.redraw
  end

  def force_redraw
    m.redraw(5)
  end
end
