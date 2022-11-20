
HOSTNAME = "ubuntu-linux-22-04-desktop"
OFFSET_X = 0
OFFSET_Y = 26
RESIZE_AMOUNT = 50
PERSIST_SIZES = false
MARGIN = 20

scenario do
  m = Manager.new('')
  m.current_tag = 0
  m.tags =   [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326"]],
    :old_columns=>[["50484326"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[["50607223"]],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["50505465"]],
    :old_columns=>[["50505465"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]}]
  m.floating_locations =   {}
  m.last_tiling_focus =   nil
  m.last_float_focus =   nil
  $cmds << ["wmctrl -l",
   "0x02000003 -1 <redacted>\n" +
   "0x03000033  0 <redacted>\n" +
   "0x03000041  0 <redacted>\n" +
   "0x01e00013 -1 <redacted>\n" +
   "0x0300111e  0 <redacted>\n" +
   "0x0600002c  0 <redacted>\n" +
   "0x0301df89  0 <redacted>\n" +
   "0x03025466  0 <redacted>\n" +
   "0x0302a6f9  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50331713\n"]
  $cmds << ["wmctrl -ia 0x3000033", ""]

  process(m, :focus_left)


  assert_eq m.current_tag, 0

  assert_eq m.tags, [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326"]],
    :old_columns=>[["50484326"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[["50607223"]],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["50505465"]],
    :old_columns=>[["50505465"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]}]
  assert_eq m.floating_locations,   {}
  assert_eq m.last_tiling_focus,   nil
  assert_eq m.last_float_focus,   nil
end


scenario do
  m = Manager.new('')
  m.current_tag = 0
  m.tags =   [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326"]],
    :old_columns=>[["50484326"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[["50607223"]],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["50505465"]],
    :old_columns=>[["50505465"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]}]
  m.floating_locations =   {}
  m.last_tiling_focus =   nil
  m.last_float_focus =   nil
  $cmds << ["wmctrl -l",
   "0x02000003 -1 <redacted>\n" +
   "0x03000033  0 <redacted>\n" +
   "0x03000041  0 <redacted>\n" +
   "0x01e00013 -1 <redacted>\n" +
   "0x0300111e  0 <redacted>\n" +
   "0x0600002c  0 <redacted>\n" +
   "0x0301df89  0 <redacted>\n" +
   "0x03025466  0 <redacted>\n" +
   "0x0302a6f9  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50331699\n"]
  $cmds << ["xdotool windowminimize 50484326", ""]
  $cmds << ["xdotool windowminimize 50331699", ""]
  $cmds << ["xdotool windowminimize 50336030", ""]
  $cmds << ["xdotool windowminimize 50454409", ""]
  $cmds << ["xdotool windowminimize 50331713", ""]
  $cmds << ["wmctrl -ia 0x600002c", ""]
  $cmds << ["xdotool getwindowname 100663340", "<redacted>\n"]
  $cmds << ["xrandr",
   "Screen 0: minimum 320 x 200, current 1920 x 1200, maximum 8192 x 8192\n" +
   "Virtual-1 connected primary 1920x1200+0+0 (normal left inverted right x axis y axis) 0mm x 0mm\n" +
   "   1920x1080     60.00 +  60.00  \n" +
   "   4096x2160     60.00    59.94  \n" +
   "   2560x1600     59.99    59.97  \n" +
   "   1920x1440     60.00  \n" +
   "   1856x1392     60.00  \n" +
   "   1792x1344     60.00  \n" +
   "   2048x1152     60.00  \n" +
   "   1920x1200     59.88*   59.95  \n" +
   "   1600x1200     60.00  \n" +
   "   1680x1050     59.95    59.88  \n" +
   "   1400x1050     59.98    59.95  \n" +
   "   1600x900      60.00  \n" +
   "   1280x1024     60.02  \n" +
   "   1440x900      59.89    59.90  \n" +
   "   1280x960      60.00  \n" +
   "   1366x768      59.79    60.00  \n" +
   "   1360x768      60.02  \n" +
   "   1280x800      59.81    59.91  \n" +
   "   1280x768      59.87    59.99  \n" +
   "   1280x720      60.00  \n" +
   "   1024x768      60.00  \n" +
   "   800x600       60.32    56.25  \n" +
   "   848x480       60.00  \n" +
   "   640x480       59.94  \n" +
   "Virtual-2 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-3 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-4 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-5 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-6 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-7 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-8 disconnected\n" +
   "Virtual-9 disconnected\n" +
   "Virtual-10 disconnected\n" +
   "Virtual-11 disconnected\n" +
   "Virtual-12 disconnected\n" +
   "Virtual-13 disconnected\n" +
   "Virtual-14 disconnected\n" +
   "Virtual-15 disconnected\n" +
   "Virtual-16 disconnected\n"]
  $cmds << ["ps aux | grep int2",
   "paralle+  816679  0.0  0.0   2308   840 pts/3    S+   17:05   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  816681  0.0  0.0   9016  1868 pts/3    S+   17:05   0:00 grep int2\n"]
  $cmds << ["wmctrl -ia 0x600002c", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 100663340",
   "_NET_FRAME_EXTENTS(CARDINAL) = 5, 5, 29, 5\n"]
  $cmds << ["xwininfo -id 100663340",
   "\n" +
   "xwininfo: Window id: 0x600002c \n" +
   "\n" +
   "  Absolute upper-left X:  20\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  5\n" +
   "  Relative upper-left Y:  29\n" +
   "  Width: 1875\n" +
   "  Height: 1129\n" +
   "  Depth: 32\n" +
   "  Visual: 0x6cb\n" +
   "  Visual Class: TrueColor\n" +
   "  Border width: 0\n" +
   "  Class: InputOutput\n" +
   "  Colormap: 0x6000002 (not installed)\n" +
   "  Bit Gravity State: NorthWestGravity\n" +
   "  Window Gravity State: NorthWestGravity\n" +
   "  Backing Store State: NotUseful\n" +
   "  Save Under State: no\n" +
   "  Map State: IsViewable\n" +
   "  Override Redirect State: no\n" +
   "  Corners:  +20+46  -25+46  -25-25  +20-25\n" +
   "  -geometry 1875x1129+15+17\n" +
   "\n"]
  $cmds << ["wmctrl -ir 100663340 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 100663340 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 100663340",
   "WINDOW=100663340\n" +
   "X=25\n" +
   "Y=75\n" +
   "WIDTH=1875\n" +
   "HEIGHT=1129\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 100663340 1875 1129", ""]
  $cmds << ["xdotool windowmove 100663340 15 17", ""]
  $cmds << ["wmctrl -ia 0x600002c", ""]

  process(m, :focus_3)


  assert_eq m.current_tag, 2

  assert_eq m.tags, [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326"]],
    :old_columns=>[["50484326"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[["50607223"]],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["50505465"]],
    :old_columns=>[["50505465"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]}]
  assert_eq m.floating_locations,   {}
  assert_eq m.last_tiling_focus,   nil
  assert_eq m.last_float_focus,   nil
end


scenario do
  m = Manager.new('')
  m.current_tag = 2
  m.tags =   [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326"]],
    :old_columns=>[["50484326"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[["50607223"]],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["50505465"]],
    :old_columns=>[["50505465"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]}]
  m.floating_locations =   {}
  m.last_tiling_focus =   nil
  m.last_float_focus =   nil
  $cmds << ["wmctrl -l",
   "0x02000003 -1 <redacted>\n" +
   "0x03000033  0 <redacted>\n" +
   "0x03000041  0 <redacted>\n" +
   "0x01e00013 -1 <redacted>\n" +
   "0x0300111e  0 <redacted>\n" +
   "0x0600002c  0 <redacted>\n" +
   "0x0301df89  0 <redacted>\n" +
   "0x03025466  0 <redacted>\n" +
   "0x0302a6f9  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "100663340\n"]
  $cmds << ["xdotool windowminimize 100663340", ""]
  $cmds << ["xrandr",
   "Screen 0: minimum 320 x 200, current 1920 x 1200, maximum 8192 x 8192\n" +
   "Virtual-1 connected primary 1920x1200+0+0 (normal left inverted right x axis y axis) 0mm x 0mm\n" +
   "   1920x1080     60.00 +  60.00  \n" +
   "   4096x2160     60.00    59.94  \n" +
   "   2560x1600     59.99    59.97  \n" +
   "   1920x1440     60.00  \n" +
   "   1856x1392     60.00  \n" +
   "   1792x1344     60.00  \n" +
   "   2048x1152     60.00  \n" +
   "   1920x1200     59.88*   59.95  \n" +
   "   1600x1200     60.00  \n" +
   "   1680x1050     59.95    59.88  \n" +
   "   1400x1050     59.98    59.95  \n" +
   "   1600x900      60.00  \n" +
   "   1280x1024     60.02  \n" +
   "   1440x900      59.89    59.90  \n" +
   "   1280x960      60.00  \n" +
   "   1366x768      59.79    60.00  \n" +
   "   1360x768      60.02  \n" +
   "   1280x800      59.81    59.91  \n" +
   "   1280x768      59.87    59.99  \n" +
   "   1280x720      60.00  \n" +
   "   1024x768      60.00  \n" +
   "   800x600       60.32    56.25  \n" +
   "   848x480       60.00  \n" +
   "   640x480       59.94  \n" +
   "Virtual-2 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-3 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-4 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-5 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-6 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-7 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-8 disconnected\n" +
   "Virtual-9 disconnected\n" +
   "Virtual-10 disconnected\n" +
   "Virtual-11 disconnected\n" +
   "Virtual-12 disconnected\n" +
   "Virtual-13 disconnected\n" +
   "Virtual-14 disconnected\n" +
   "Virtual-15 disconnected\n" +
   "Virtual-16 disconnected\n"]
  $cmds << ["ps aux | grep int2",
   "paralle+  816703  0.0  0.0   2308   836 pts/3    S+   17:05   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  816705  0.0  0.0   9016  1868 pts/3    S+   17:05   0:00 grep int2\n"]
  $cmds << ["xrandr",
   "Screen 0: minimum 320 x 200, current 1920 x 1200, maximum 8192 x 8192\n" +
   "Virtual-1 connected primary 1920x1200+0+0 (normal left inverted right x axis y axis) 0mm x 0mm\n" +
   "   1920x1080     60.00 +  60.00  \n" +
   "   4096x2160     60.00    59.94  \n" +
   "   2560x1600     59.99    59.97  \n" +
   "   1920x1440     60.00  \n" +
   "   1856x1392     60.00  \n" +
   "   1792x1344     60.00  \n" +
   "   2048x1152     60.00  \n" +
   "   1920x1200     59.88*   59.95  \n" +
   "   1600x1200     60.00  \n" +
   "   1680x1050     59.95    59.88  \n" +
   "   1400x1050     59.98    59.95  \n" +
   "   1600x900      60.00  \n" +
   "   1280x1024     60.02  \n" +
   "   1440x900      59.89    59.90  \n" +
   "   1280x960      60.00  \n" +
   "   1366x768      59.79    60.00  \n" +
   "   1360x768      60.02  \n" +
   "   1280x800      59.81    59.91  \n" +
   "   1280x768      59.87    59.99  \n" +
   "   1280x720      60.00  \n" +
   "   1024x768      60.00  \n" +
   "   800x600       60.32    56.25  \n" +
   "   848x480       60.00  \n" +
   "   640x480       59.94  \n" +
   "Virtual-2 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-3 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-4 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-5 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-6 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-7 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-8 disconnected\n" +
   "Virtual-9 disconnected\n" +
   "Virtual-10 disconnected\n" +
   "Virtual-11 disconnected\n" +
   "Virtual-12 disconnected\n" +
   "Virtual-13 disconnected\n" +
   "Virtual-14 disconnected\n" +
   "Virtual-15 disconnected\n" +
   "Virtual-16 disconnected\n"]
  $cmds << ["ps aux | grep int2",
   "paralle+  816707  0.0  0.0   2308   820 pts/3    S+   17:05   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  816709  0.0  0.0   9016  1868 pts/3    S+   17:05   0:00 grep int2\n"]

  process(m, :focus_4)


  assert_eq m.current_tag, 3

  assert_eq m.tags, [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326"]],
    :old_columns=>[["50484326"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[["50607223"]],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["50505465"]],
    :old_columns=>[["50505465"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]}]
  assert_eq m.floating_locations,   {}
  assert_eq m.last_tiling_focus,   nil
  assert_eq m.last_float_focus,   nil
end


scenario do
  m = Manager.new('')
  m.current_tag = 3
  m.tags =   [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326"]],
    :old_columns=>[["50484326"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[["50607223"]],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["50505465"]],
    :old_columns=>[["50505465"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]}]
  m.floating_locations =   {}
  m.last_tiling_focus =   nil
  m.last_float_focus =   nil
  $cmds << ["wmctrl -l",
   "0x02000003 -1 <redacted>\n" +
   "0x03000033  0 <redacted>\n" +
   "0x03000041  0 <redacted>\n" +
   "0x01e00013 -1 <redacted>\n" +
   "0x0300111e  0 <redacted>\n" +
   "0x0600002c  0 <redacted>\n" +
   "0x0301df89  0 <redacted>\n" +
   "0x03025466  0 <redacted>\n" +
   "0x0302a6f9  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "31457299\n"]
  $cmds << ["xdotool getactivewindow getwindowname", "Terminal - parallels@ubuntu-linux-22-04-desktop: ~"]
  $cmds << ["cd ~ && nohup xfce4-terminal > /dev/null", ""]
  $cmds << ["xdotool getactivewindow", "50618427\n"]
  $cmds << ["xdotool getwindowgeometry --shell 50618427",
   "WINDOW=50618427\n" +
   "X=559\n" +
   "Y=359\n" +
   "WIDTH=802\n" +
   "HEIGHT=482\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool getwindowname 50618427", "<redacted>\n"]
  $cmds << ["xrandr",
   "Screen 0: minimum 320 x 200, current 1920 x 1200, maximum 8192 x 8192\n" +
   "Virtual-1 connected primary 1920x1200+0+0 (normal left inverted right x axis y axis) 0mm x 0mm\n" +
   "   1920x1080     60.00 +  60.00  \n" +
   "   4096x2160     60.00    59.94  \n" +
   "   2560x1600     59.99    59.97  \n" +
   "   1920x1440     60.00  \n" +
   "   1856x1392     60.00  \n" +
   "   1792x1344     60.00  \n" +
   "   2048x1152     60.00  \n" +
   "   1920x1200     59.88*   59.95  \n" +
   "   1600x1200     60.00  \n" +
   "   1680x1050     59.95    59.88  \n" +
   "   1400x1050     59.98    59.95  \n" +
   "   1600x900      60.00  \n" +
   "   1280x1024     60.02  \n" +
   "   1440x900      59.89    59.90  \n" +
   "   1280x960      60.00  \n" +
   "   1366x768      59.79    60.00  \n" +
   "   1360x768      60.02  \n" +
   "   1280x800      59.81    59.91  \n" +
   "   1280x768      59.87    59.99  \n" +
   "   1280x720      60.00  \n" +
   "   1024x768      60.00  \n" +
   "   800x600       60.32    56.25  \n" +
   "   848x480       60.00  \n" +
   "   640x480       59.94  \n" +
   "Virtual-2 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-3 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-4 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-5 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-6 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-7 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-8 disconnected\n" +
   "Virtual-9 disconnected\n" +
   "Virtual-10 disconnected\n" +
   "Virtual-11 disconnected\n" +
   "Virtual-12 disconnected\n" +
   "Virtual-13 disconnected\n" +
   "Virtual-14 disconnected\n" +
   "Virtual-15 disconnected\n" +
   "Virtual-16 disconnected\n"]
  $cmds << ["ps aux | grep int2",
   "paralle+  816745  0.0  0.0   2308   836 pts/3    S+   17:05   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  816747  0.0  0.0   9016  1868 pts/3    S+   17:05   0:00 grep int2\n"]
  $cmds << ["wmctrl -ia 0x304603b", ""]
  $cmds << ["xrandr",
   "Screen 0: minimum 320 x 200, current 1920 x 1200, maximum 8192 x 8192\n" +
   "Virtual-1 connected primary 1920x1200+0+0 (normal left inverted right x axis y axis) 0mm x 0mm\n" +
   "   1920x1080     60.00 +  60.00  \n" +
   "   4096x2160     60.00    59.94  \n" +
   "   2560x1600     59.99    59.97  \n" +
   "   1920x1440     60.00  \n" +
   "   1856x1392     60.00  \n" +
   "   1792x1344     60.00  \n" +
   "   2048x1152     60.00  \n" +
   "   1920x1200     59.88*   59.95  \n" +
   "   1600x1200     60.00  \n" +
   "   1680x1050     59.95    59.88  \n" +
   "   1400x1050     59.98    59.95  \n" +
   "   1600x900      60.00  \n" +
   "   1280x1024     60.02  \n" +
   "   1440x900      59.89    59.90  \n" +
   "   1280x960      60.00  \n" +
   "   1366x768      59.79    60.00  \n" +
   "   1360x768      60.02  \n" +
   "   1280x800      59.81    59.91  \n" +
   "   1280x768      59.87    59.99  \n" +
   "   1280x720      60.00  \n" +
   "   1024x768      60.00  \n" +
   "   800x600       60.32    56.25  \n" +
   "   848x480       60.00  \n" +
   "   640x480       59.94  \n" +
   "Virtual-2 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-3 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-4 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-5 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-6 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-7 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-8 disconnected\n" +
   "Virtual-9 disconnected\n" +
   "Virtual-10 disconnected\n" +
   "Virtual-11 disconnected\n" +
   "Virtual-12 disconnected\n" +
   "Virtual-13 disconnected\n" +
   "Virtual-14 disconnected\n" +
   "Virtual-15 disconnected\n" +
   "Virtual-16 disconnected\n"]
  $cmds << ["ps aux | grep int2",
   "paralle+  816750  0.0  0.0   2308   816 pts/3    S+   17:05   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  816752  0.0  0.0   9016  1868 pts/3    S+   17:05   0:00 grep int2\n"]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50618427",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50618427",
   "\n" +
   "xwininfo: Window id: 0x304603b \n" +
   "\n" +
   "  Absolute upper-left X:  559\n" +
   "  Absolute upper-left Y:  359\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 802\n" +
   "  Height: 482\n" +
   "  Depth: 32\n" +
   "  Visual: 0x6cb\n" +
   "  Visual Class: TrueColor\n" +
   "  Border width: 0\n" +
   "  Class: InputOutput\n" +
   "  Colormap: 0x3000002 (not installed)\n" +
   "  Bit Gravity State: NorthWestGravity\n" +
   "  Window Gravity State: NorthWestGravity\n" +
   "  Backing Store State: NotUseful\n" +
   "  Save Under State: no\n" +
   "  Map State: IsViewable\n" +
   "  Override Redirect State: no\n" +
   "  Corners:  +559+359  -559+359  -559-359  +559-359\n" +
   "  -geometry 80x24+559+359\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50618427 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50618427 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50618427",
   "WINDOW=50618427\n" +
   "X=559\n" +
   "Y=359\n" +
   "WIDTH=802\n" +
   "HEIGHT=482\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50618427 1880 1134", ""]
  $cmds << ["xdotool windowmove 50618427 20 46", ""]
  $cmds << ["wmctrl -ia 0x304603b", ""]

  process(m, :start_terminal)


  assert_eq m.current_tag, 3

  assert_eq m.tags, [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326"]],
    :old_columns=>[["50484326"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["50618427"]],
    :old_columns=>[["50618427"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["50505465"]],
    :old_columns=>[["50505465"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]}]
  assert_eq m.floating_locations,   {"50618427"=>{:x=>559, :y=>359, :w=>802, :h=>482}}
  assert_eq m.last_tiling_focus,   nil
  assert_eq m.last_float_focus,   nil
end


scenario do
  m = Manager.new('')
  m.current_tag = 3
  m.tags =   [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326"]],
    :old_columns=>[["50484326"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["50618427"]],
    :old_columns=>[["50618427"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["50505465"]],
    :old_columns=>[["50505465"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]}]
  m.floating_locations =   {"50618427"=>{:x=>559, :y=>359, :w=>802, :h=>482}}
  m.last_tiling_focus =   nil
  m.last_float_focus =   nil
  $cmds << ["wmctrl -l",
   "0x02000003 -1 <redacted>\n" +
   "0x03000033  0 <redacted>\n" +
   "0x03000041  0 <redacted>\n" +
   "0x01e00013 -1 <redacted>\n" +
   "0x0300111e  0 <redacted>\n" +
   "0x0600002c  0 <redacted>\n" +
   "0x0301df89  0 <redacted>\n" +
   "0x03025466  0 <redacted>\n" +
   "0x0302a6f9  0 <redacted>\n" +
   "0x0304603b  0 <redacted>\n" +
   "0x0240610f  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "37773583\n"]
  $cmds << ["xdotool getwindowgeometry --shell 37773583",
   "WINDOW=37773583\n" +
   "X=45\n" +
   "Y=672\n" +
   "WIDTH=1875\n" +
   "HEIGHT=552\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool getwindowname 50618427", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 37773583", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 50618427", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 37773583", "<redacted>\n"]
  $cmds << ["xrandr",
   "Screen 0: minimum 320 x 200, current 1920 x 1200, maximum 8192 x 8192\n" +
   "Virtual-1 connected primary 1920x1200+0+0 (normal left inverted right x axis y axis) 0mm x 0mm\n" +
   "   1920x1080     60.00 +  60.00  \n" +
   "   4096x2160     60.00    59.94  \n" +
   "   2560x1600     59.99    59.97  \n" +
   "   1920x1440     60.00  \n" +
   "   1856x1392     60.00  \n" +
   "   1792x1344     60.00  \n" +
   "   2048x1152     60.00  \n" +
   "   1920x1200     59.88*   59.95  \n" +
   "   1600x1200     60.00  \n" +
   "   1680x1050     59.95    59.88  \n" +
   "   1400x1050     59.98    59.95  \n" +
   "   1600x900      60.00  \n" +
   "   1280x1024     60.02  \n" +
   "   1440x900      59.89    59.90  \n" +
   "   1280x960      60.00  \n" +
   "   1366x768      59.79    60.00  \n" +
   "   1360x768      60.02  \n" +
   "   1280x800      59.81    59.91  \n" +
   "   1280x768      59.87    59.99  \n" +
   "   1280x720      60.00  \n" +
   "   1024x768      60.00  \n" +
   "   800x600       60.32    56.25  \n" +
   "   848x480       60.00  \n" +
   "   640x480       59.94  \n" +
   "Virtual-2 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-3 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-4 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-5 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-6 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-7 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-8 disconnected\n" +
   "Virtual-9 disconnected\n" +
   "Virtual-10 disconnected\n" +
   "Virtual-11 disconnected\n" +
   "Virtual-12 disconnected\n" +
   "Virtual-13 disconnected\n" +
   "Virtual-14 disconnected\n" +
   "Virtual-15 disconnected\n" +
   "Virtual-16 disconnected\n"]
  $cmds << ["ps aux | grep int2",
   "paralle+  816823  0.0  0.0   2308   836 pts/3    S+   17:05   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  816825  0.0  0.0   9016  1868 pts/3    S+   17:05   0:00 grep int2\n"]
  $cmds << ["wmctrl -ia 0x304603b", ""]
  $cmds << ["wmctrl -ia 0x240610f", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50618427",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50618427",
   "\n" +
   "xwininfo: Window id: 0x304603b \n" +
   "\n" +
   "  Absolute upper-left X:  20\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 1872\n" +
   "  Height: 1122\n" +
   "  Depth: 32\n" +
   "  Visual: 0x6cb\n" +
   "  Visual Class: TrueColor\n" +
   "  Border width: 0\n" +
   "  Class: InputOutput\n" +
   "  Colormap: 0x3000002 (not installed)\n" +
   "  Bit Gravity State: NorthWestGravity\n" +
   "  Window Gravity State: NorthWestGravity\n" +
   "  Backing Store State: NotUseful\n" +
   "  Save Under State: no\n" +
   "  Map State: IsViewable\n" +
   "  Override Redirect State: no\n" +
   "  Corners:  +20+46  -28+46  -28-32  +20-32\n" +
   "  -geometry 187x56+20-32\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50618427 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50618427 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50618427",
   "WINDOW=50618427\n" +
   "X=20\n" +
   "Y=46\n" +
   "WIDTH=1872\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50618427 1880 557", ""]
  $cmds << ["xdotool windowmove 50618427 20 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 37773583",
   "_NET_FRAME_EXTENTS(CARDINAL) = 5, 5, 29, 5\n"]
  $cmds << ["xwininfo -id 37773583",
   "\n" +
   "xwininfo: Window id: 0x240610f \n" +
   "\n" +
   "  Absolute upper-left X:  40\n" +
   "  Absolute upper-left Y:  643\n" +
   "  Relative upper-left X:  5\n" +
   "  Relative upper-left Y:  29\n" +
   "  Width: 1875\n" +
   "  Height: 552\n" +
   "  Depth: 32\n" +
   "  Visual: 0x6cb\n" +
   "  Visual Class: TrueColor\n" +
   "  Border width: 0\n" +
   "  Class: InputOutput\n" +
   "  Colormap: 0x2400006 (not installed)\n" +
   "  Bit Gravity State: NorthWestGravity\n" +
   "  Window Gravity State: NorthWestGravity\n" +
   "  Backing Store State: NotUseful\n" +
   "  Save Under State: no\n" +
   "  Map State: IsViewable\n" +
   "  Override Redirect State: no\n" +
   "  Corners:  +40+643  -5+643  -5-5  +40-5\n" +
   "  -geometry 1875x552-0-0\n" +
   "\n"]
  $cmds << ["wmctrl -ir 37773583 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 37773583 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 37773583",
   "WINDOW=37773583\n" +
   "X=45\n" +
   "Y=672\n" +
   "WIDTH=1875\n" +
   "HEIGHT=552\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 37773583 1875 552", ""]
  $cmds << ["xdotool windowmove 37773583 15 594", ""]

  process(m, :move_tile_or_float)


  assert_eq m.current_tag, 3

  assert_eq m.tags, [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326"]],
    :old_columns=>[["50484326"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["50618427", "37773583"]],
    :old_columns=>[["50618427"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["50505465"]],
    :old_columns=>[["50505465"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]}]
  assert_eq m.floating_locations,   {"50618427"=>{:x=>559, :y=>359, :w=>802, :h=>482},
   "37773583"=>{:x=>45, :y=>672, :w=>1875, :h=>552}}
  assert_eq m.last_tiling_focus,   nil
  assert_eq m.last_float_focus,   nil
end


scenario do
  m = Manager.new('')
  m.current_tag = 3
  m.tags =   [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326"]],
    :old_columns=>[["50484326"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["50618427", "37773583"]],
    :old_columns=>[["50618427"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["50505465"]],
    :old_columns=>[["50505465"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]}]
  m.floating_locations =   {"50618427"=>{:x=>559, :y=>359, :w=>802, :h=>482},
   "37773583"=>{:x=>45, :y=>672, :w=>1875, :h=>552}}
  m.last_tiling_focus =   nil
  m.last_float_focus =   nil
  $cmds << ["wmctrl -l",
   "0x02000003 -1 <redacted>\n" +
   "0x03000033  0 <redacted>\n" +
   "0x03000041  0 <redacted>\n" +
   "0x01e00013 -1 <redacted>\n" +
   "0x0300111e  0 <redacted>\n" +
   "0x0600002c  0 <redacted>\n" +
   "0x0301df89  0 <redacted>\n" +
   "0x03025466  0 <redacted>\n" +
   "0x0302a6f9  0 <redacted>\n" +
   "0x0304603b  0 <redacted>\n" +
   "0x0240610f  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "37773583\n"]
  $cmds << ["xrandr",
   "Screen 0: minimum 320 x 200, current 1920 x 1200, maximum 8192 x 8192\n" +
   "Virtual-1 connected primary 1920x1200+0+0 (normal left inverted right x axis y axis) 0mm x 0mm\n" +
   "   1920x1080     60.00 +  60.00  \n" +
   "   4096x2160     60.00    59.94  \n" +
   "   2560x1600     59.99    59.97  \n" +
   "   1920x1440     60.00  \n" +
   "   1856x1392     60.00  \n" +
   "   1792x1344     60.00  \n" +
   "   2048x1152     60.00  \n" +
   "   1920x1200     59.88*   59.95  \n" +
   "   1600x1200     60.00  \n" +
   "   1680x1050     59.95    59.88  \n" +
   "   1400x1050     59.98    59.95  \n" +
   "   1600x900      60.00  \n" +
   "   1280x1024     60.02  \n" +
   "   1440x900      59.89    59.90  \n" +
   "   1280x960      60.00  \n" +
   "   1366x768      59.79    60.00  \n" +
   "   1360x768      60.02  \n" +
   "   1280x800      59.81    59.91  \n" +
   "   1280x768      59.87    59.99  \n" +
   "   1280x720      60.00  \n" +
   "   1024x768      60.00  \n" +
   "   800x600       60.32    56.25  \n" +
   "   848x480       60.00  \n" +
   "   640x480       59.94  \n" +
   "Virtual-2 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-3 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-4 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-5 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-6 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-7 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-8 disconnected\n" +
   "Virtual-9 disconnected\n" +
   "Virtual-10 disconnected\n" +
   "Virtual-11 disconnected\n" +
   "Virtual-12 disconnected\n" +
   "Virtual-13 disconnected\n" +
   "Virtual-14 disconnected\n" +
   "Virtual-15 disconnected\n" +
   "Virtual-16 disconnected\n"]
  $cmds << ["ps aux | grep int2",
   "paralle+  816858  0.0  0.0   2308   836 pts/3    S+   17:05   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  816860  0.0  0.0   9016  1864 pts/3    S+   17:05   0:00 grep int2\n"]
  $cmds << ["xdotool getwindowname 50618427", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 37773583", "<redacted>\n"]
  $cmds << ["xrandr",
   "Screen 0: minimum 320 x 200, current 1920 x 1200, maximum 8192 x 8192\n" +
   "Virtual-1 connected primary 1920x1200+0+0 (normal left inverted right x axis y axis) 0mm x 0mm\n" +
   "   1920x1080     60.00 +  60.00  \n" +
   "   4096x2160     60.00    59.94  \n" +
   "   2560x1600     59.99    59.97  \n" +
   "   1920x1440     60.00  \n" +
   "   1856x1392     60.00  \n" +
   "   1792x1344     60.00  \n" +
   "   2048x1152     60.00  \n" +
   "   1920x1200     59.88*   59.95  \n" +
   "   1600x1200     60.00  \n" +
   "   1680x1050     59.95    59.88  \n" +
   "   1400x1050     59.98    59.95  \n" +
   "   1600x900      60.00  \n" +
   "   1280x1024     60.02  \n" +
   "   1440x900      59.89    59.90  \n" +
   "   1280x960      60.00  \n" +
   "   1366x768      59.79    60.00  \n" +
   "   1360x768      60.02  \n" +
   "   1280x800      59.81    59.91  \n" +
   "   1280x768      59.87    59.99  \n" +
   "   1280x720      60.00  \n" +
   "   1024x768      60.00  \n" +
   "   800x600       60.32    56.25  \n" +
   "   848x480       60.00  \n" +
   "   640x480       59.94  \n" +
   "Virtual-2 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-3 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-4 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-5 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-6 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-7 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-8 disconnected\n" +
   "Virtual-9 disconnected\n" +
   "Virtual-10 disconnected\n" +
   "Virtual-11 disconnected\n" +
   "Virtual-12 disconnected\n" +
   "Virtual-13 disconnected\n" +
   "Virtual-14 disconnected\n" +
   "Virtual-15 disconnected\n" +
   "Virtual-16 disconnected\n"]
  $cmds << ["ps aux | grep int2",
   "paralle+  816864  0.0  0.0   2308   836 pts/3    S+   17:05   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  816866  0.0  0.0   9016  1868 pts/3    R+   17:05   0:00 grep int2\n"]
  $cmds << ["wmctrl -ia 0x304603b", ""]
  $cmds << ["wmctrl -ia 0x240610f", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50618427",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50618427",
   "\n" +
   "xwininfo: Window id: 0x304603b \n" +
   "\n" +
   "  Absolute upper-left X:  20\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 1872\n" +
   "  Height: 542\n" +
   "  Depth: 32\n" +
   "  Visual: 0x6cb\n" +
   "  Visual Class: TrueColor\n" +
   "  Border width: 0\n" +
   "  Class: InputOutput\n" +
   "  Colormap: 0x3000002 (not installed)\n" +
   "  Bit Gravity State: NorthWestGravity\n" +
   "  Window Gravity State: NorthWestGravity\n" +
   "  Backing Store State: NotUseful\n" +
   "  Save Under State: no\n" +
   "  Map State: IsViewable\n" +
   "  Override Redirect State: no\n" +
   "  Corners:  +20+46  -28+46  -28-612  +20-612\n" +
   "  -geometry 187x27+20+46\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50618427 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50618427 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50618427",
   "WINDOW=50618427\n" +
   "X=20\n" +
   "Y=46\n" +
   "WIDTH=1872\n" +
   "HEIGHT=542\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50618427 930 1134", ""]
  $cmds << ["xdotool windowmove 50618427 20 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 37773583",
   "_NET_FRAME_EXTENTS(CARDINAL) = 5, 5, 29, 5\n"]
  $cmds << ["xwininfo -id 37773583",
   "\n" +
   "xwininfo: Window id: 0x240610f \n" +
   "\n" +
   "  Absolute upper-left X:  20\n" +
   "  Absolute upper-left Y:  623\n" +
   "  Relative upper-left X:  5\n" +
   "  Relative upper-left Y:  29\n" +
   "  Width: 1875\n" +
   "  Height: 552\n" +
   "  Depth: 32\n" +
   "  Visual: 0x6cb\n" +
   "  Visual Class: TrueColor\n" +
   "  Border width: 0\n" +
   "  Class: InputOutput\n" +
   "  Colormap: 0x2400006 (not installed)\n" +
   "  Bit Gravity State: NorthWestGravity\n" +
   "  Window Gravity State: NorthWestGravity\n" +
   "  Backing Store State: NotUseful\n" +
   "  Save Under State: no\n" +
   "  Map State: IsViewable\n" +
   "  Override Redirect State: no\n" +
   "  Corners:  +20+623  -25+623  -25-25  +20-25\n" +
   "  -geometry 1875x552+15-20\n" +
   "\n"]
  $cmds << ["wmctrl -ir 37773583 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 37773583 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 37773583",
   "WINDOW=37773583\n" +
   "X=25\n" +
   "Y=652\n" +
   "WIDTH=1875\n" +
   "HEIGHT=552\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 37773583 925 1129", ""]
  $cmds << ["xdotool windowmove 37773583 965 17", ""]
  $cmds << ["wmctrl -ia 0x240610f", ""]

  process(m, :move_right)


  assert_eq m.current_tag, 3

  assert_eq m.tags, [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326"]],
    :old_columns=>[["50484326"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["50618427"], ["37773583"]],
    :old_columns=>[["50618427"], ["37773583"]],
    :column_sizes=>[{:x=>20, :w=>930}, {:x=>970, :w=>930}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["50505465"]],
    :old_columns=>[["50505465"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]}]
  assert_eq m.floating_locations,   {"50618427"=>{:x=>559, :y=>359, :w=>802, :h=>482},
   "37773583"=>{:x=>45, :y=>672, :w=>1875, :h=>552}}
  assert_eq m.last_tiling_focus,   nil
  assert_eq m.last_float_focus,   nil
end


scenario do
  m = Manager.new('')
  m.current_tag = 3
  m.tags =   [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326"]],
    :old_columns=>[["50484326"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["50618427"], ["37773583"]],
    :old_columns=>[["50618427"], ["37773583"]],
    :column_sizes=>[{:x=>20, :w=>930}, {:x=>970, :w=>930}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["50505465"]],
    :old_columns=>[["50505465"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]}]
  m.floating_locations =   {"50618427"=>{:x=>559, :y=>359, :w=>802, :h=>482},
   "37773583"=>{:x=>45, :y=>672, :w=>1875, :h=>552}}
  m.last_tiling_focus =   nil
  m.last_float_focus =   nil
  $cmds << ["wmctrl -l",
   "0x02000003 -1 <redacted>\n" +
   "0x03000033  0 <redacted>\n" +
   "0x03000041  0 <redacted>\n" +
   "0x01e00013 -1 <redacted>\n" +
   "0x0300111e  0 <redacted>\n" +
   "0x0600002c  0 <redacted>\n" +
   "0x0301df89  0 <redacted>\n" +
   "0x03025466  0 <redacted>\n" +
   "0x0302a6f9  0 <redacted>\n" +
   "0x0304603b  0 <redacted>\n" +
   "0x0240610f  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "37773583\n"]
  $cmds << ["wmctrl -ia 0x304603b", ""]

  process(m, :focus_left)


  assert_eq m.current_tag, 3

  assert_eq m.tags, [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326"]],
    :old_columns=>[["50484326"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["50618427"], ["37773583"]],
    :old_columns=>[["50618427"], ["37773583"]],
    :column_sizes=>[{:x=>20, :w=>930}, {:x=>970, :w=>930}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["50505465"]],
    :old_columns=>[["50505465"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]}]
  assert_eq m.floating_locations,   {"50618427"=>{:x=>559, :y=>359, :w=>802, :h=>482},
   "37773583"=>{:x=>45, :y=>672, :w=>1875, :h=>552}}
  assert_eq m.last_tiling_focus,   nil
  assert_eq m.last_float_focus,   nil
end


scenario do
  m = Manager.new('')
  m.current_tag = 3
  m.tags =   [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326"]],
    :old_columns=>[["50484326"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["50618427"], ["37773583"]],
    :old_columns=>[["50618427"], ["37773583"]],
    :column_sizes=>[{:x=>20, :w=>930}, {:x=>970, :w=>930}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["50505465"]],
    :old_columns=>[["50505465"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]}]
  m.floating_locations =   {"50618427"=>{:x=>559, :y=>359, :w=>802, :h=>482},
   "37773583"=>{:x=>45, :y=>672, :w=>1875, :h=>552}}
  m.last_tiling_focus =   nil
  m.last_float_focus =   nil
  $cmds << ["wmctrl -l",
   "0x02000003 -1 <redacted>\n" +
   "0x03000033  0 <redacted>\n" +
   "0x03000041  0 <redacted>\n" +
   "0x01e00013 -1 <redacted>\n" +
   "0x0300111e  0 <redacted>\n" +
   "0x0600002c  0 <redacted>\n" +
   "0x0301df89  0 <redacted>\n" +
   "0x03025466  0 <redacted>\n" +
   "0x0302a6f9  0 <redacted>\n" +
   "0x0304603b  0 <redacted>\n" +
   "0x0240610f  0 <redacted>\n" +
   "0x02406a45  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "37775941\n"]
  $cmds << ["wmctrl -ia 0x304603b", ""]
  $cmds << ["wmctrl -ia 0x240610f", ""]

  process(m, :focus_tile_or_float)


  assert_eq m.current_tag, 3

  assert_eq m.tags, [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326"]],
    :old_columns=>[["50484326"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["50618427"], ["37773583"]],
    :old_columns=>[["50618427"], ["37773583"]],
    :column_sizes=>[{:x=>20, :w=>930}, {:x=>970, :w=>930}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["50505465"]],
    :old_columns=>[["50505465"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]}]
  assert_eq m.floating_locations,   {"50618427"=>{:x=>559, :y=>359, :w=>802, :h=>482},
   "37773583"=>{:x=>45, :y=>672, :w=>1875, :h=>552}}
  assert_eq m.last_tiling_focus,   nil
  assert_eq m.last_float_focus,   "37775941"
end


scenario do
  m = Manager.new('')
  m.current_tag = 3
  m.tags =   [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326"]],
    :old_columns=>[["50484326"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["50618427"], ["37773583"]],
    :old_columns=>[["50618427"], ["37773583"]],
    :column_sizes=>[{:x=>20, :w=>930}, {:x=>970, :w=>930}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["50505465"]],
    :old_columns=>[["50505465"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]}]
  m.floating_locations =   {"50618427"=>{:x=>559, :y=>359, :w=>802, :h=>482},
   "37773583"=>{:x=>45, :y=>672, :w=>1875, :h=>552}}
  m.last_tiling_focus =   nil
  m.last_float_focus =   "37775941"
  $cmds << ["wmctrl -l",
   "0x02000003 -1 <redacted>\n" +
   "0x03000033  0 <redacted>\n" +
   "0x03000041  0 <redacted>\n" +
   "0x01e00013 -1 <redacted>\n" +
   "0x0300111e  0 <redacted>\n" +
   "0x0600002c  0 <redacted>\n" +
   "0x0301df89  0 <redacted>\n" +
   "0x03025466  0 <redacted>\n" +
   "0x0302a6f9  0 <redacted>\n" +
   "0x0304603b  0 <redacted>\n" +
   "0x0240610f  0 <redacted>\n" +
   "0x02406a45  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "37773583\n"]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 37773583",
   "_NET_FRAME_EXTENTS(CARDINAL) = 5, 5, 29, 5\n"]
  $cmds << ["xwininfo -id 37773583",
   "\n" +
   "xwininfo: Window id: 0x240610f \n" +
   "\n" +
   "  Absolute upper-left X:  970\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  5\n" +
   "  Relative upper-left Y:  29\n" +
   "  Width: 925\n" +
   "  Height: 1129\n" +
   "  Depth: 32\n" +
   "  Visual: 0x6cb\n" +
   "  Visual Class: TrueColor\n" +
   "  Border width: 0\n" +
   "  Class: InputOutput\n" +
   "  Colormap: 0x2400006 (not installed)\n" +
   "  Bit Gravity State: NorthWestGravity\n" +
   "  Window Gravity State: NorthWestGravity\n" +
   "  Backing Store State: NotUseful\n" +
   "  Save Under State: no\n" +
   "  Map State: IsViewable\n" +
   "  Override Redirect State: no\n" +
   "  Corners:  +970+46  -25+46  -25-25  +970-25\n" +
   "  -geometry 925x1129-20+17\n" +
   "\n"]
  $cmds << ["wmctrl -ir 37773583 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 37773583 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 37773583",
   "WINDOW=37773583\n" +
   "X=975\n" +
   "Y=75\n" +
   "WIDTH=925\n" +
   "HEIGHT=1129\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 37773583 1870 547", ""]
  $cmds << ["xdotool windowmove 37773583 40 643", ""]
  $cmds << ["xrandr",
   "Screen 0: minimum 320 x 200, current 1920 x 1200, maximum 8192 x 8192\n" +
   "Virtual-1 connected primary 1920x1200+0+0 (normal left inverted right x axis y axis) 0mm x 0mm\n" +
   "   1920x1080     60.00 +  60.00  \n" +
   "   4096x2160     60.00    59.94  \n" +
   "   2560x1600     59.99    59.97  \n" +
   "   1920x1440     60.00  \n" +
   "   1856x1392     60.00  \n" +
   "   1792x1344     60.00  \n" +
   "   2048x1152     60.00  \n" +
   "   1920x1200     59.88*   59.95  \n" +
   "   1600x1200     60.00  \n" +
   "   1680x1050     59.95    59.88  \n" +
   "   1400x1050     59.98    59.95  \n" +
   "   1600x900      60.00  \n" +
   "   1280x1024     60.02  \n" +
   "   1440x900      59.89    59.90  \n" +
   "   1280x960      60.00  \n" +
   "   1366x768      59.79    60.00  \n" +
   "   1360x768      60.02  \n" +
   "   1280x800      59.81    59.91  \n" +
   "   1280x768      59.87    59.99  \n" +
   "   1280x720      60.00  \n" +
   "   1024x768      60.00  \n" +
   "   800x600       60.32    56.25  \n" +
   "   848x480       60.00  \n" +
   "   640x480       59.94  \n" +
   "Virtual-2 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-3 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-4 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-5 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-6 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-7 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-8 disconnected\n" +
   "Virtual-9 disconnected\n" +
   "Virtual-10 disconnected\n" +
   "Virtual-11 disconnected\n" +
   "Virtual-12 disconnected\n" +
   "Virtual-13 disconnected\n" +
   "Virtual-14 disconnected\n" +
   "Virtual-15 disconnected\n" +
   "Virtual-16 disconnected\n"]
  $cmds << ["ps aux | grep int2",
   "paralle+  816978  0.0  0.0   2308   836 pts/3    S+   17:06   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  816980  0.0  0.0   9016  1868 pts/3    S+   17:06   0:00 grep int2\n"]
  $cmds << ["xdotool getwindowname 50618427", "<redacted>\n"]
  $cmds << ["xrandr",
   "Screen 0: minimum 320 x 200, current 1920 x 1200, maximum 8192 x 8192\n" +
   "Virtual-1 connected primary 1920x1200+0+0 (normal left inverted right x axis y axis) 0mm x 0mm\n" +
   "   1920x1080     60.00 +  60.00  \n" +
   "   4096x2160     60.00    59.94  \n" +
   "   2560x1600     59.99    59.97  \n" +
   "   1920x1440     60.00  \n" +
   "   1856x1392     60.00  \n" +
   "   1792x1344     60.00  \n" +
   "   2048x1152     60.00  \n" +
   "   1920x1200     59.88*   59.95  \n" +
   "   1600x1200     60.00  \n" +
   "   1680x1050     59.95    59.88  \n" +
   "   1400x1050     59.98    59.95  \n" +
   "   1600x900      60.00  \n" +
   "   1280x1024     60.02  \n" +
   "   1440x900      59.89    59.90  \n" +
   "   1280x960      60.00  \n" +
   "   1366x768      59.79    60.00  \n" +
   "   1360x768      60.02  \n" +
   "   1280x800      59.81    59.91  \n" +
   "   1280x768      59.87    59.99  \n" +
   "   1280x720      60.00  \n" +
   "   1024x768      60.00  \n" +
   "   800x600       60.32    56.25  \n" +
   "   848x480       60.00  \n" +
   "   640x480       59.94  \n" +
   "Virtual-2 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-3 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-4 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-5 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-6 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-7 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-8 disconnected\n" +
   "Virtual-9 disconnected\n" +
   "Virtual-10 disconnected\n" +
   "Virtual-11 disconnected\n" +
   "Virtual-12 disconnected\n" +
   "Virtual-13 disconnected\n" +
   "Virtual-14 disconnected\n" +
   "Virtual-15 disconnected\n" +
   "Virtual-16 disconnected\n"]
  $cmds << ["ps aux | grep int2",
   "paralle+  816983  0.0  0.0   2308   836 pts/3    S+   17:06   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  816985  0.0  0.0   9016  1868 pts/3    S+   17:06   0:00 grep int2\n"]
  $cmds << ["wmctrl -ia 0x304603b", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50618427",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50618427",
   "\n" +
   "xwininfo: Window id: 0x304603b \n" +
   "\n" +
   "  Absolute upper-left X:  20\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 922\n" +
   "  Height: 1122\n" +
   "  Depth: 32\n" +
   "  Visual: 0x6cb\n" +
   "  Visual Class: TrueColor\n" +
   "  Border width: 0\n" +
   "  Class: InputOutput\n" +
   "  Colormap: 0x3000002 (not installed)\n" +
   "  Bit Gravity State: NorthWestGravity\n" +
   "  Window Gravity State: NorthWestGravity\n" +
   "  Backing Store State: NotUseful\n" +
   "  Save Under State: no\n" +
   "  Map State: IsViewable\n" +
   "  Override Redirect State: no\n" +
   "  Corners:  +20+46  -978+46  -978-32  +20-32\n" +
   "  -geometry 92x56+20-32\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50618427 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50618427 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50618427",
   "WINDOW=50618427\n" +
   "X=20\n" +
   "Y=46\n" +
   "WIDTH=922\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50618427 1880 1134", ""]
  $cmds << ["xdotool windowmove 50618427 20 46", ""]
  $cmds << ["wmctrl -ia 0x240610f", ""]

  process(m, :move_tile_or_float)


  assert_eq m.current_tag, 3

  assert_eq m.tags, [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326"]],
    :old_columns=>[["50484326"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["50618427"]],
    :old_columns=>[["50618427"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["50505465"]],
    :old_columns=>[["50505465"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]}]
  assert_eq m.floating_locations,   {"50618427"=>{:x=>559, :y=>359, :w=>802, :h=>482},
   "37773583"=>{:x=>40, :y=>643, :w=>1870, :h=>547}}
  assert_eq m.last_tiling_focus,   nil
  assert_eq m.last_float_focus,   "37775941"
end


scenario do
  m = Manager.new('')
  m.current_tag = 3
  m.tags =   [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326"]],
    :old_columns=>[["50484326"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["50618427"]],
    :old_columns=>[["50618427"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["50505465"]],
    :old_columns=>[["50505465"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]}]
  m.floating_locations =   {"50618427"=>{:x=>559, :y=>359, :w=>802, :h=>482},
   "37773583"=>{:x=>40, :y=>643, :w=>1870, :h=>547}}
  m.last_tiling_focus =   nil
  m.last_float_focus =   "37775941"
  $cmds << ["wmctrl -l",
   "0x02000003 -1 <redacted>\n" +
   "0x03000033  0 <redacted>\n" +
   "0x03000041  0 <redacted>\n" +
   "0x01e00013 -1 <redacted>\n" +
   "0x0300111e  0 <redacted>\n" +
   "0x0600002c  0 <redacted>\n" +
   "0x0301df89  0 <redacted>\n" +
   "0x03025466  0 <redacted>\n" +
   "0x0302a6f9  0 <redacted>\n" +
   "0x0304603b  0 <redacted>\n" +
   "0x0240610f  0 <redacted>\n" +
   "0x02406a45  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "37773583\n"]
  $cmds << ["wmctrl -ia 0x304603b", ""]

  process(m, :focus_tile_or_float)


  assert_eq m.current_tag, 3

  assert_eq m.tags, [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326"]],
    :old_columns=>[["50484326"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["50618427"]],
    :old_columns=>[["50618427"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["50505465"]],
    :old_columns=>[["50505465"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]}]
  assert_eq m.floating_locations,   {"50618427"=>{:x=>559, :y=>359, :w=>802, :h=>482},
   "37773583"=>{:x=>40, :y=>643, :w=>1870, :h=>547}}
  assert_eq m.last_tiling_focus,   nil
  assert_eq m.last_float_focus,   "37773583"
end


scenario do
  m = Manager.new('')
  m.current_tag = 3
  m.tags =   [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326"]],
    :old_columns=>[["50484326"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["50618427"]],
    :old_columns=>[["50618427"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["50505465"]],
    :old_columns=>[["50505465"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]}]

  $cmds << ["wmctrl -l",
   "0x02000003 -1 <redacted>\n" +
   "0x03000033  0 <redacted>\n" +
   "0x03000041  0 <redacted>\n" +
   "0x01e00013 -1 <redacted>\n" +
   "0x0300111e  0 <redacted>\n" +
   "0x0600002c  0 <redacted>\n" +
   "0x0301df89  0 <redacted>\n" +
   "0x03025466  0 <redacted>\n" +
   "0x0302a6f9  0 <redacted>\n" +
   "0x0240610f  0 <redacted>\n" +
   "0x02406a45  0 <redacted>\n"]
  $cmds << ["xrandr",
   "Screen 0: minimum 320 x 200, current 1920 x 1200, maximum 8192 x 8192\n" +
   "Virtual-1 connected primary 1920x1200+0+0 (normal left inverted right x axis y axis) 0mm x 0mm\n" +
   "   1920x1080     60.00 +  60.00  \n" +
   "   4096x2160     60.00    59.94  \n" +
   "   2560x1600     59.99    59.97  \n" +
   "   1920x1440     60.00  \n" +
   "   1856x1392     60.00  \n" +
   "   1792x1344     60.00  \n" +
   "   2048x1152     60.00  \n" +
   "   1920x1200     59.88*   59.95  \n" +
   "   1600x1200     60.00  \n" +
   "   1680x1050     59.95    59.88  \n" +
   "   1400x1050     59.98    59.95  \n" +
   "   1600x900      60.00  \n" +
   "   1280x1024     60.02  \n" +
   "   1440x900      59.89    59.90  \n" +
   "   1280x960      60.00  \n" +
   "   1366x768      59.79    60.00  \n" +
   "   1360x768      60.02  \n" +
   "   1280x800      59.81    59.91  \n" +
   "   1280x768      59.87    59.99  \n" +
   "   1280x720      60.00  \n" +
   "   1024x768      60.00  \n" +
   "   800x600       60.32    56.25  \n" +
   "   848x480       60.00  \n" +
   "   640x480       59.94  \n" +
   "Virtual-2 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-3 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-4 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-5 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-6 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-7 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-8 disconnected\n" +
   "Virtual-9 disconnected\n" +
   "Virtual-10 disconnected\n" +
   "Virtual-11 disconnected\n" +
   "Virtual-12 disconnected\n" +
   "Virtual-13 disconnected\n" +
   "Virtual-14 disconnected\n" +
   "Virtual-15 disconnected\n" +
   "Virtual-16 disconnected\n"]
  $cmds << ["ps aux | grep int2",
   "paralle+  817025  0.0  0.0   2308   824 pts/3    S+   17:06   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  817027  0.0  0.0   9016  1868 pts/3    S+   17:06   0:00 grep int2\n"]
  $cmds << ["xrandr",
   "Screen 0: minimum 320 x 200, current 1920 x 1200, maximum 8192 x 8192\n" +
   "Virtual-1 connected primary 1920x1200+0+0 (normal left inverted right x axis y axis) 0mm x 0mm\n" +
   "   1920x1080     60.00 +  60.00  \n" +
   "   4096x2160     60.00    59.94  \n" +
   "   2560x1600     59.99    59.97  \n" +
   "   1920x1440     60.00  \n" +
   "   1856x1392     60.00  \n" +
   "   1792x1344     60.00  \n" +
   "   2048x1152     60.00  \n" +
   "   1920x1200     59.88*   59.95  \n" +
   "   1600x1200     60.00  \n" +
   "   1680x1050     59.95    59.88  \n" +
   "   1400x1050     59.98    59.95  \n" +
   "   1600x900      60.00  \n" +
   "   1280x1024     60.02  \n" +
   "   1440x900      59.89    59.90  \n" +
   "   1280x960      60.00  \n" +
   "   1366x768      59.79    60.00  \n" +
   "   1360x768      60.02  \n" +
   "   1280x800      59.81    59.91  \n" +
   "   1280x768      59.87    59.99  \n" +
   "   1280x720      60.00  \n" +
   "   1024x768      60.00  \n" +
   "   800x600       60.32    56.25  \n" +
   "   848x480       60.00  \n" +
   "   640x480       59.94  \n" +
   "Virtual-2 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-3 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-4 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-5 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-6 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-7 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-8 disconnected\n" +
   "Virtual-9 disconnected\n" +
   "Virtual-10 disconnected\n" +
   "Virtual-11 disconnected\n" +
   "Virtual-12 disconnected\n" +
   "Virtual-13 disconnected\n" +
   "Virtual-14 disconnected\n" +
   "Virtual-15 disconnected\n" +
   "Virtual-16 disconnected\n"]
  $cmds << ["ps aux | grep int2",
   "paralle+  817029  0.0  0.0   2308   836 pts/3    S+   17:06   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  817031  0.0  0.0   9016  1868 pts/3    S+   17:06   0:00 grep int2\n"]
  $cmds << ["xrandr",
   "Screen 0: minimum 320 x 200, current 1920 x 1200, maximum 8192 x 8192\n" +
   "Virtual-1 connected primary 1920x1200+0+0 (normal left inverted right x axis y axis) 0mm x 0mm\n" +
   "   1920x1080     60.00 +  60.00  \n" +
   "   4096x2160     60.00    59.94  \n" +
   "   2560x1600     59.99    59.97  \n" +
   "   1920x1440     60.00  \n" +
   "   1856x1392     60.00  \n" +
   "   1792x1344     60.00  \n" +
   "   2048x1152     60.00  \n" +
   "   1920x1200     59.88*   59.95  \n" +
   "   1600x1200     60.00  \n" +
   "   1680x1050     59.95    59.88  \n" +
   "   1400x1050     59.98    59.95  \n" +
   "   1600x900      60.00  \n" +
   "   1280x1024     60.02  \n" +
   "   1440x900      59.89    59.90  \n" +
   "   1280x960      60.00  \n" +
   "   1366x768      59.79    60.00  \n" +
   "   1360x768      60.02  \n" +
   "   1280x800      59.81    59.91  \n" +
   "   1280x768      59.87    59.99  \n" +
   "   1280x720      60.00  \n" +
   "   1024x768      60.00  \n" +
   "   800x600       60.32    56.25  \n" +
   "   848x480       60.00  \n" +
   "   640x480       59.94  \n" +
   "Virtual-2 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-3 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-4 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-5 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-6 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-7 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-8 disconnected\n" +
   "Virtual-9 disconnected\n" +
   "Virtual-10 disconnected\n" +
   "Virtual-11 disconnected\n" +
   "Virtual-12 disconnected\n" +
   "Virtual-13 disconnected\n" +
   "Virtual-14 disconnected\n" +
   "Virtual-15 disconnected\n" +
   "Virtual-16 disconnected\n"]
  $cmds << ["ps aux | grep int2",
   "paralle+  817033  0.0  0.0   2308   832 pts/3    S+   17:06   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  817035  0.0  0.0   9016  1872 pts/3    S+   17:06   0:00 grep int2\n"]
  $cmds << ["xrandr",
   "Screen 0: minimum 320 x 200, current 1920 x 1200, maximum 8192 x 8192\n" +
   "Virtual-1 connected primary 1920x1200+0+0 (normal left inverted right x axis y axis) 0mm x 0mm\n" +
   "   1920x1080     60.00 +  60.00  \n" +
   "   4096x2160     60.00    59.94  \n" +
   "   2560x1600     59.99    59.97  \n" +
   "   1920x1440     60.00  \n" +
   "   1856x1392     60.00  \n" +
   "   1792x1344     60.00  \n" +
   "   2048x1152     60.00  \n" +
   "   1920x1200     59.88*   59.95  \n" +
   "   1600x1200     60.00  \n" +
   "   1680x1050     59.95    59.88  \n" +
   "   1400x1050     59.98    59.95  \n" +
   "   1600x900      60.00  \n" +
   "   1280x1024     60.02  \n" +
   "   1440x900      59.89    59.90  \n" +
   "   1280x960      60.00  \n" +
   "   1366x768      59.79    60.00  \n" +
   "   1360x768      60.02  \n" +
   "   1280x800      59.81    59.91  \n" +
   "   1280x768      59.87    59.99  \n" +
   "   1280x720      60.00  \n" +
   "   1024x768      60.00  \n" +
   "   800x600       60.32    56.25  \n" +
   "   848x480       60.00  \n" +
   "   640x480       59.94  \n" +
   "Virtual-2 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-3 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-4 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-5 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-6 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-7 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-8 disconnected\n" +
   "Virtual-9 disconnected\n" +
   "Virtual-10 disconnected\n" +
   "Virtual-11 disconnected\n" +
   "Virtual-12 disconnected\n" +
   "Virtual-13 disconnected\n" +
   "Virtual-14 disconnected\n" +
   "Virtual-15 disconnected\n" +
   "Virtual-16 disconnected\n"]
  $cmds << ["ps aux | grep int2",
   "paralle+  817037  0.0  0.0   2308   836 pts/3    S+   17:06   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  817039  0.0  0.0   9016  1868 pts/3    S+   17:06   0:00 grep int2\n"]

  m.remove_dead_windows_and_redraw!


  assert_eq m.current_tag, 3

  assert_eq m.tags, [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326"]],
    :old_columns=>[["50484326"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[["50618427"]],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["50505465"]],
    :old_columns=>[["50505465"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]}]
end


scenario do
  m = Manager.new('')
  m.current_tag = 3
  m.tags =   [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326"]],
    :old_columns=>[["50484326"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[["50618427"]],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["50505465"]],
    :old_columns=>[["50505465"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]}]
  m.floating_locations =   {"50618427"=>{:x=>559, :y=>359, :w=>802, :h=>482},
   "37773583"=>{:x=>40, :y=>643, :w=>1870, :h=>547}}
  m.last_tiling_focus =   nil
  m.last_float_focus =   "37773583"
  $cmds << ["wmctrl -l",
   "0x02000003 -1 <redacted>\n" +
   "0x03000033  0 <redacted>\n" +
   "0x03000041  0 <redacted>\n" +
   "0x01e00013 -1 <redacted>\n" +
   "0x0300111e  0 <redacted>\n" +
   "0x0600002c  0 <redacted>\n" +
   "0x0301df89  0 <redacted>\n" +
   "0x03025466  0 <redacted>\n" +
   "0x0302a6f9  0 <redacted>\n" +
   "0x0240610f  0 <redacted>\n" +
   "0x02406a45  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "37773583\n"]
  $cmds << ["xdotool getwindowgeometry --shell 37773583",
   "WINDOW=37773583\n" +
   "X=50\n" +
   "Y=701\n" +
   "WIDTH=1870\n" +
   "HEIGHT=547\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool getwindowname 37773583", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 37773583", "<redacted>\n"]
  $cmds << ["xrandr",
   "Screen 0: minimum 320 x 200, current 1920 x 1200, maximum 8192 x 8192\n" +
   "Virtual-1 connected primary 1920x1200+0+0 (normal left inverted right x axis y axis) 0mm x 0mm\n" +
   "   1920x1080     60.00 +  60.00  \n" +
   "   4096x2160     60.00    59.94  \n" +
   "   2560x1600     59.99    59.97  \n" +
   "   1920x1440     60.00  \n" +
   "   1856x1392     60.00  \n" +
   "   1792x1344     60.00  \n" +
   "   2048x1152     60.00  \n" +
   "   1920x1200     59.88*   59.95  \n" +
   "   1600x1200     60.00  \n" +
   "   1680x1050     59.95    59.88  \n" +
   "   1400x1050     59.98    59.95  \n" +
   "   1600x900      60.00  \n" +
   "   1280x1024     60.02  \n" +
   "   1440x900      59.89    59.90  \n" +
   "   1280x960      60.00  \n" +
   "   1366x768      59.79    60.00  \n" +
   "   1360x768      60.02  \n" +
   "   1280x800      59.81    59.91  \n" +
   "   1280x768      59.87    59.99  \n" +
   "   1280x720      60.00  \n" +
   "   1024x768      60.00  \n" +
   "   800x600       60.32    56.25  \n" +
   "   848x480       60.00  \n" +
   "   640x480       59.94  \n" +
   "Virtual-2 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-3 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-4 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-5 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-6 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-7 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-8 disconnected\n" +
   "Virtual-9 disconnected\n" +
   "Virtual-10 disconnected\n" +
   "Virtual-11 disconnected\n" +
   "Virtual-12 disconnected\n" +
   "Virtual-13 disconnected\n" +
   "Virtual-14 disconnected\n" +
   "Virtual-15 disconnected\n" +
   "Virtual-16 disconnected\n"]
  $cmds << ["ps aux | grep int2",
   "paralle+  817054  0.0  0.0   2308   836 pts/3    S+   17:06   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  817056  0.0  0.0   9016  1856 pts/3    R+   17:06   0:00 grep int2\n"]
  $cmds << ["wmctrl -ia 0x240610f", ""]
  $cmds << ["xrandr",
   "Screen 0: minimum 320 x 200, current 1920 x 1200, maximum 8192 x 8192\n" +
   "Virtual-1 connected primary 1920x1200+0+0 (normal left inverted right x axis y axis) 0mm x 0mm\n" +
   "   1920x1080     60.00 +  60.00  \n" +
   "   4096x2160     60.00    59.94  \n" +
   "   2560x1600     59.99    59.97  \n" +
   "   1920x1440     60.00  \n" +
   "   1856x1392     60.00  \n" +
   "   1792x1344     60.00  \n" +
   "   2048x1152     60.00  \n" +
   "   1920x1200     59.88*   59.95  \n" +
   "   1600x1200     60.00  \n" +
   "   1680x1050     59.95    59.88  \n" +
   "   1400x1050     59.98    59.95  \n" +
   "   1600x900      60.00  \n" +
   "   1280x1024     60.02  \n" +
   "   1440x900      59.89    59.90  \n" +
   "   1280x960      60.00  \n" +
   "   1366x768      59.79    60.00  \n" +
   "   1360x768      60.02  \n" +
   "   1280x800      59.81    59.91  \n" +
   "   1280x768      59.87    59.99  \n" +
   "   1280x720      60.00  \n" +
   "   1024x768      60.00  \n" +
   "   800x600       60.32    56.25  \n" +
   "   848x480       60.00  \n" +
   "   640x480       59.94  \n" +
   "Virtual-2 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-3 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-4 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-5 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-6 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-7 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-8 disconnected\n" +
   "Virtual-9 disconnected\n" +
   "Virtual-10 disconnected\n" +
   "Virtual-11 disconnected\n" +
   "Virtual-12 disconnected\n" +
   "Virtual-13 disconnected\n" +
   "Virtual-14 disconnected\n" +
   "Virtual-15 disconnected\n" +
   "Virtual-16 disconnected\n"]
  $cmds << ["ps aux | grep int2",
   "paralle+  817059  0.0  0.0   2308   836 pts/3    S+   17:06   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  817061  0.0  0.0   9016  1868 pts/3    R+   17:06   0:00 grep int2\n"]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 37773583",
   "_NET_FRAME_EXTENTS(CARDINAL) = 5, 5, 29, 5\n"]
  $cmds << ["xwininfo -id 37773583",
   "\n" +
   "xwininfo: Window id: 0x240610f \n" +
   "\n" +
   "  Absolute upper-left X:  45\n" +
   "  Absolute upper-left Y:  672\n" +
   "  Relative upper-left X:  5\n" +
   "  Relative upper-left Y:  29\n" +
   "  Width: 1870\n" +
   "  Height: 547\n" +
   "  Depth: 32\n" +
   "  Visual: 0x6cb\n" +
   "  Visual Class: TrueColor\n" +
   "  Border width: 0\n" +
   "  Class: InputOutput\n" +
   "  Colormap: 0x2400006 (not installed)\n" +
   "  Bit Gravity State: NorthWestGravity\n" +
   "  Window Gravity State: NorthWestGravity\n" +
   "  Backing Store State: NotUseful\n" +
   "  Save Under State: no\n" +
   "  Map State: IsViewable\n" +
   "  Override Redirect State: no\n" +
   "  Corners:  +45+672  -5+672  -5--19  +45--19\n" +
   "  -geometry 1870x547-0--24\n" +
   "\n"]
  $cmds << ["wmctrl -ir 37773583 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 37773583 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 37773583",
   "WINDOW=37773583\n" +
   "X=50\n" +
   "Y=701\n" +
   "WIDTH=1870\n" +
   "HEIGHT=547\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 37773583 1875 1129", ""]
  $cmds << ["xdotool windowmove 37773583 15 17", ""]

  process(m, :move_tile_or_float)


  assert_eq m.current_tag, 3

  assert_eq m.tags, [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326"]],
    :old_columns=>[["50484326"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["37773583"]],
    :old_columns=>[["37773583"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["50505465"]],
    :old_columns=>[["50505465"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]}]
  assert_eq m.floating_locations,   {"50618427"=>{:x=>559, :y=>359, :w=>802, :h=>482},
   "37773583"=>{:x=>50, :y=>701, :w=>1870, :h=>547}}
  assert_eq m.last_tiling_focus,   nil
  assert_eq m.last_float_focus,   "37773583"
end


scenario do
  m = Manager.new('')
  m.current_tag = 3
  m.tags =   [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326"]],
    :old_columns=>[["50484326"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["37773583"]],
    :old_columns=>[["37773583"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["50505465"]],
    :old_columns=>[["50505465"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]}]
  m.floating_locations =   {"50618427"=>{:x=>559, :y=>359, :w=>802, :h=>482},
   "37773583"=>{:x=>50, :y=>701, :w=>1870, :h=>547}}
  m.last_tiling_focus =   nil
  m.last_float_focus =   "37773583"
  $cmds << ["wmctrl -l",
   "0x02000003 -1 <redacted>\n" +
   "0x03000033  0 <redacted>\n" +
   "0x03000041  0 <redacted>\n" +
   "0x01e00013 -1 <redacted>\n" +
   "0x0300111e  0 <redacted>\n" +
   "0x0600002c  0 <redacted>\n" +
   "0x0301df89  0 <redacted>\n" +
   "0x03025466  0 <redacted>\n" +
   "0x0302a6f9  0 <redacted>\n" +
   "0x0240610f  0 <redacted>\n" +
   "0x02406a45  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "37773583\n"]
  $cmds << ["wmctrl -l",
   "0x02000003 -1 <redacted>\n" +
   "0x03000033  0 <redacted>\n" +
   "0x03000041  0 <redacted>\n" +
   "0x01e00013 -1 <redacted>\n" +
   "0x0300111e  0 <redacted>\n" +
   "0x0600002c  0 <redacted>\n" +
   "0x0301df89  0 <redacted>\n" +
   "0x03025466  0 <redacted>\n" +
   "0x0302a6f9  0 <redacted>\n" +
   "0x0240610f  0 <redacted>\n" +
   "0x02406a45  0 <redacted>\n"]
  $cmds << ["wmctrl -ia 0x2406a45", ""]

  process(m, :focus_tile_or_float)


  assert_eq m.current_tag, 3

  assert_eq m.tags, [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326"]],
    :old_columns=>[["50484326"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["37773583"]],
    :old_columns=>[["37773583"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["50505465"]],
    :old_columns=>[["50505465"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]}]
  assert_eq m.floating_locations,   {"50618427"=>{:x=>559, :y=>359, :w=>802, :h=>482},
   "37773583"=>{:x=>50, :y=>701, :w=>1870, :h=>547}}
  assert_eq m.last_tiling_focus,   "37773583"
  assert_eq m.last_float_focus,   "37773583"
end


scenario do
  m = Manager.new('')
  m.current_tag = 3
  m.tags =   [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326"]],
    :old_columns=>[["50484326"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["37773583"]],
    :old_columns=>[["37773583"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["50505465"]],
    :old_columns=>[["50505465"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]}]
  m.floating_locations =   {"50618427"=>{:x=>559, :y=>359, :w=>802, :h=>482},
   "37773583"=>{:x=>50, :y=>701, :w=>1870, :h=>547}}
  m.last_tiling_focus =   "37773583"
  m.last_float_focus =   "37773583"
  $cmds << ["wmctrl -l",
   "0x02000003 -1 <redacted>\n" +
   "0x03000033  0 <redacted>\n" +
   "0x03000041  0 <redacted>\n" +
   "0x01e00013 -1 <redacted>\n" +
   "0x0300111e  0 <redacted>\n" +
   "0x0600002c  0 <redacted>\n" +
   "0x0301df89  0 <redacted>\n" +
   "0x03025466  0 <redacted>\n" +
   "0x0302a6f9  0 <redacted>\n" +
   "0x0240610f  0 <redacted>\n" +
   "0x02406a45  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50331699\n"]
  $cmds << ["xdotool getwindowgeometry --shell 50331699",
   "WINDOW=50331699\n" +
   "X=1053\n" +
   "Y=46\n" +
   "WIDTH=512\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool getwindowname 37773583", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 50331699", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 37773583", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 50331699", "<redacted>\n"]
  $cmds << ["xrandr",
   "Screen 0: minimum 320 x 200, current 1920 x 1200, maximum 8192 x 8192\n" +
   "Virtual-1 connected primary 1920x1200+0+0 (normal left inverted right x axis y axis) 0mm x 0mm\n" +
   "   1920x1080     60.00 +  60.00  \n" +
   "   4096x2160     60.00    59.94  \n" +
   "   2560x1600     59.99    59.97  \n" +
   "   1920x1440     60.00  \n" +
   "   1856x1392     60.00  \n" +
   "   1792x1344     60.00  \n" +
   "   2048x1152     60.00  \n" +
   "   1920x1200     59.88*   59.95  \n" +
   "   1600x1200     60.00  \n" +
   "   1680x1050     59.95    59.88  \n" +
   "   1400x1050     59.98    59.95  \n" +
   "   1600x900      60.00  \n" +
   "   1280x1024     60.02  \n" +
   "   1440x900      59.89    59.90  \n" +
   "   1280x960      60.00  \n" +
   "   1366x768      59.79    60.00  \n" +
   "   1360x768      60.02  \n" +
   "   1280x800      59.81    59.91  \n" +
   "   1280x768      59.87    59.99  \n" +
   "   1280x720      60.00  \n" +
   "   1024x768      60.00  \n" +
   "   800x600       60.32    56.25  \n" +
   "   848x480       60.00  \n" +
   "   640x480       59.94  \n" +
   "Virtual-2 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-3 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-4 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-5 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-6 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-7 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-8 disconnected\n" +
   "Virtual-9 disconnected\n" +
   "Virtual-10 disconnected\n" +
   "Virtual-11 disconnected\n" +
   "Virtual-12 disconnected\n" +
   "Virtual-13 disconnected\n" +
   "Virtual-14 disconnected\n" +
   "Virtual-15 disconnected\n" +
   "Virtual-16 disconnected\n"]
  $cmds << ["ps aux | grep int2",
   "paralle+  817094  0.0  0.0   2308   836 pts/3    S+   17:06   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  817096  0.0  0.0   9016  1868 pts/3    R+   17:06   0:00 grep int2\n"]
  $cmds << ["wmctrl -ia 0x240610f", ""]
  $cmds << ["wmctrl -ia 0x3000033", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 37773583",
   "_NET_FRAME_EXTENTS(CARDINAL) = 5, 5, 29, 5\n"]
  $cmds << ["xwininfo -id 37773583",
   "\n" +
   "xwininfo: Window id: 0x240610f \n" +
   "\n" +
   "  Absolute upper-left X:  20\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  5\n" +
   "  Relative upper-left Y:  29\n" +
   "  Width: 1875\n" +
   "  Height: 1129\n" +
   "  Depth: 32\n" +
   "  Visual: 0x6cb\n" +
   "  Visual Class: TrueColor\n" +
   "  Border width: 0\n" +
   "  Class: InputOutput\n" +
   "  Colormap: 0x2400006 (not installed)\n" +
   "  Bit Gravity State: NorthWestGravity\n" +
   "  Window Gravity State: NorthWestGravity\n" +
   "  Backing Store State: NotUseful\n" +
   "  Save Under State: no\n" +
   "  Map State: IsViewable\n" +
   "  Override Redirect State: no\n" +
   "  Corners:  +20+46  -25+46  -25-25  +20-25\n" +
   "  -geometry 1875x1129+15+17\n" +
   "\n"]
  $cmds << ["wmctrl -ir 37773583 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 37773583 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 37773583",
   "WINDOW=37773583\n" +
   "X=25\n" +
   "Y=75\n" +
   "WIDTH=1875\n" +
   "HEIGHT=1129\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 37773583 1875 552", ""]
  $cmds << ["xdotool windowmove 37773583 15 17", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50331699",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50331699",
   "\n" +
   "xwininfo: Window id: 0x3000033 \n" +
   "\n" +
   "  Absolute upper-left X:  1053\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 512\n" +
   "  Height: 1122\n" +
   "  Depth: 32\n" +
   "  Visual: 0x6cb\n" +
   "  Visual Class: TrueColor\n" +
   "  Border width: 0\n" +
   "  Class: InputOutput\n" +
   "  Colormap: 0x3000002 (not installed)\n" +
   "  Bit Gravity State: NorthWestGravity\n" +
   "  Window Gravity State: NorthWestGravity\n" +
   "  Backing Store State: NotUseful\n" +
   "  Save Under State: no\n" +
   "  Map State: IsViewable\n" +
   "  Override Redirect State: no\n" +
   "  Corners:  +1053+46  -355+46  -355-32  +1053-32\n" +
   "  -geometry 51x56+1053-32\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331699 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331699 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331699",
   "WINDOW=50331699\n" +
   "X=1053\n" +
   "Y=46\n" +
   "WIDTH=512\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331699 1880 557", ""]
  $cmds << ["xdotool windowmove 50331699 20 623", ""]

  process(m, :move_tile_or_float)


  assert_eq m.current_tag, 3

  assert_eq m.tags, [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326"]],
    :old_columns=>[["50484326"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["37773583", "50331699"]],
    :old_columns=>[["37773583"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["50505465"]],
    :old_columns=>[["50505465"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]}]
  assert_eq m.floating_locations,   {"50618427"=>{:x=>559, :y=>359, :w=>802, :h=>482},
   "37773583"=>{:x=>50, :y=>701, :w=>1870, :h=>547},
   "50331699"=>{:x=>1053, :y=>46, :w=>512, :h=>1122}}
  assert_eq m.last_tiling_focus,   "37773583"
  assert_eq m.last_float_focus,   "37773583"
end


scenario do
  m = Manager.new('')
  m.current_tag = 3
  m.tags =   [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326"]],
    :old_columns=>[["50484326"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["37773583", "50331699"]],
    :old_columns=>[["37773583"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["50505465"]],
    :old_columns=>[["50505465"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]}]
  m.floating_locations =   {"50618427"=>{:x=>559, :y=>359, :w=>802, :h=>482},
   "37773583"=>{:x=>50, :y=>701, :w=>1870, :h=>547},
   "50331699"=>{:x=>1053, :y=>46, :w=>512, :h=>1122}}
  m.last_tiling_focus =   "37773583"
  m.last_float_focus =   "37773583"
  $cmds << ["wmctrl -l",
   "0x02000003 -1 <redacted>\n" +
   "0x03000033  0 <redacted>\n" +
   "0x03000041  0 <redacted>\n" +
   "0x01e00013 -1 <redacted>\n" +
   "0x0300111e  0 <redacted>\n" +
   "0x0600002c  0 <redacted>\n" +
   "0x0301df89  0 <redacted>\n" +
   "0x03025466  0 <redacted>\n" +
   "0x0302a6f9  0 <redacted>\n" +
   "0x0240610f  0 <redacted>\n" +
   "0x02406a45  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "37773583\n"]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 37773583",
   "_NET_FRAME_EXTENTS(CARDINAL) = 5, 5, 29, 5\n"]
  $cmds << ["xwininfo -id 37773583",
   "\n" +
   "xwininfo: Window id: 0x240610f \n" +
   "\n" +
   "  Absolute upper-left X:  20\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  5\n" +
   "  Relative upper-left Y:  29\n" +
   "  Width: 1875\n" +
   "  Height: 552\n" +
   "  Depth: 32\n" +
   "  Visual: 0x6cb\n" +
   "  Visual Class: TrueColor\n" +
   "  Border width: 0\n" +
   "  Class: InputOutput\n" +
   "  Colormap: 0x2400006 (not installed)\n" +
   "  Bit Gravity State: NorthWestGravity\n" +
   "  Window Gravity State: NorthWestGravity\n" +
   "  Backing Store State: NotUseful\n" +
   "  Save Under State: no\n" +
   "  Map State: IsViewable\n" +
   "  Override Redirect State: no\n" +
   "  Corners:  +20+46  -25+46  -25-602  +20-602\n" +
   "  -geometry 1875x552+15+17\n" +
   "\n"]
  $cmds << ["wmctrl -ir 37773583 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 37773583 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 37773583",
   "WINDOW=37773583\n" +
   "X=25\n" +
   "Y=75\n" +
   "WIDTH=1875\n" +
   "HEIGHT=552\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 37773583 1865 542", ""]
  $cmds << ["xdotool windowmove 37773583 45 672", ""]
  $cmds << ["xdotool getwindowname 50331699", "<redacted>\n"]
  $cmds << ["xrandr",
   "Screen 0: minimum 320 x 200, current 1920 x 1200, maximum 8192 x 8192\n" +
   "Virtual-1 connected primary 1920x1200+0+0 (normal left inverted right x axis y axis) 0mm x 0mm\n" +
   "   1920x1080     60.00 +  60.00  \n" +
   "   4096x2160     60.00    59.94  \n" +
   "   2560x1600     59.99    59.97  \n" +
   "   1920x1440     60.00  \n" +
   "   1856x1392     60.00  \n" +
   "   1792x1344     60.00  \n" +
   "   2048x1152     60.00  \n" +
   "   1920x1200     59.88*   59.95  \n" +
   "   1600x1200     60.00  \n" +
   "   1680x1050     59.95    59.88  \n" +
   "   1400x1050     59.98    59.95  \n" +
   "   1600x900      60.00  \n" +
   "   1280x1024     60.02  \n" +
   "   1440x900      59.89    59.90  \n" +
   "   1280x960      60.00  \n" +
   "   1366x768      59.79    60.00  \n" +
   "   1360x768      60.02  \n" +
   "   1280x800      59.81    59.91  \n" +
   "   1280x768      59.87    59.99  \n" +
   "   1280x720      60.00  \n" +
   "   1024x768      60.00  \n" +
   "   800x600       60.32    56.25  \n" +
   "   848x480       60.00  \n" +
   "   640x480       59.94  \n" +
   "Virtual-2 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-3 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-4 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-5 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-6 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-7 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-8 disconnected\n" +
   "Virtual-9 disconnected\n" +
   "Virtual-10 disconnected\n" +
   "Virtual-11 disconnected\n" +
   "Virtual-12 disconnected\n" +
   "Virtual-13 disconnected\n" +
   "Virtual-14 disconnected\n" +
   "Virtual-15 disconnected\n" +
   "Virtual-16 disconnected\n"]
  $cmds << ["ps aux | grep int2",
   "paralle+  817148  0.0  0.0   2308   816 pts/3    S+   17:06   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  817150  0.0  0.0   9016  1868 pts/3    S+   17:06   0:00 grep int2\n"]
  $cmds << ["wmctrl -ia 0x3000033", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50331699",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50331699",
   "\n" +
   "xwininfo: Window id: 0x3000033 \n" +
   "\n" +
   "  Absolute upper-left X:  20\n" +
   "  Absolute upper-left Y:  623\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 1872\n" +
   "  Height: 542\n" +
   "  Depth: 32\n" +
   "  Visual: 0x6cb\n" +
   "  Visual Class: TrueColor\n" +
   "  Border width: 0\n" +
   "  Class: InputOutput\n" +
   "  Colormap: 0x3000002 (not installed)\n" +
   "  Bit Gravity State: NorthWestGravity\n" +
   "  Window Gravity State: NorthWestGravity\n" +
   "  Backing Store State: NotUseful\n" +
   "  Save Under State: no\n" +
   "  Map State: IsViewable\n" +
   "  Override Redirect State: no\n" +
   "  Corners:  +20+623  -28+623  -28-35  +20-35\n" +
   "  -geometry 187x27+20-35\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331699 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331699 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331699",
   "WINDOW=50331699\n" +
   "X=20\n" +
   "Y=623\n" +
   "WIDTH=1872\n" +
   "HEIGHT=542\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331699 1880 1134", ""]
  $cmds << ["xdotool windowmove 50331699 20 46", ""]
  $cmds << ["wmctrl -ia 0x240610f", ""]

  process(m, :move_tile_or_float)


  assert_eq m.current_tag, 3

  assert_eq m.tags, [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326"]],
    :old_columns=>[["50484326"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["50331699"]],
    :old_columns=>[["37773583"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["50505465"]],
    :old_columns=>[["50505465"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]}]
  assert_eq m.floating_locations,   {"50618427"=>{:x=>559, :y=>359, :w=>802, :h=>482},
   "37773583"=>{:x=>45, :y=>672, :w=>1865, :h=>542},
   "50331699"=>{:x=>1053, :y=>46, :w=>512, :h=>1122}}
  assert_eq m.last_tiling_focus,   "37773583"
  assert_eq m.last_float_focus,   "37773583"
end


scenario do
  m = Manager.new('')
  m.current_tag = 3
  m.tags =   [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326"]],
    :old_columns=>[["50484326"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["50331699"]],
    :old_columns=>[["37773583"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["50505465"]],
    :old_columns=>[["50505465"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]}]
  m.floating_locations =   {"50618427"=>{:x=>559, :y=>359, :w=>802, :h=>482},
   "37773583"=>{:x=>45, :y=>672, :w=>1865, :h=>542},
   "50331699"=>{:x=>1053, :y=>46, :w=>512, :h=>1122}}
  m.last_tiling_focus =   "37773583"
  m.last_float_focus =   "37773583"
  $cmds << ["wmctrl -l",
   "0x02000003 -1 <redacted>\n" +
   "0x03000033  0 <redacted>\n" +
   "0x03000041  0 <redacted>\n" +
   "0x01e00013 -1 <redacted>\n" +
   "0x0300111e  0 <redacted>\n" +
   "0x0600002c  0 <redacted>\n" +
   "0x0301df89  0 <redacted>\n" +
   "0x03025466  0 <redacted>\n" +
   "0x0302a6f9  0 <redacted>\n" +
   "0x0240610f  0 <redacted>\n" +
   "0x02406a45  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "37773583\n"]
  $cmds << ["xdotool windowminimize 50331699", ""]
  $cmds << ["wmctrl -ia 0x3025466", ""]
  $cmds << ["wmctrl -ia 0x3000033", ""]
  $cmds << ["wmctrl -ia 0x300111e", ""]
  $cmds << ["wmctrl -ia 0x301df89", ""]
  $cmds << ["wmctrl -ia 0x3000041", ""]
  $cmds << ["xdotool getwindowname 50484326", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 50331699", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 50336030", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 50454409", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 50331713", "<redacted>\n"]
  $cmds << ["xrandr",
   "Screen 0: minimum 320 x 200, current 1920 x 1200, maximum 8192 x 8192\n" +
   "Virtual-1 connected primary 1920x1200+0+0 (normal left inverted right x axis y axis) 0mm x 0mm\n" +
   "   1920x1080     60.00 +  60.00  \n" +
   "   4096x2160     60.00    59.94  \n" +
   "   2560x1600     59.99    59.97  \n" +
   "   1920x1440     60.00  \n" +
   "   1856x1392     60.00  \n" +
   "   1792x1344     60.00  \n" +
   "   2048x1152     60.00  \n" +
   "   1920x1200     59.88*   59.95  \n" +
   "   1600x1200     60.00  \n" +
   "   1680x1050     59.95    59.88  \n" +
   "   1400x1050     59.98    59.95  \n" +
   "   1600x900      60.00  \n" +
   "   1280x1024     60.02  \n" +
   "   1440x900      59.89    59.90  \n" +
   "   1280x960      60.00  \n" +
   "   1366x768      59.79    60.00  \n" +
   "   1360x768      60.02  \n" +
   "   1280x800      59.81    59.91  \n" +
   "   1280x768      59.87    59.99  \n" +
   "   1280x720      60.00  \n" +
   "   1024x768      60.00  \n" +
   "   800x600       60.32    56.25  \n" +
   "   848x480       60.00  \n" +
   "   640x480       59.94  \n" +
   "Virtual-2 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-3 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-4 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-5 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-6 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-7 disconnected (normal left inverted right x axis y axis)\n" +
   "Virtual-8 disconnected\n" +
   "Virtual-9 disconnected\n" +
   "Virtual-10 disconnected\n" +
   "Virtual-11 disconnected\n" +
   "Virtual-12 disconnected\n" +
   "Virtual-13 disconnected\n" +
   "Virtual-14 disconnected\n" +
   "Virtual-15 disconnected\n" +
   "Virtual-16 disconnected\n"]
  $cmds << ["ps aux | grep int2",
   "paralle+  817268  0.0  0.0   2308   836 pts/3    S+   17:06   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  817270  0.0  0.0   9016  1868 pts/3    R+   17:06   0:00 grep int2\n"]
  $cmds << ["wmctrl -ia 0x3025466", ""]
  $cmds << ["wmctrl -ia 0x3000033", ""]
  $cmds << ["wmctrl -ia 0x300111e", ""]
  $cmds << ["wmctrl -ia 0x301df89", ""]
  $cmds << ["wmctrl -ia 0x3000041", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50484326",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50484326",
   "\n" +
   "xwininfo: Window id: 0x3025466 \n" +
   "\n" +
   "  Absolute upper-left X:  20\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 1012\n" +
   "  Height: 1122\n" +
   "  Depth: 32\n" +
   "  Visual: 0x6cb\n" +
   "  Visual Class: TrueColor\n" +
   "  Border width: 0\n" +
   "  Class: InputOutput\n" +
   "  Colormap: 0x3000002 (not installed)\n" +
   "  Bit Gravity State: NorthWestGravity\n" +
   "  Window Gravity State: NorthWestGravity\n" +
   "  Backing Store State: NotUseful\n" +
   "  Save Under State: no\n" +
   "  Map State: IsViewable\n" +
   "  Override Redirect State: no\n" +
   "  Corners:  +20+46  -888+46  -888-32  +20-32\n" +
   "  -geometry 101x56+20-32\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50484326 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50484326 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50484326",
   "WINDOW=50484326\n" +
   "X=0\n" +
   "Y=0\n" +
   "WIDTH=1920\n" +
   "HEIGHT=1200\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50484326 1013 1134", ""]
  $cmds << ["xdotool windowmove 50484326 20 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50331699",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50331699",
   "\n" +
   "xwininfo: Window id: 0x3000033 \n" +
   "\n" +
   "  Absolute upper-left X:  20\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 1872\n" +
   "  Height: 1122\n" +
   "  Depth: 32\n" +
   "  Visual: 0x6cb\n" +
   "  Visual Class: TrueColor\n" +
   "  Border width: 0\n" +
   "  Class: InputOutput\n" +
   "  Colormap: 0x3000002 (not installed)\n" +
   "  Bit Gravity State: NorthWestGravity\n" +
   "  Window Gravity State: NorthWestGravity\n" +
   "  Backing Store State: NotUseful\n" +
   "  Save Under State: no\n" +
   "  Map State: IsViewable\n" +
   "  Override Redirect State: no\n" +
   "  Corners:  +20+46  -28+46  -28-32  +20-32\n" +
   "  -geometry 187x56+20-32\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331699 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331699 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331699",
   "WINDOW=50331699\n" +
   "X=20\n" +
   "Y=46\n" +
   "WIDTH=1872\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331699 513 1134", ""]
  $cmds << ["xdotool windowmove 50331699 1053 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50336030",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50336030",
   "\n" +
   "xwininfo: Window id: 0x300111e \n" +
   "\n" +
   "  Absolute upper-left X:  1586\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 313\n" +
   "  Height: 364\n" +
   "  Depth: 32\n" +
   "  Visual: 0x6cb\n" +
   "  Visual Class: TrueColor\n" +
   "  Border width: 0\n" +
   "  Class: InputOutput\n" +
   "  Colormap: 0x3000002 (not installed)\n" +
   "  Bit Gravity State: NorthWestGravity\n" +
   "  Window Gravity State: NorthWestGravity\n" +
   "  Backing Store State: NotUseful\n" +
   "  Save Under State: no\n" +
   "  Map State: IsViewable\n" +
   "  Override Redirect State: no\n" +
   "  Corners:  +1586+46  -21+46  -21-790  +1586-790\n" +
   "  -geometry 31x18-21+46\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50336030 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50336030 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50336030",
   "WINDOW=50336030\n" +
   "X=1586\n" +
   "Y=46\n" +
   "WIDTH=312\n" +
   "HEIGHT=362\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50336030 313 364", ""]
  $cmds << ["xdotool windowmove 50336030 1586 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50454409",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50454409",
   "\n" +
   "xwininfo: Window id: 0x301df89 \n" +
   "\n" +
   "  Absolute upper-left X:  1586\n" +
   "  Absolute upper-left Y:  430\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 313\n" +
   "  Height: 364\n" +
   "  Depth: 32\n" +
   "  Visual: 0x6cb\n" +
   "  Visual Class: TrueColor\n" +
   "  Border width: 0\n" +
   "  Class: InputOutput\n" +
   "  Colormap: 0x3000002 (not installed)\n" +
   "  Bit Gravity State: NorthWestGravity\n" +
   "  Window Gravity State: NorthWestGravity\n" +
   "  Backing Store State: NotUseful\n" +
   "  Save Under State: no\n" +
   "  Map State: IsViewable\n" +
   "  Override Redirect State: no\n" +
   "  Corners:  +1586+430  -21+430  -21-406  +1586-406\n" +
   "  -geometry 31x18-21+430\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50454409 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50454409 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50454409",
   "WINDOW=50454409\n" +
   "X=1586\n" +
   "Y=430\n" +
   "WIDTH=312\n" +
   "HEIGHT=362\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50454409 313 364", ""]
  $cmds << ["xdotool windowmove 50454409 1586 430", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50331713",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50331713",
   "\n" +
   "xwininfo: Window id: 0x3000041 \n" +
   "\n" +
   "  Absolute upper-left X:  1586\n" +
   "  Absolute upper-left Y:  814\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 312\n" +
   "  Height: 362\n" +
   "  Depth: 32\n" +
   "  Visual: 0x6cb\n" +
   "  Visual Class: TrueColor\n" +
   "  Border width: 0\n" +
   "  Class: InputOutput\n" +
   "  Colormap: 0x3000002 (not installed)\n" +
   "  Bit Gravity State: NorthWestGravity\n" +
   "  Window Gravity State: NorthWestGravity\n" +
   "  Backing Store State: NotUseful\n" +
   "  Save Under State: no\n" +
   "  Map State: IsViewable\n" +
   "  Override Redirect State: no\n" +
   "  Corners:  +1586+814  -22+814  -22-24  +1586-24\n" +
   "  -geometry 31x18-22-24\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331713 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331713 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331713",
   "WINDOW=50331713\n" +
   "X=1586\n" +
   "Y=814\n" +
   "WIDTH=312\n" +
   "HEIGHT=362\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331713 313 364", ""]
  $cmds << ["xdotool windowmove 50331713 1586 814", ""]
  $cmds << ["wmctrl -ia 0x3025466", ""]

  process(m, :focus_1)


  assert_eq m.current_tag, 0

  assert_eq m.tags, [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326"]],
    :old_columns=>[["50484326"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["50331699"]],
    :old_columns=>[["37773583"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["50505465"]],
    :old_columns=>[["50505465"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]}]
  assert_eq m.floating_locations,   {"50618427"=>{:x=>559, :y=>359, :w=>802, :h=>482},
   "37773583"=>{:x=>45, :y=>672, :w=>1865, :h=>542},
   "50331699"=>{:x=>1053, :y=>46, :w=>512, :h=>1122}}
  assert_eq m.last_tiling_focus,   "37773583"
  assert_eq m.last_float_focus,   "37773583"
end
