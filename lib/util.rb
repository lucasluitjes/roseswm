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

    values[:x] -= extents[0]
    values[:w] -= extents[1]
    values[:y] -= extents[2]
    values[:h] -= extents[3]

    info = `xwininfo -id #{id}`
    rel_x = info.scan(/Relative upper-left X: +(\d+)/).flatten.first.to_i
    rel_y = info.scan(/Relative upper-left Y: +(\d+)/).flatten.first.to_i

    # xdotool currently doesn't handle windows that have been maximized 
    # or tiled by gnome itself, until you run these two commands. 
    # (see: https://github.com/jordansissel/xdotool/issues/300)
    `wmctrl -ir #{id} -b toggle,maximized_vert,maximized_horz`
    `wmctrl -ir #{id} -b remove,maximized_vert,maximized_horz`

    # once works fine in xfce4, but in gnome some windows would move
    # to slightly-off positions. Running windowmove/windowsize a few 
    # times with a short sleep seemed to improve this behaviour.
   SET_GEOMETRY_ITERATIONS.times do 
      if get_geometry(id) != values
        `xdotool windowsize #{id} #{values[:w]} #{values[:h]}`
        `xdotool windowmove #{id} #{values[:x]} #{values[:y]}`
        sleep 0.05 if SET_GEOMETRY_ITERATIONS > 1
      end
    end
  end

  def focus(id)
    return unless id
    `wmctrl -ia 0x#{id.to_i.to_s(16)}`
  end
end
