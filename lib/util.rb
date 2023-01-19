module Util
  def get_geometry(id)
    geometry = `xdotool getwindowgeometry --shell #{id}`
    hash = geometry.split("\n").map {|n| s=n.split("="); [s[0], s[1].to_i]}.to_h 
    {
      x: hash["X"],
      y: hash["Y"],
      w: hash["WIDTH"],
      h: hash["HEIGHT"]
    }
  end

  def set_geometry(id, values)
    xprop = `xprop _NET_FRAME_EXTENTS -id #{id}`
    extents= xprop.scan(/(-?\d+), (-?\d+), (-?\d+), (-?\d+)/).flatten.map(&:to_i)

    if extents.compact.empty?
      puts "can't find extents for #{id}, skipping"
      return
    end

    topbar = xprop.scan(/\d+, \d+, (-?\d+), \d+/).flatten.first.to_i

    info = `xwininfo -id #{id}`

    values[:x] -= extents[0]
    values[:w] -= extents[1]
    values[:y] -= extents[2]
    values[:h] -= extents[3]

    # Sometimes windows have extra decorations or seem to misreport 
    # their  extents. It seems to be dependent on the system 
    # configuration and program in question. There is probably a way 
    # to get/set more accurate geometry. But for now you can override 
    # this hook to modify the values before they get applied: 
    if LocalConfig.respond_to?(:after_cmd)
      LocalConfig.before_set_geometry(id, values, info, extents)
    end

    return if get_geometry(id) == values

    # xdotool currently doesn't handle windows that have been maximized 
    # or tiled by gnome itself, until you run these two commands. 
    # (see: https://github.com/jordansissel/xdotool/issues/300)
    `wmctrl -ir #{id} -b toggle,maximized_vert,maximized_horz`
    `wmctrl -ir #{id} -b remove,maximized_vert,maximized_horz`

    `xdotool windowmove #{id} #{values[:x]} #{values[:y]}`

    geom_iterations = values[:geom_iterations]
    (geom_iterations || SET_GEOMETRY_ITERATIONS).times do |i|
      sleep 0.05 if i > 0
      if get_geometry(id).slice(:w, :h) != values.slice(:w, :h)
        `xdotool windowsize #{id} #{values[:w]} #{values[:h]}`
      else
        return
      end
    end
  end

  def focus(id)
    return unless id
    `wmctrl -ia 0x#{id.to_i.to_s(16)}`
  end
end
