
HOSTNAME = "ubuntu-linux-22-04-desktop"
OFFSET_X = 0
OFFSET_Y = 26
RESIZE_AMOUNT = 50
PERSIST_SIZES = false
MARGIN = 20

scenario do
  m = Manager.new('')
  m.current_tag = 0
  m.tags =   [{:columns=>[["50484326"], ["50331699", "50454409", "50336030", "50331713"]],
    :old_columns=>
     [["50484326", "50336030", "50331699"], ["50331713", "50454409"]],
    :column_sizes=>[{:x=>20, :w=>1230}, {:x=>1270, :w=>630}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil]},
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x0302a6f9  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50331713\n"]
  $cmds << ["xdotool windowminimize 50484326", ""]
  $cmds << ["xdotool windowminimize 50331699", ""]
  $cmds << ["xdotool windowminimize 50454409", ""]
  $cmds << ["xdotool windowminimize 50336030", ""]
  $cmds << ["xdotool windowminimize 50331713", ""]
  $cmds << ["wmctrl -ia 0x3025466", ""]
  $cmds << ["xdotool getwindowname 50484326", "<redacted>\n"]
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
   "paralle+  803544  0.0  0.0   2308   836 pts/3    S+   16:22   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  803546  0.0  0.0   9016  1868 pts/3    S+   16:22   0:00 grep int2\n"]
  $cmds << ["wmctrl -ia 0x3025466", ""]
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
   "  Width: 1230\n" +
   "  Height: 1134\n" +
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
   "  Corners:  +20+46  -670+46  -670-20  +20-20\n" +
   "  -geometry 122x56+20-20\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50484326 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50484326 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50484326",
   "WINDOW=50484326\n" +
   "X=20\n" +
   "Y=46\n" +
   "WIDTH=1222\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50484326 1880 1134", ""]
  $cmds << ["xdotool windowmove 50484326 20 46", ""]
  $cmds << ["wmctrl -ia 0x3025466", ""]

  process(m, :focus_2)


  assert_eq m.current_tag, 1

  assert_eq m.tags, [{:columns=>[["50484326"], ["50331699", "50454409", "50336030", "50331713"]],
    :old_columns=>
     [["50484326", "50336030", "50331699"], ["50331713", "50454409"]],
    :column_sizes=>[{:x=>20, :w=>1230}, {:x=>1270, :w=>630}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil]},
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
  m.current_tag = 1
  m.tags =   [{:columns=>[["50484326"], ["50331699", "50454409", "50336030", "50331713"]],
    :old_columns=>
     [["50484326", "50336030", "50331699"], ["50331713", "50454409"]],
    :column_sizes=>[{:x=>20, :w=>1230}, {:x=>1270, :w=>630}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil]},
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x0302a6f9  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50484326\n"]
  $cmds << ["xdotool windowminimize 50484326", ""]
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
   "paralle+  803572  0.0  0.0   2308   836 pts/3    S+   16:22   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  803574  0.0  0.0   9016  1872 pts/3    S+   16:22   0:00 grep int2\n"]
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

  assert_eq m.tags, [{:columns=>[["50484326"], ["50331699", "50454409", "50336030", "50331713"]],
    :old_columns=>
     [["50484326", "50336030", "50331699"], ["50331713", "50454409"]],
    :column_sizes=>[{:x=>20, :w=>1230}, {:x=>1270, :w=>630}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil]},
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
  m.current_tag = 2
  m.tags =   [{:columns=>[["50484326"], ["50331699", "50454409", "50336030", "50331713"]],
    :old_columns=>
     [["50484326", "50336030", "50331699"], ["50331713", "50454409"]],
    :column_sizes=>[{:x=>20, :w=>1230}, {:x=>1270, :w=>630}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil]},
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x0302a6f9  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "100663340\n"]
  $cmds << ["xdotool windowminimize 100663340", ""]
  $cmds << ["wmctrl -ia 0x3025466", ""]
  $cmds << ["wmctrl -ia 0x3000033", ""]
  $cmds << ["wmctrl -ia 0x301df89", ""]
  $cmds << ["wmctrl -ia 0x300111e", ""]
  $cmds << ["wmctrl -ia 0x3000041", ""]
  $cmds << ["xdotool getwindowname 50484326", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 50331699", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 50454409", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 50336030", "<redacted>\n"]
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
   "paralle+  803608  0.0  0.0   2308   836 pts/3    S+   16:22   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  803610  0.0  0.0   9016  1868 pts/3    R+   16:22   0:00 grep int2\n"]
  $cmds << ["wmctrl -ia 0x3025466", ""]
  $cmds << ["wmctrl -ia 0x3000033", ""]
  $cmds << ["wmctrl -ia 0x301df89", ""]
  $cmds << ["wmctrl -ia 0x300111e", ""]
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
  $cmds << ["wmctrl -ir 50484326 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50484326 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50484326",
   "WINDOW=50484326\n" +
   "X=20\n" +
   "Y=46\n" +
   "WIDTH=1872\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50484326 1230 1134", ""]
  $cmds << ["xdotool windowmove 50484326 20 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50331699",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50331699",
   "\n" +
   "xwininfo: Window id: 0x3000033 \n" +
   "\n" +
   "  Absolute upper-left X:  1270\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 630\n" +
   "  Height: 268\n" +
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
   "  Corners:  +1270+46  -20+46  -20-886  +1270-886\n" +
   "  -geometry 62x13-20+46\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331699 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331699 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331699",
   "WINDOW=50331699\n" +
   "X=1270\n" +
   "Y=46\n" +
   "WIDTH=622\n" +
   "HEIGHT=262\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331699 630 268", ""]
  $cmds << ["xdotool windowmove 50331699 1270 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50454409",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50454409",
   "\n" +
   "xwininfo: Window id: 0x301df89 \n" +
   "\n" +
   "  Absolute upper-left X:  1270\n" +
   "  Absolute upper-left Y:  334\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 630\n" +
   "  Height: 268\n" +
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
   "  Corners:  +1270+334  -20+334  -20-598  +1270-598\n" +
   "  -geometry 62x13-20+334\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50454409 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50454409 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50454409",
   "WINDOW=50454409\n" +
   "X=1270\n" +
   "Y=334\n" +
   "WIDTH=622\n" +
   "HEIGHT=262\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50454409 630 268", ""]
  $cmds << ["xdotool windowmove 50454409 1270 334", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50336030",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50336030",
   "\n" +
   "xwininfo: Window id: 0x300111e \n" +
   "\n" +
   "  Absolute upper-left X:  1270\n" +
   "  Absolute upper-left Y:  622\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 630\n" +
   "  Height: 268\n" +
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
   "  Corners:  +1270+622  -20+622  -20-310  +1270-310\n" +
   "  -geometry 62x13-20+622\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50336030 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50336030 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50336030",
   "WINDOW=50336030\n" +
   "X=1270\n" +
   "Y=622\n" +
   "WIDTH=622\n" +
   "HEIGHT=262\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50336030 630 268", ""]
  $cmds << ["xdotool windowmove 50336030 1270 622", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50331713",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50331713",
   "\n" +
   "xwininfo: Window id: 0x3000041 \n" +
   "\n" +
   "  Absolute upper-left X:  1270\n" +
   "  Absolute upper-left Y:  910\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 630\n" +
   "  Height: 268\n" +
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
   "  Corners:  +1270+910  -20+910  -20-22  +1270-22\n" +
   "  -geometry 62x13-20-22\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331713 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331713 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331713",
   "WINDOW=50331713\n" +
   "X=1270\n" +
   "Y=910\n" +
   "WIDTH=622\n" +
   "HEIGHT=262\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331713 630 268", ""]
  $cmds << ["xdotool windowmove 50331713 1270 910", ""]
  $cmds << ["wmctrl -ia 0x3025466", ""]

  process(m, :focus_1)


  assert_eq m.current_tag, 0

  assert_eq m.tags, [{:columns=>[["50484326"], ["50331699", "50454409", "50336030", "50331713"]],
    :old_columns=>
     [["50484326", "50336030", "50331699"], ["50331713", "50454409"]],
    :column_sizes=>[{:x=>20, :w=>1230}, {:x=>1270, :w=>630}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil]},
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
  m.current_tag = 0
  m.tags =   [{:columns=>[["50484326"], ["50331699", "50454409", "50336030", "50331713"]],
    :old_columns=>
     [["50484326", "50336030", "50331699"], ["50331713", "50454409"]],
    :column_sizes=>[{:x=>20, :w=>1230}, {:x=>1270, :w=>630}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil]},
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x0302a6f9  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50484326\n"]
  $cmds << ["wmctrl -ia 0x3000033", ""]

  process(m, :focus_right)


  assert_eq m.current_tag, 0

  assert_eq m.tags, [{:columns=>[["50484326"], ["50331699", "50454409", "50336030", "50331713"]],
    :old_columns=>
     [["50484326", "50336030", "50331699"], ["50331713", "50454409"]],
    :column_sizes=>[{:x=>20, :w=>1230}, {:x=>1270, :w=>630}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil]},
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
  m.current_tag = 0
  m.tags =   [{:columns=>[["50484326"], ["50331699", "50454409", "50336030", "50331713"]],
    :old_columns=>
     [["50484326", "50336030", "50331699"], ["50331713", "50454409"]],
    :column_sizes=>[{:x=>20, :w=>1230}, {:x=>1270, :w=>630}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil]},
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x0302a6f9  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50331699\n"]
  $cmds << ["xdotool getactivewindow getwindowname", "Terminal - parallels@ubuntu-linux-22-04-desktop: ~"]
  $cmds << ["cd ~ && nohup xfce4-terminal > /dev/null", ""]
  $cmds << ["xdotool getactivewindow", "50599031\n"]
  $cmds << ["xdotool getwindowgeometry --shell 50599031",
   "WINDOW=50599031\n" +
   "X=559\n" +
   "Y=359\n" +
   "WIDTH=802\n" +
   "HEIGHT=482\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool getwindowname 50484326", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 50331699", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 50454409", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 50336030", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 50331713", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 50599031", "<redacted>\n"]
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
   "paralle+  803697  0.0  0.0   2308   836 pts/3    S+   16:22   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  803699  0.0  0.0   9016  1868 pts/3    S+   16:22   0:00 grep int2\n"]
  $cmds << ["wmctrl -ia 0x3025466", ""]
  $cmds << ["wmctrl -ia 0x3000033", ""]
  $cmds << ["wmctrl -ia 0x301df89", ""]
  $cmds << ["wmctrl -ia 0x300111e", ""]
  $cmds << ["wmctrl -ia 0x3000041", ""]
  $cmds << ["wmctrl -ia 0x3041477", ""]
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
   "  Width: 1222\n" +
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
   "  Corners:  +20+46  -678+46  -678-32  +20-32\n" +
   "  -geometry 122x56+20-32\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50484326 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50484326 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50484326",
   "WINDOW=50484326\n" +
   "X=20\n" +
   "Y=46\n" +
   "WIDTH=1222\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50484326 1230 1134", ""]
  $cmds << ["xdotool windowmove 50484326 20 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50331699",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50331699",
   "\n" +
   "xwininfo: Window id: 0x3000033 \n" +
   "\n" +
   "  Absolute upper-left X:  1270\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 630\n" +
   "  Height: 268\n" +
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
   "  Corners:  +1270+46  -20+46  -20-886  +1270-886\n" +
   "  -geometry 62x13-20+46\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331699 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331699 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331699",
   "WINDOW=50331699\n" +
   "X=1270\n" +
   "Y=46\n" +
   "WIDTH=622\n" +
   "HEIGHT=262\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331699 630 210", ""]
  $cmds << ["xdotool windowmove 50331699 1270 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50454409",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50454409",
   "\n" +
   "xwininfo: Window id: 0x301df89 \n" +
   "\n" +
   "  Absolute upper-left X:  1270\n" +
   "  Absolute upper-left Y:  334\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 622\n" +
   "  Height: 262\n" +
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
   "  Corners:  +1270+334  -28+334  -28-604  +1270-604\n" +
   "  -geometry 62x13-28+334\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50454409 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50454409 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50454409",
   "WINDOW=50454409\n" +
   "X=1270\n" +
   "Y=334\n" +
   "WIDTH=622\n" +
   "HEIGHT=262\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50454409 630 210", ""]
  $cmds << ["xdotool windowmove 50454409 1270 276", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50336030",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50336030",
   "\n" +
   "xwininfo: Window id: 0x300111e \n" +
   "\n" +
   "  Absolute upper-left X:  1270\n" +
   "  Absolute upper-left Y:  622\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 622\n" +
   "  Height: 262\n" +
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
   "  Corners:  +1270+622  -28+622  -28-316  +1270-316\n" +
   "  -geometry 62x13-28+622\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50336030 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50336030 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50336030",
   "WINDOW=50336030\n" +
   "X=1270\n" +
   "Y=622\n" +
   "WIDTH=622\n" +
   "HEIGHT=262\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50336030 630 210", ""]
  $cmds << ["xdotool windowmove 50336030 1270 506", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50331713",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50331713",
   "\n" +
   "xwininfo: Window id: 0x3000041 \n" +
   "\n" +
   "  Absolute upper-left X:  1270\n" +
   "  Absolute upper-left Y:  910\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 622\n" +
   "  Height: 262\n" +
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
   "  Corners:  +1270+910  -28+910  -28-28  +1270-28\n" +
   "  -geometry 62x13-28-28\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331713 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331713 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331713",
   "WINDOW=50331713\n" +
   "X=1270\n" +
   "Y=910\n" +
   "WIDTH=622\n" +
   "HEIGHT=262\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331713 630 210", ""]
  $cmds << ["xdotool windowmove 50331713 1270 736", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50599031",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50599031",
   "\n" +
   "xwininfo: Window id: 0x3041477 \n" +
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
  $cmds << ["wmctrl -ir 50599031 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50599031 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50599031",
   "WINDOW=50599031\n" +
   "X=559\n" +
   "Y=359\n" +
   "WIDTH=802\n" +
   "HEIGHT=482\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50599031 630 210", ""]
  $cmds << ["xdotool windowmove 50599031 1270 966", ""]
  $cmds << ["wmctrl -ia 0x3041477", ""]

  process(m, :start_terminal)


  assert_eq m.current_tag, 0

  assert_eq m.tags, [{:columns=>
     [["50484326"],
      ["50331699", "50454409", "50336030", "50331713", "50599031"]],
    :old_columns=>
     [["50484326", "50336030", "50331699"], ["50331713", "50454409"]],
    :column_sizes=>[{:x=>20, :w=>1230}, {:x=>1270, :w=>630}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil]},
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
  m.current_tag = 0
  m.tags =   [{:columns=>
     [["50484326"],
      ["50331699", "50454409", "50336030", "50331713", "50599031"]],
    :old_columns=>
     [["50484326", "50336030", "50331699"], ["50331713", "50454409"]],
    :column_sizes=>[{:x=>20, :w=>1230}, {:x=>1270, :w=>630}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil]},
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x03041477  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50599031\n"]
  $cmds << ["zenity --question --ok-label OK --cancel-label Cancel --text \"Close window?\"", ""]

  $cmds << ["wmctrl -i -c 50599031", ""]
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
  $cmds << ["xdotool getwindowname 50484326", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 50331699", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 50454409", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 50336030", "<redacted>\n"]
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
   "paralle+  803768  0.0  0.0   2308   836 pts/3    S+   16:22   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  803770  0.0  0.0   9016  1872 pts/3    S+   16:22   0:00 grep int2\n"]
  $cmds << ["wmctrl -ia 0x3025466", ""]
  $cmds << ["wmctrl -ia 0x3000033", ""]
  $cmds << ["wmctrl -ia 0x301df89", ""]
  $cmds << ["wmctrl -ia 0x300111e", ""]
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
   "  Width: 1230\n" +
   "  Height: 1134\n" +
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
   "  Corners:  +20+46  -670+46  -670-20  +20-20\n" +
   "  -geometry 122x56+20-20\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50484326 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50484326 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50484326",
   "WINDOW=50484326\n" +
   "X=20\n" +
   "Y=46\n" +
   "WIDTH=1222\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50484326 1230 1134", ""]
  $cmds << ["xdotool windowmove 50484326 20 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50331699",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50331699",
   "\n" +
   "xwininfo: Window id: 0x3000033 \n" +
   "\n" +
   "  Absolute upper-left X:  1270\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 622\n" +
   "  Height: 202\n" +
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
   "  Corners:  +1270+46  -28+46  -28-952  +1270-952\n" +
   "  -geometry 62x10-28+46\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331699 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331699 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331699",
   "WINDOW=50331699\n" +
   "X=1270\n" +
   "Y=46\n" +
   "WIDTH=622\n" +
   "HEIGHT=202\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331699 630 268", ""]
  $cmds << ["xdotool windowmove 50331699 1270 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50454409",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50454409",
   "\n" +
   "xwininfo: Window id: 0x301df89 \n" +
   "\n" +
   "  Absolute upper-left X:  1270\n" +
   "  Absolute upper-left Y:  276\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 622\n" +
   "  Height: 202\n" +
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
   "  Corners:  +1270+276  -28+276  -28-722  +1270-722\n" +
   "  -geometry 62x10-28+276\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50454409 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50454409 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50454409",
   "WINDOW=50454409\n" +
   "X=1270\n" +
   "Y=276\n" +
   "WIDTH=622\n" +
   "HEIGHT=202\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50454409 630 268", ""]
  $cmds << ["xdotool windowmove 50454409 1270 334", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50336030",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50336030",
   "\n" +
   "xwininfo: Window id: 0x300111e \n" +
   "\n" +
   "  Absolute upper-left X:  1270\n" +
   "  Absolute upper-left Y:  506\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 622\n" +
   "  Height: 202\n" +
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
   "  Corners:  +1270+506  -28+506  -28-492  +1270-492\n" +
   "  -geometry 62x10-28+506\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50336030 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50336030 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50336030",
   "WINDOW=50336030\n" +
   "X=1270\n" +
   "Y=506\n" +
   "WIDTH=622\n" +
   "HEIGHT=202\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50336030 630 268", ""]
  $cmds << ["xdotool windowmove 50336030 1270 622", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50331713",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50331713",
   "\n" +
   "xwininfo: Window id: 0x3000041 \n" +
   "\n" +
   "  Absolute upper-left X:  1270\n" +
   "  Absolute upper-left Y:  736\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 622\n" +
   "  Height: 202\n" +
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
   "  Corners:  +1270+736  -28+736  -28-262  +1270-262\n" +
   "  -geometry 62x10-28+736\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331713 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331713 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331713",
   "WINDOW=50331713\n" +
   "X=1270\n" +
   "Y=736\n" +
   "WIDTH=622\n" +
   "HEIGHT=202\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331713 630 268", ""]
  $cmds << ["xdotool windowmove 50331713 1270 910", ""]
  $cmds << ["wmctrl -ia 0x3000033", ""]

  process(m, :close_window)


  assert_eq m.current_tag, 0

  assert_eq m.tags, [{:columns=>[["50484326"], ["50331699", "50454409", "50336030", "50331713"]],
    :old_columns=>
     [["50484326", "50336030", "50331699"], ["50331713", "50454409"]],
    :column_sizes=>[{:x=>20, :w=>1230}, {:x=>1270, :w=>630}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil]},
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
  m.current_tag = 0
  m.tags =   [{:columns=>[["50484326"], ["50331699", "50454409", "50336030", "50331713"]],
    :old_columns=>
     [["50484326", "50336030", "50331699"], ["50331713", "50454409"]],
    :column_sizes=>[{:x=>20, :w=>1230}, {:x=>1270, :w=>630}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil]},
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x0302a6f9  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50331699\n"]
  $cmds << ["xdotool getactivewindow getwindowname", "Terminal - parallels@ubuntu-linux-22-04-desktop: ~"]
  $cmds << ["cd ~ && nohup xfce4-terminal > /dev/null", ""]
  $cmds << ["xdotool getactivewindow", "50599335\n"]
  $cmds << ["xdotool getwindowgeometry --shell 50599335",
   "WINDOW=50599335\n" +
   "X=559\n" +
   "Y=359\n" +
   "WIDTH=802\n" +
   "HEIGHT=482\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool getwindowname 50484326", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 50331699", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 50454409", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 50336030", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 50331713", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 50599335", "<redacted>\n"]
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
   "paralle+  803843  0.0  0.0   2308   836 pts/3    S+   16:22   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  803845  0.0  0.0   9016  1872 pts/3    S+   16:22   0:00 grep int2\n"]
  $cmds << ["wmctrl -ia 0x3025466", ""]
  $cmds << ["wmctrl -ia 0x3000033", ""]
  $cmds << ["wmctrl -ia 0x301df89", ""]
  $cmds << ["wmctrl -ia 0x300111e", ""]
  $cmds << ["wmctrl -ia 0x3000041", ""]
  $cmds << ["wmctrl -ia 0x30415a7", ""]
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
   "  Width: 1230\n" +
   "  Height: 1134\n" +
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
   "  Corners:  +20+46  -670+46  -670-20  +20-20\n" +
   "  -geometry 122x56+20-20\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50484326 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50484326 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50484326",
   "WINDOW=50484326\n" +
   "X=20\n" +
   "Y=46\n" +
   "WIDTH=1222\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50484326 1230 1134", ""]
  $cmds << ["xdotool windowmove 50484326 20 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50331699",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50331699",
   "\n" +
   "xwininfo: Window id: 0x3000033 \n" +
   "\n" +
   "  Absolute upper-left X:  1270\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 622\n" +
   "  Height: 262\n" +
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
   "  Corners:  +1270+46  -28+46  -28-892  +1270-892\n" +
   "  -geometry 62x13-28+46\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331699 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331699 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331699",
   "WINDOW=50331699\n" +
   "X=1270\n" +
   "Y=46\n" +
   "WIDTH=622\n" +
   "HEIGHT=262\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331699 630 210", ""]
  $cmds << ["xdotool windowmove 50331699 1270 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50454409",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50454409",
   "\n" +
   "xwininfo: Window id: 0x301df89 \n" +
   "\n" +
   "  Absolute upper-left X:  1270\n" +
   "  Absolute upper-left Y:  334\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 622\n" +
   "  Height: 262\n" +
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
   "  Corners:  +1270+334  -28+334  -28-604  +1270-604\n" +
   "  -geometry 62x13-28+334\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50454409 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50454409 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50454409",
   "WINDOW=50454409\n" +
   "X=1270\n" +
   "Y=334\n" +
   "WIDTH=622\n" +
   "HEIGHT=262\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50454409 630 210", ""]
  $cmds << ["xdotool windowmove 50454409 1270 276", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50336030",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50336030",
   "\n" +
   "xwininfo: Window id: 0x300111e \n" +
   "\n" +
   "  Absolute upper-left X:  1270\n" +
   "  Absolute upper-left Y:  622\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 622\n" +
   "  Height: 262\n" +
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
   "  Corners:  +1270+622  -28+622  -28-316  +1270-316\n" +
   "  -geometry 62x13-28+622\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50336030 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50336030 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50336030",
   "WINDOW=50336030\n" +
   "X=1270\n" +
   "Y=622\n" +
   "WIDTH=622\n" +
   "HEIGHT=262\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50336030 630 210", ""]
  $cmds << ["xdotool windowmove 50336030 1270 506", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50331713",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50331713",
   "\n" +
   "xwininfo: Window id: 0x3000041 \n" +
   "\n" +
   "  Absolute upper-left X:  1270\n" +
   "  Absolute upper-left Y:  910\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 622\n" +
   "  Height: 262\n" +
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
   "  Corners:  +1270+910  -28+910  -28-28  +1270-28\n" +
   "  -geometry 62x13-28-28\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331713 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331713 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331713",
   "WINDOW=50331713\n" +
   "X=1270\n" +
   "Y=910\n" +
   "WIDTH=622\n" +
   "HEIGHT=262\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331713 630 210", ""]
  $cmds << ["xdotool windowmove 50331713 1270 736", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50599335",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50599335",
   "\n" +
   "xwininfo: Window id: 0x30415a7 \n" +
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
  $cmds << ["wmctrl -ir 50599335 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50599335 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50599335",
   "WINDOW=50599335\n" +
   "X=559\n" +
   "Y=359\n" +
   "WIDTH=802\n" +
   "HEIGHT=482\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50599335 630 210", ""]
  $cmds << ["xdotool windowmove 50599335 1270 966", ""]
  $cmds << ["wmctrl -ia 0x30415a7", ""]

  process(m, :start_terminal)


  assert_eq m.current_tag, 0

  assert_eq m.tags, [{:columns=>
     [["50484326"],
      ["50331699", "50454409", "50336030", "50331713", "50599335"]],
    :old_columns=>
     [["50484326", "50336030", "50331699"], ["50331713", "50454409"]],
    :column_sizes=>[{:x=>20, :w=>1230}, {:x=>1270, :w=>630}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil]},
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
  m.current_tag = 0
  m.tags =   [{:columns=>
     [["50484326"],
      ["50331699", "50454409", "50336030", "50331713", "50599335"]],
    :old_columns=>
     [["50484326", "50336030", "50331699"], ["50331713", "50454409"]],
    :column_sizes=>[{:x=>20, :w=>1230}, {:x=>1270, :w=>630}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil]},
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x0302a6f9  0 <redacted>\n"]
  $cmds << ["xdotool getwindowname 50484326", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 50331699", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 50454409", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 50336030", "<redacted>\n"]
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
   "paralle+  803915  0.0  0.0   2308   836 pts/3    S+   16:22   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  803917  0.0  0.0   9016  1868 pts/3    R+   16:22   0:00 grep int2\n"]
  $cmds << ["wmctrl -ia 0x3025466", ""]
  $cmds << ["wmctrl -ia 0x3000033", ""]
  $cmds << ["wmctrl -ia 0x301df89", ""]
  $cmds << ["wmctrl -ia 0x300111e", ""]
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
   "  Width: 1230\n" +
   "  Height: 1134\n" +
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
   "  Corners:  +20+46  -670+46  -670-20  +20-20\n" +
   "  -geometry 122x56+20-20\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50484326 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50484326 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50484326",
   "WINDOW=50484326\n" +
   "X=20\n" +
   "Y=46\n" +
   "WIDTH=1222\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50484326 1230 1134", ""]
  $cmds << ["xdotool windowmove 50484326 20 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50331699",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50331699",
   "\n" +
   "xwininfo: Window id: 0x3000033 \n" +
   "\n" +
   "  Absolute upper-left X:  1270\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 622\n" +
   "  Height: 202\n" +
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
   "  Corners:  +1270+46  -28+46  -28-952  +1270-952\n" +
   "  -geometry 62x10-28+46\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331699 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331699 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331699",
   "WINDOW=50331699\n" +
   "X=1270\n" +
   "Y=46\n" +
   "WIDTH=622\n" +
   "HEIGHT=202\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331699 630 268", ""]
  $cmds << ["xdotool windowmove 50331699 1270 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50454409",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50454409",
   "\n" +
   "xwininfo: Window id: 0x301df89 \n" +
   "\n" +
   "  Absolute upper-left X:  1270\n" +
   "  Absolute upper-left Y:  276\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 622\n" +
   "  Height: 202\n" +
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
   "  Corners:  +1270+276  -28+276  -28-722  +1270-722\n" +
   "  -geometry 62x10-28+276\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50454409 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50454409 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50454409",
   "WINDOW=50454409\n" +
   "X=1270\n" +
   "Y=276\n" +
   "WIDTH=622\n" +
   "HEIGHT=202\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50454409 630 268", ""]
  $cmds << ["xdotool windowmove 50454409 1270 334", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50336030",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50336030",
   "\n" +
   "xwininfo: Window id: 0x300111e \n" +
   "\n" +
   "  Absolute upper-left X:  1270\n" +
   "  Absolute upper-left Y:  506\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 622\n" +
   "  Height: 202\n" +
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
   "  Corners:  +1270+506  -28+506  -28-492  +1270-492\n" +
   "  -geometry 62x10-28+506\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50336030 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50336030 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50336030",
   "WINDOW=50336030\n" +
   "X=1270\n" +
   "Y=506\n" +
   "WIDTH=622\n" +
   "HEIGHT=202\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50336030 630 268", ""]
  $cmds << ["xdotool windowmove 50336030 1270 622", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50331713",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50331713",
   "\n" +
   "xwininfo: Window id: 0x3000041 \n" +
   "\n" +
   "  Absolute upper-left X:  1270\n" +
   "  Absolute upper-left Y:  736\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 622\n" +
   "  Height: 202\n" +
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
   "  Corners:  +1270+736  -28+736  -28-262  +1270-262\n" +
   "  -geometry 62x10-28+736\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331713 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331713 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331713",
   "WINDOW=50331713\n" +
   "X=1270\n" +
   "Y=736\n" +
   "WIDTH=622\n" +
   "HEIGHT=202\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331713 630 268", ""]
  $cmds << ["xdotool windowmove 50331713 1270 910", ""]
  $cmds << ["xdotool getwindowname 50484326", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 50331699", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 50454409", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 50336030", "<redacted>\n"]
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
   "paralle+  803964  0.0  0.0   2308   840 pts/3    S+   16:22   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  803966  0.0  0.0   9016  1868 pts/3    S+   16:22   0:00 grep int2\n"]
  $cmds << ["wmctrl -ia 0x3025466", ""]
  $cmds << ["wmctrl -ia 0x3000033", ""]
  $cmds << ["wmctrl -ia 0x301df89", ""]
  $cmds << ["wmctrl -ia 0x300111e", ""]
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
   "  Width: 1230\n" +
   "  Height: 1134\n" +
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
   "  Corners:  +20+46  -670+46  -670-20  +20-20\n" +
   "  -geometry 122x56+20-20\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50484326 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50484326 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50484326",
   "WINDOW=50484326\n" +
   "X=20\n" +
   "Y=46\n" +
   "WIDTH=1222\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50484326 1230 1134", ""]
  $cmds << ["xdotool windowmove 50484326 20 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50331699",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50331699",
   "\n" +
   "xwininfo: Window id: 0x3000033 \n" +
   "\n" +
   "  Absolute upper-left X:  1270\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 622\n" +
   "  Height: 262\n" +
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
   "  Corners:  +1270+46  -28+46  -28-892  +1270-892\n" +
   "  -geometry 62x13-28+46\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331699 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331699 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331699",
   "WINDOW=50331699\n" +
   "X=1270\n" +
   "Y=46\n" +
   "WIDTH=622\n" +
   "HEIGHT=262\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331699 630 268", ""]
  $cmds << ["xdotool windowmove 50331699 1270 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50454409",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50454409",
   "\n" +
   "xwininfo: Window id: 0x301df89 \n" +
   "\n" +
   "  Absolute upper-left X:  1270\n" +
   "  Absolute upper-left Y:  334\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 622\n" +
   "  Height: 262\n" +
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
   "  Corners:  +1270+334  -28+334  -28-604  +1270-604\n" +
   "  -geometry 62x13-28+334\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50454409 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50454409 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50454409",
   "WINDOW=50454409\n" +
   "X=1270\n" +
   "Y=334\n" +
   "WIDTH=622\n" +
   "HEIGHT=262\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50454409 630 268", ""]
  $cmds << ["xdotool windowmove 50454409 1270 334", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50336030",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50336030",
   "\n" +
   "xwininfo: Window id: 0x300111e \n" +
   "\n" +
   "  Absolute upper-left X:  1270\n" +
   "  Absolute upper-left Y:  622\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 622\n" +
   "  Height: 262\n" +
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
   "  Corners:  +1270+622  -28+622  -28-316  +1270-316\n" +
   "  -geometry 62x13-28+622\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50336030 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50336030 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50336030",
   "WINDOW=50336030\n" +
   "X=1270\n" +
   "Y=622\n" +
   "WIDTH=622\n" +
   "HEIGHT=262\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50336030 630 268", ""]
  $cmds << ["xdotool windowmove 50336030 1270 622", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50331713",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50331713",
   "\n" +
   "xwininfo: Window id: 0x3000041 \n" +
   "\n" +
   "  Absolute upper-left X:  1270\n" +
   "  Absolute upper-left Y:  910\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 622\n" +
   "  Height: 262\n" +
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
   "  Corners:  +1270+910  -28+910  -28-28  +1270-28\n" +
   "  -geometry 62x13-28-28\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331713 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331713 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331713",
   "WINDOW=50331713\n" +
   "X=1270\n" +
   "Y=910\n" +
   "WIDTH=622\n" +
   "HEIGHT=262\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331713 630 268", ""]
  $cmds << ["xdotool windowmove 50331713 1270 910", ""]

  m.remove_dead_windows_and_redraw!


  assert_eq m.current_tag, 0

  assert_eq m.tags, [{:columns=>[["50484326"], ["50331699", "50454409", "50336030", "50331713"]],
    :old_columns=>
     [["50484326", "50336030", "50331699"], ["50331713", "50454409"]],
    :column_sizes=>[{:x=>20, :w=>1230}, {:x=>1270, :w=>630}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil]},
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
  m.current_tag = 0
  m.tags =   [{:columns=>[["50484326"], ["50331699", "50454409", "50336030", "50331713"]],
    :old_columns=>
     [["50484326", "50336030", "50331699"], ["50331713", "50454409"]],
    :column_sizes=>[{:x=>20, :w=>1230}, {:x=>1270, :w=>630}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil]},
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x0302a6f9  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50331713\n"]
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
   "paralle+  804023  0.0  0.0   2308   816 pts/3    S+   16:22   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  804025  0.0  0.0   9016  1868 pts/3    S+   16:22   0:00 grep int2\n"]
  $cmds << ["xdotool getwindowname 50484326", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 50331699", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 50454409", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 50336030", "<redacted>\n"]
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
   "paralle+  804032  0.0  0.0   2308   828 pts/3    S+   16:22   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  804034  0.0  0.0   9016  1868 pts/3    S+   16:22   0:00 grep int2\n"]
  $cmds << ["wmctrl -ia 0x3025466", ""]
  $cmds << ["wmctrl -ia 0x3000033", ""]
  $cmds << ["wmctrl -ia 0x301df89", ""]
  $cmds << ["wmctrl -ia 0x300111e", ""]
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
   "  Width: 1230\n" +
   "  Height: 1134\n" +
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
   "  Corners:  +20+46  -670+46  -670-20  +20-20\n" +
   "  -geometry 122x56+20-20\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50484326 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50484326 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50484326",
   "WINDOW=50484326\n" +
   "X=20\n" +
   "Y=46\n" +
   "WIDTH=1222\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50484326 613 1134", ""]
  $cmds << ["xdotool windowmove 50484326 20 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50331699",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50331699",
   "\n" +
   "xwininfo: Window id: 0x3000033 \n" +
   "\n" +
   "  Absolute upper-left X:  1270\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 622\n" +
   "  Height: 262\n" +
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
   "  Corners:  +1270+46  -28+46  -28-892  +1270-892\n" +
   "  -geometry 62x13-28+46\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331699 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331699 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331699",
   "WINDOW=50331699\n" +
   "X=1270\n" +
   "Y=46\n" +
   "WIDTH=622\n" +
   "HEIGHT=262\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331699 613 364", ""]
  $cmds << ["xdotool windowmove 50331699 653 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50454409",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50454409",
   "\n" +
   "xwininfo: Window id: 0x301df89 \n" +
   "\n" +
   "  Absolute upper-left X:  1270\n" +
   "  Absolute upper-left Y:  334\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 630\n" +
   "  Height: 268\n" +
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
   "  Corners:  +1270+334  -20+334  -20-598  +1270-598\n" +
   "  -geometry 62x13-20+334\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50454409 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50454409 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50454409",
   "WINDOW=50454409\n" +
   "X=1270\n" +
   "Y=334\n" +
   "WIDTH=622\n" +
   "HEIGHT=262\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50454409 613 364", ""]
  $cmds << ["xdotool windowmove 50454409 653 430", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50336030",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50336030",
   "\n" +
   "xwininfo: Window id: 0x300111e \n" +
   "\n" +
   "  Absolute upper-left X:  1270\n" +
   "  Absolute upper-left Y:  622\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 630\n" +
   "  Height: 268\n" +
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
   "  Corners:  +1270+622  -20+622  -20-310  +1270-310\n" +
   "  -geometry 62x13-20+622\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50336030 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50336030 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50336030",
   "WINDOW=50336030\n" +
   "X=1270\n" +
   "Y=622\n" +
   "WIDTH=622\n" +
   "HEIGHT=262\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50336030 613 364", ""]
  $cmds << ["xdotool windowmove 50336030 653 814", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50331713",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50331713",
   "\n" +
   "xwininfo: Window id: 0x3000041 \n" +
   "\n" +
   "  Absolute upper-left X:  1270\n" +
   "  Absolute upper-left Y:  910\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 622\n" +
   "  Height: 262\n" +
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
   "  Corners:  +1270+910  -28+910  -28-28  +1270-28\n" +
   "  -geometry 62x13-28-28\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331713 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331713 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331713",
   "WINDOW=50331713\n" +
   "X=1270\n" +
   "Y=910\n" +
   "WIDTH=622\n" +
   "HEIGHT=262\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331713 613 1134", ""]
  $cmds << ["xdotool windowmove 50331713 1286 46", ""]
  $cmds << ["wmctrl -ia 0x3000041", ""]

  process(m, :move_right)


  assert_eq m.current_tag, 0

  assert_eq m.tags, [{:columns=>[["50484326"], ["50331699", "50454409", "50336030"], ["50331713"]],
    :old_columns=>
     [["50484326"], ["50331699", "50454409", "50336030"], ["50331713"]],
    :column_sizes=>[{:x=>20, :w=>613}, {:x=>653, :w=>613}, {:x=>1286, :w=>613}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil]},
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
  m.current_tag = 0
  m.tags =   [{:columns=>[["50484326"], ["50331699", "50454409", "50336030"], ["50331713"]],
    :old_columns=>
     [["50484326"], ["50331699", "50454409", "50336030"], ["50331713"]],
    :column_sizes=>[{:x=>20, :w=>613}, {:x=>653, :w=>613}, {:x=>1286, :w=>613}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil]},
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x0302a6f9  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50331713\n"]
  $cmds << ["wmctrl -ia 0x3000033", ""]

  process(m, :focus_left)


  assert_eq m.current_tag, 0

  assert_eq m.tags, [{:columns=>[["50484326"], ["50331699", "50454409", "50336030"], ["50331713"]],
    :old_columns=>
     [["50484326"], ["50331699", "50454409", "50336030"], ["50331713"]],
    :column_sizes=>[{:x=>20, :w=>613}, {:x=>653, :w=>613}, {:x=>1286, :w=>613}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil]},
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
  m.current_tag = 0
  m.tags =   [{:columns=>[["50484326"], ["50331699", "50454409", "50336030"], ["50331713"]],
    :old_columns=>
     [["50484326"], ["50331699", "50454409", "50336030"], ["50331713"]],
    :column_sizes=>[{:x=>20, :w=>613}, {:x=>653, :w=>613}, {:x=>1286, :w=>613}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil]},
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x0302a6f9  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50331699\n"]
  $cmds << ["xdotool getwindowname 50484326", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 50454409", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 50336030", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 50331699", "<redacted>\n"]
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
   "paralle+  804105  0.0  0.0   2308   836 pts/3    S+   16:22   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  804107  0.0  0.0   9016  1868 pts/3    S+   16:22   0:00 grep int2\n"]
  $cmds << ["wmctrl -ia 0x3025466", ""]
  $cmds << ["wmctrl -ia 0x301df89", ""]
  $cmds << ["wmctrl -ia 0x300111e", ""]
  $cmds << ["wmctrl -ia 0x3000033", ""]
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
   "  Width: 612\n" +
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
   "  Corners:  +20+46  -1288+46  -1288-32  +20-32\n" +
   "  -geometry 61x56+20-32\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50484326 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50484326 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50484326",
   "WINDOW=50484326\n" +
   "X=20\n" +
   "Y=46\n" +
   "WIDTH=612\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50484326 613 1134", ""]
  $cmds << ["xdotool windowmove 50484326 20 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50454409",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50454409",
   "\n" +
   "xwininfo: Window id: 0x301df89 \n" +
   "\n" +
   "  Absolute upper-left X:  653\n" +
   "  Absolute upper-left Y:  430\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 612\n" +
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
   "  Corners:  +653+430  -655+430  -655-408  +653-408\n" +
   "  -geometry 61x18+653+430\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50454409 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50454409 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50454409",
   "WINDOW=50454409\n" +
   "X=653\n" +
   "Y=430\n" +
   "WIDTH=612\n" +
   "HEIGHT=362\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50454409 613 557", ""]
  $cmds << ["xdotool windowmove 50454409 653 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50336030",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50336030",
   "\n" +
   "xwininfo: Window id: 0x300111e \n" +
   "\n" +
   "  Absolute upper-left X:  653\n" +
   "  Absolute upper-left Y:  814\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 612\n" +
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
   "  Corners:  +653+814  -655+814  -655-24  +653-24\n" +
   "  -geometry 61x18+653-24\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50336030 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50336030 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50336030",
   "WINDOW=50336030\n" +
   "X=653\n" +
   "Y=814\n" +
   "WIDTH=612\n" +
   "HEIGHT=362\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50336030 613 557", ""]
  $cmds << ["xdotool windowmove 50336030 653 623", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50331699",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50331699",
   "\n" +
   "xwininfo: Window id: 0x3000033 \n" +
   "\n" +
   "  Absolute upper-left X:  653\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 612\n" +
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
   "  Corners:  +653+46  -655+46  -655-792  +653-792\n" +
   "  -geometry 61x18+653+46\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331699 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331699 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331699",
   "WINDOW=50331699\n" +
   "X=653\n" +
   "Y=46\n" +
   "WIDTH=612\n" +
   "HEIGHT=362\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331699 613 557", ""]
  $cmds << ["xdotool windowmove 50331699 1286 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50331713",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50331713",
   "\n" +
   "xwininfo: Window id: 0x3000041 \n" +
   "\n" +
   "  Absolute upper-left X:  1286\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 612\n" +
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
   "  Corners:  +1286+46  -22+46  -22-32  +1286-32\n" +
   "  -geometry 61x56-22-32\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331713 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331713 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331713",
   "WINDOW=50331713\n" +
   "X=1286\n" +
   "Y=46\n" +
   "WIDTH=612\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331713 613 557", ""]
  $cmds << ["xdotool windowmove 50331713 1286 623", ""]
  $cmds << ["wmctrl -ia 0x3000033", ""]

  process(m, :move_right)


  assert_eq m.current_tag, 0

  assert_eq m.tags, [{:columns=>[["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :old_columns=>
     [["50484326"], ["50331699", "50454409", "50336030"], ["50331713"]],
    :column_sizes=>[{:x=>20, :w=>613}, {:x=>653, :w=>613}, {:x=>1286, :w=>613}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil]},
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
  m.current_tag = 0
  m.tags =   [{:columns=>[["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :old_columns=>
     [["50484326"], ["50331699", "50454409", "50336030"], ["50331713"]],
    :column_sizes=>[{:x=>20, :w=>613}, {:x=>653, :w=>613}, {:x=>1286, :w=>613}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil]},
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x0302a6f9  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50331699\n"]
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
   "paralle+  804158  0.0  0.0   2308   836 pts/3    S+   16:22   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  804160  0.0  0.0   9016  1868 pts/3    S+   16:22   0:00 grep int2\n"]
  $cmds << ["xdotool getwindowname 50484326", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 50454409", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 50336030", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 50331713", "<redacted>\n"]
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
   "paralle+  804167  0.0  0.0   2308   840 pts/3    S+   16:22   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  804169  0.0  0.0   9016  1864 pts/3    S+   16:22   0:00 grep int2\n"]
  $cmds << ["wmctrl -ia 0x3025466", ""]
  $cmds << ["wmctrl -ia 0x301df89", ""]
  $cmds << ["wmctrl -ia 0x300111e", ""]
  $cmds << ["wmctrl -ia 0x3000041", ""]
  $cmds << ["wmctrl -ia 0x3000033", ""]
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
   "  Width: 613\n" +
   "  Height: 1134\n" +
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
   "  Corners:  +20+46  -1287+46  -1287-20  +20-20\n" +
   "  -geometry 61x56+20-20\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50484326 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50484326 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50484326",
   "WINDOW=50484326\n" +
   "X=20\n" +
   "Y=46\n" +
   "WIDTH=612\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50484326 455 1134", ""]
  $cmds << ["xdotool windowmove 50484326 20 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50454409",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50454409",
   "\n" +
   "xwininfo: Window id: 0x301df89 \n" +
   "\n" +
   "  Absolute upper-left X:  653\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 612\n" +
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
   "  Corners:  +653+46  -655+46  -655-612  +653-612\n" +
   "  -geometry 61x27+653+46\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50454409 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50454409 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50454409",
   "WINDOW=50454409\n" +
   "X=653\n" +
   "Y=46\n" +
   "WIDTH=612\n" +
   "HEIGHT=542\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50454409 455 557", ""]
  $cmds << ["xdotool windowmove 50454409 495 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50336030",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50336030",
   "\n" +
   "xwininfo: Window id: 0x300111e \n" +
   "\n" +
   "  Absolute upper-left X:  653\n" +
   "  Absolute upper-left Y:  623\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 612\n" +
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
   "  Corners:  +653+623  -655+623  -655-35  +653-35\n" +
   "  -geometry 61x27+653-35\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50336030 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50336030 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50336030",
   "WINDOW=50336030\n" +
   "X=653\n" +
   "Y=623\n" +
   "WIDTH=612\n" +
   "HEIGHT=542\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50336030 455 557", ""]
  $cmds << ["xdotool windowmove 50336030 495 623", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50331713",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50331713",
   "\n" +
   "xwininfo: Window id: 0x3000041 \n" +
   "\n" +
   "  Absolute upper-left X:  1286\n" +
   "  Absolute upper-left Y:  623\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 612\n" +
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
   "  Corners:  +1286+623  -22+623  -22-35  +1286-35\n" +
   "  -geometry 61x27-22-35\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331713 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331713 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331713",
   "WINDOW=50331713\n" +
   "X=1286\n" +
   "Y=623\n" +
   "WIDTH=612\n" +
   "HEIGHT=542\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331713 455 1134", ""]
  $cmds << ["xdotool windowmove 50331713 970 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50331699",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50331699",
   "\n" +
   "xwininfo: Window id: 0x3000033 \n" +
   "\n" +
   "  Absolute upper-left X:  1286\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 612\n" +
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
   "  Corners:  +1286+46  -22+46  -22-612  +1286-612\n" +
   "  -geometry 61x27-22+46\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331699 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331699 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331699",
   "WINDOW=50331699\n" +
   "X=1286\n" +
   "Y=46\n" +
   "WIDTH=612\n" +
   "HEIGHT=542\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331699 455 1134", ""]
  $cmds << ["xdotool windowmove 50331699 1445 46", ""]
  $cmds << ["wmctrl -ia 0x3000033", ""]

  process(m, :move_right)


  assert_eq m.current_tag, 0

  assert_eq m.tags, [{:columns=>
     [["50484326"], ["50454409", "50336030"], ["50331713"], ["50331699"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331713"], ["50331699"]],
    :column_sizes=>
     [{:x=>20, :w=>455},
      {:x=>495, :w=>455},
      {:x=>970, :w=>455},
      {:x=>1445, :w=>455}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil]},
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
  m.current_tag = 0
  m.tags =   [{:columns=>
     [["50484326"], ["50454409", "50336030"], ["50331713"], ["50331699"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331713"], ["50331699"]],
    :column_sizes=>
     [{:x=>20, :w=>455},
      {:x=>495, :w=>455},
      {:x=>970, :w=>455},
      {:x=>1445, :w=>455}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil]},
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x0302a6f9  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50331699\n"]
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
   "paralle+  804227  0.0  0.0   2308   836 pts/3    S+   16:22   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  804229  0.0  0.0   9016  1868 pts/3    R+   16:22   0:00 grep int2\n"]
  $cmds << ["xdotool getwindowname 50484326", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 50454409", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 50336030", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 50331699", "<redacted>\n"]
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
   "paralle+  804236  0.0  0.0   2308   840 pts/3    S+   16:22   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  804238  0.0  0.0   9016  1852 pts/3    R+   16:22   0:00 grep int2\n"]
  $cmds << ["wmctrl -ia 0x3025466", ""]
  $cmds << ["wmctrl -ia 0x301df89", ""]
  $cmds << ["wmctrl -ia 0x300111e", ""]
  $cmds << ["wmctrl -ia 0x3000033", ""]
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
   "  Width: 452\n" +
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
   "  Corners:  +20+46  -1448+46  -1448-32  +20-32\n" +
   "  -geometry 45x56+20-32\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50484326 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50484326 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50484326",
   "WINDOW=50484326\n" +
   "X=20\n" +
   "Y=46\n" +
   "WIDTH=452\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50484326 613 1134", ""]
  $cmds << ["xdotool windowmove 50484326 20 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50454409",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50454409",
   "\n" +
   "xwininfo: Window id: 0x301df89 \n" +
   "\n" +
   "  Absolute upper-left X:  495\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 452\n" +
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
   "  Corners:  +495+46  -973+46  -973-612  +495-612\n" +
   "  -geometry 45x27+495+46\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50454409 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50454409 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50454409",
   "WINDOW=50454409\n" +
   "X=495\n" +
   "Y=46\n" +
   "WIDTH=452\n" +
   "HEIGHT=542\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50454409 613 557", ""]
  $cmds << ["xdotool windowmove 50454409 653 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50336030",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50336030",
   "\n" +
   "xwininfo: Window id: 0x300111e \n" +
   "\n" +
   "  Absolute upper-left X:  495\n" +
   "  Absolute upper-left Y:  623\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 452\n" +
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
   "  Corners:  +495+623  -973+623  -973-35  +495-35\n" +
   "  -geometry 45x27+495-35\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50336030 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50336030 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50336030",
   "WINDOW=50336030\n" +
   "X=495\n" +
   "Y=623\n" +
   "WIDTH=452\n" +
   "HEIGHT=542\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50336030 613 557", ""]
  $cmds << ["xdotool windowmove 50336030 653 623", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50331699",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50331699",
   "\n" +
   "xwininfo: Window id: 0x3000033 \n" +
   "\n" +
   "  Absolute upper-left X:  1445\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 452\n" +
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
   "  Corners:  +1445+46  -23+46  -23-32  +1445-32\n" +
   "  -geometry 45x56-23-32\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331699 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331699 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331699",
   "WINDOW=50331699\n" +
   "X=1445\n" +
   "Y=46\n" +
   "WIDTH=452\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331699 613 557", ""]
  $cmds << ["xdotool windowmove 50331699 1286 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50331713",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50331713",
   "\n" +
   "xwininfo: Window id: 0x3000041 \n" +
   "\n" +
   "  Absolute upper-left X:  970\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 452\n" +
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
   "  Corners:  +970+46  -498+46  -498-32  +970-32\n" +
   "  -geometry 45x56+970-32\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331713 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331713 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331713",
   "WINDOW=50331713\n" +
   "X=970\n" +
   "Y=46\n" +
   "WIDTH=452\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331713 613 557", ""]
  $cmds << ["xdotool windowmove 50331713 1286 623", ""]
  $cmds << ["wmctrl -ia 0x3000033", ""]

  process(m, :move_left)


  assert_eq m.current_tag, 0

  assert_eq m.tags, [{:columns=>[["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>[{:x=>20, :w=>613}, {:x=>653, :w=>613}, {:x=>1286, :w=>613}],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
  m.current_tag = 0
  m.tags =   [{:columns=>[["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>[{:x=>20, :w=>613}, {:x=>653, :w=>613}, {:x=>1286, :w=>613}],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x0302a6f9  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50331699\n"]
  $cmds << ["wmctrl -ia 0x301df89", ""]

  process(m, :focus_left)


  assert_eq m.current_tag, 0

  assert_eq m.tags, [{:columns=>[["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>[{:x=>20, :w=>613}, {:x=>653, :w=>613}, {:x=>1286, :w=>613}],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
  m.current_tag = 0
  m.tags =   [{:columns=>[["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>[{:x=>20, :w=>613}, {:x=>653, :w=>613}, {:x=>1286, :w=>613}],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x0302a6f9  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50454409\n"]
  $cmds << ["xdotool getwindowname 50484326", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 50336030", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 50454409", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 50331699", "<redacted>\n"]
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
   "paralle+  804310  0.0  0.0   2308   836 pts/3    S+   16:22   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  804312  0.0  0.0   9016  1868 pts/3    S+   16:22   0:00 grep int2\n"]
  $cmds << ["wmctrl -ia 0x3025466", ""]
  $cmds << ["wmctrl -ia 0x300111e", ""]
  $cmds << ["wmctrl -ia 0x301df89", ""]
  $cmds << ["wmctrl -ia 0x3000033", ""]
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
   "  Width: 612\n" +
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
   "  Corners:  +20+46  -1288+46  -1288-32  +20-32\n" +
   "  -geometry 61x56+20-32\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50484326 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50484326 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50484326",
   "WINDOW=50484326\n" +
   "X=20\n" +
   "Y=46\n" +
   "WIDTH=612\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50484326 613 1134", ""]
  $cmds << ["xdotool windowmove 50484326 20 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50336030",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50336030",
   "\n" +
   "xwininfo: Window id: 0x300111e \n" +
   "\n" +
   "  Absolute upper-left X:  653\n" +
   "  Absolute upper-left Y:  623\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 612\n" +
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
   "  Corners:  +653+623  -655+623  -655-35  +653-35\n" +
   "  -geometry 61x27+653-35\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50336030 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50336030 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50336030",
   "WINDOW=50336030\n" +
   "X=653\n" +
   "Y=623\n" +
   "WIDTH=612\n" +
   "HEIGHT=542\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50336030 613 1134", ""]
  $cmds << ["xdotool windowmove 50336030 653 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50454409",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50454409",
   "\n" +
   "xwininfo: Window id: 0x301df89 \n" +
   "\n" +
   "  Absolute upper-left X:  653\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 612\n" +
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
   "  Corners:  +653+46  -655+46  -655-612  +653-612\n" +
   "  -geometry 61x27+653+46\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50454409 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50454409 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50454409",
   "WINDOW=50454409\n" +
   "X=653\n" +
   "Y=46\n" +
   "WIDTH=612\n" +
   "HEIGHT=542\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50454409 613 364", ""]
  $cmds << ["xdotool windowmove 50454409 1286 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50331699",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50331699",
   "\n" +
   "xwininfo: Window id: 0x3000033 \n" +
   "\n" +
   "  Absolute upper-left X:  1286\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 612\n" +
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
   "  Corners:  +1286+46  -22+46  -22-612  +1286-612\n" +
   "  -geometry 61x27-22+46\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331699 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331699 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331699",
   "WINDOW=50331699\n" +
   "X=1286\n" +
   "Y=46\n" +
   "WIDTH=612\n" +
   "HEIGHT=542\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331699 613 364", ""]
  $cmds << ["xdotool windowmove 50331699 1286 430", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50331713",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50331713",
   "\n" +
   "xwininfo: Window id: 0x3000041 \n" +
   "\n" +
   "  Absolute upper-left X:  1286\n" +
   "  Absolute upper-left Y:  623\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 612\n" +
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
   "  Corners:  +1286+623  -22+623  -22-35  +1286-35\n" +
   "  -geometry 61x27-22-35\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331713 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331713 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331713",
   "WINDOW=50331713\n" +
   "X=1286\n" +
   "Y=623\n" +
   "WIDTH=612\n" +
   "HEIGHT=542\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331713 613 364", ""]
  $cmds << ["xdotool windowmove 50331713 1286 814", ""]
  $cmds << ["wmctrl -ia 0x301df89", ""]

  process(m, :move_right)


  assert_eq m.current_tag, 0

  assert_eq m.tags, [{:columns=>[["50484326"], ["50336030"], ["50454409", "50331699", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>[{:x=>20, :w=>613}, {:x=>653, :w=>613}, {:x=>1286, :w=>613}],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
  m.current_tag = 0
  m.tags =   [{:columns=>[["50484326"], ["50336030"], ["50454409", "50331699", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>[{:x=>20, :w=>613}, {:x=>653, :w=>613}, {:x=>1286, :w=>613}],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x0302a6f9  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50454409\n"]
  $cmds << ["wmctrl -ia 0x3000033", ""]

  process(m, :focus_down)


  assert_eq m.current_tag, 0

  assert_eq m.tags, [{:columns=>[["50484326"], ["50336030"], ["50454409", "50331699", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>[{:x=>20, :w=>613}, {:x=>653, :w=>613}, {:x=>1286, :w=>613}],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
  m.current_tag = 0
  m.tags =   [{:columns=>[["50484326"], ["50336030"], ["50454409", "50331699", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>[{:x=>20, :w=>613}, {:x=>653, :w=>613}, {:x=>1286, :w=>613}],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x0302a6f9  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50331699\n"]
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
   "paralle+  804393  0.0  0.0   2308   816 pts/3    S+   16:22   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  804395  0.0  0.0   9016  1864 pts/3    S+   16:22   0:00 grep int2\n"]
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
   "  Width: 613\n" +
   "  Height: 1134\n" +
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
   "  Corners:  +20+46  -1287+46  -1287-20  +20-20\n" +
   "  -geometry 61x56+20-20\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50484326 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50484326 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50484326",
   "WINDOW=50484326\n" +
   "X=20\n" +
   "Y=46\n" +
   "WIDTH=612\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50484326 613 1134", ""]
  $cmds << ["xdotool windowmove 50484326 20 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50331699",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50331699",
   "\n" +
   "xwininfo: Window id: 0x3000033 \n" +
   "\n" +
   "  Absolute upper-left X:  1286\n" +
   "  Absolute upper-left Y:  430\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 612\n" +
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
   "  Corners:  +1286+430  -22+430  -22-408  +1286-408\n" +
   "  -geometry 61x18-22+430\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331699 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331699 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331699",
   "WINDOW=50331699\n" +
   "X=1286\n" +
   "Y=430\n" +
   "WIDTH=612\n" +
   "HEIGHT=362\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331699 613 557", ""]
  $cmds << ["xdotool windowmove 50331699 653 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50336030",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50336030",
   "\n" +
   "xwininfo: Window id: 0x300111e \n" +
   "\n" +
   "  Absolute upper-left X:  653\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 612\n" +
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
   "  Corners:  +653+46  -655+46  -655-32  +653-32\n" +
   "  -geometry 61x56+653-32\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50336030 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50336030 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50336030",
   "WINDOW=50336030\n" +
   "X=653\n" +
   "Y=46\n" +
   "WIDTH=612\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50336030 613 557", ""]
  $cmds << ["xdotool windowmove 50336030 653 623", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50454409",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50454409",
   "\n" +
   "xwininfo: Window id: 0x301df89 \n" +
   "\n" +
   "  Absolute upper-left X:  1286\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 612\n" +
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
   "  Corners:  +1286+46  -22+46  -22-792  +1286-792\n" +
   "  -geometry 61x18-22+46\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50454409 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50454409 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50454409",
   "WINDOW=50454409\n" +
   "X=1286\n" +
   "Y=46\n" +
   "WIDTH=1920\n" +
   "HEIGHT=1200\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50454409 613 557", ""]
  $cmds << ["xdotool windowmove 50454409 1286 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50331713",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50331713",
   "\n" +
   "xwininfo: Window id: 0x3000041 \n" +
   "\n" +
   "  Absolute upper-left X:  1286\n" +
   "  Absolute upper-left Y:  814\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 612\n" +
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
   "  Corners:  +1286+814  -22+814  -22-24  +1286-24\n" +
   "  -geometry 61x18-22-24\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331713 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331713 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331713",
   "WINDOW=50331713\n" +
   "X=1286\n" +
   "Y=814\n" +
   "WIDTH=612\n" +
   "HEIGHT=362\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331713 613 557", ""]
  $cmds << ["xdotool windowmove 50331713 1286 623", ""]
  $cmds << ["wmctrl -ia 0x3000033", ""]

  process(m, :move_left)


  assert_eq m.current_tag, 0

  assert_eq m.tags, [{:columns=>[["50484326"], ["50331699", "50336030"], ["50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>[{:x=>20, :w=>613}, {:x=>653, :w=>613}, {:x=>1286, :w=>613}],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
  m.current_tag = 0
  m.tags =   [{:columns=>[["50484326"], ["50331699", "50336030"], ["50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>[{:x=>20, :w=>613}, {:x=>653, :w=>613}, {:x=>1286, :w=>613}],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x0302a6f9  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50331699\n"]
  $cmds << ["wmctrl -ia 0x300111e", ""]

  process(m, :focus_down)


  assert_eq m.current_tag, 0

  assert_eq m.tags, [{:columns=>[["50484326"], ["50331699", "50336030"], ["50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>[{:x=>20, :w=>613}, {:x=>653, :w=>613}, {:x=>1286, :w=>613}],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
  m.current_tag = 0
  m.tags =   [{:columns=>[["50484326"], ["50331699", "50336030"], ["50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>[{:x=>20, :w=>613}, {:x=>653, :w=>613}, {:x=>1286, :w=>613}],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x0302a6f9  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50336030\n"]
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
   "paralle+  804462  0.0  0.0   2308   832 pts/3    S+   16:22   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  804464  0.0  0.0   9016  1868 pts/3    S+   16:22   0:00 grep int2\n"]
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
   "  Width: 613\n" +
   "  Height: 1134\n" +
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
   "  Corners:  +20+46  -1287+46  -1287-20  +20-20\n" +
   "  -geometry 61x56+20-20\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50484326 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50484326 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50484326",
   "WINDOW=50484326\n" +
   "X=20\n" +
   "Y=46\n" +
   "WIDTH=612\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50484326 613 1134", ""]
  $cmds << ["xdotool windowmove 50484326 20 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50331699",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50331699",
   "\n" +
   "xwininfo: Window id: 0x3000033 \n" +
   "\n" +
   "  Absolute upper-left X:  653\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 612\n" +
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
   "  Corners:  +653+46  -655+46  -655-612  +653-612\n" +
   "  -geometry 61x27+653+46\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331699 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331699 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331699",
   "WINDOW=50331699\n" +
   "X=653\n" +
   "Y=46\n" +
   "WIDTH=612\n" +
   "HEIGHT=542\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331699 613 1134", ""]
  $cmds << ["xdotool windowmove 50331699 653 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50336030",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50336030",
   "\n" +
   "xwininfo: Window id: 0x300111e \n" +
   "\n" +
   "  Absolute upper-left X:  653\n" +
   "  Absolute upper-left Y:  623\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 612\n" +
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
   "  Corners:  +653+623  -655+623  -655-35  +653-35\n" +
   "  -geometry 61x27+653-35\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50336030 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50336030 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50336030",
   "WINDOW=50336030\n" +
   "X=653\n" +
   "Y=623\n" +
   "WIDTH=612\n" +
   "HEIGHT=542\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50336030 613 364", ""]
  $cmds << ["xdotool windowmove 50336030 1286 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50454409",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50454409",
   "\n" +
   "xwininfo: Window id: 0x301df89 \n" +
   "\n" +
   "  Absolute upper-left X:  1286\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 612\n" +
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
   "  Corners:  +1286+46  -22+46  -22-612  +1286-612\n" +
   "  -geometry 61x27-22+46\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50454409 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50454409 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50454409",
   "WINDOW=50454409\n" +
   "X=1286\n" +
   "Y=46\n" +
   "WIDTH=612\n" +
   "HEIGHT=542\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50454409 613 364", ""]
  $cmds << ["xdotool windowmove 50454409 1286 430", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50331713",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50331713",
   "\n" +
   "xwininfo: Window id: 0x3000041 \n" +
   "\n" +
   "  Absolute upper-left X:  1286\n" +
   "  Absolute upper-left Y:  623\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 612\n" +
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
   "  Corners:  +1286+623  -22+623  -22-35  +1286-35\n" +
   "  -geometry 61x27-22-35\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331713 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331713 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331713",
   "WINDOW=50331713\n" +
   "X=1286\n" +
   "Y=623\n" +
   "WIDTH=612\n" +
   "HEIGHT=542\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331713 613 364", ""]
  $cmds << ["xdotool windowmove 50331713 1286 814", ""]
  $cmds << ["wmctrl -ia 0x300111e", ""]

  process(m, :move_right)


  assert_eq m.current_tag, 0

  assert_eq m.tags, [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>[{:x=>20, :w=>613}, {:x=>653, :w=>613}, {:x=>1286, :w=>613}],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
  m.current_tag = 0
  m.tags =   [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>[{:x=>20, :w=>613}, {:x=>653, :w=>613}, {:x=>1286, :w=>613}],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x0302a6f9  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50336030\n"]
  $cmds << ["wmctrl -ia 0x3000033", ""]

  process(m, :focus_left)


  assert_eq m.current_tag, 0

  assert_eq m.tags, [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>[{:x=>20, :w=>613}, {:x=>653, :w=>613}, {:x=>1286, :w=>613}],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
  m.current_tag = 0
  m.tags =   [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>[{:x=>20, :w=>613}, {:x=>653, :w=>613}, {:x=>1286, :w=>613}],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x0302a6f9  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50331699\n"]
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
   "paralle+  804566  0.0  0.0   2308   836 pts/3    S+   16:22   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  804568  0.0  0.0   9016  1868 pts/3    S+   16:22   0:00 grep int2\n"]
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
   "  Width: 613\n" +
   "  Height: 1134\n" +
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
   "  Corners:  +20+46  -1287+46  -1287-20  +20-20\n" +
   "  -geometry 61x56+20-20\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50484326 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50484326 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50484326",
   "WINDOW=50484326\n" +
   "X=20\n" +
   "Y=46\n" +
   "WIDTH=612\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50484326 613 1134", ""]
  $cmds << ["xdotool windowmove 50484326 20 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50331699",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50331699",
   "\n" +
   "xwininfo: Window id: 0x3000033 \n" +
   "\n" +
   "  Absolute upper-left X:  653\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 612\n" +
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
   "  Corners:  +653+46  -655+46  -655-32  +653-32\n" +
   "  -geometry 61x56+653-32\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331699 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331699 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331699",
   "WINDOW=50331699\n" +
   "X=653\n" +
   "Y=46\n" +
   "WIDTH=612\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331699 663 1134", ""]
  $cmds << ["xdotool windowmove 50331699 653 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50336030",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50336030",
   "\n" +
   "xwininfo: Window id: 0x300111e \n" +
   "\n" +
   "  Absolute upper-left X:  1286\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 612\n" +
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
   "  Corners:  +1286+46  -22+46  -22-792  +1286-792\n" +
   "  -geometry 61x18-22+46\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50336030 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50336030 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50336030",
   "WINDOW=50336030\n" +
   "X=1286\n" +
   "Y=46\n" +
   "WIDTH=612\n" +
   "HEIGHT=362\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50336030 563 364", ""]
  $cmds << ["xdotool windowmove 50336030 1336 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50454409",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50454409",
   "\n" +
   "xwininfo: Window id: 0x301df89 \n" +
   "\n" +
   "  Absolute upper-left X:  1286\n" +
   "  Absolute upper-left Y:  430\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 612\n" +
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
   "  Corners:  +1286+430  -22+430  -22-408  +1286-408\n" +
   "  -geometry 61x18-22+430\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50454409 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50454409 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50454409",
   "WINDOW=50454409\n" +
   "X=1286\n" +
   "Y=430\n" +
   "WIDTH=612\n" +
   "HEIGHT=362\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50454409 563 364", ""]
  $cmds << ["xdotool windowmove 50454409 1336 430", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50331713",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50331713",
   "\n" +
   "xwininfo: Window id: 0x3000041 \n" +
   "\n" +
   "  Absolute upper-left X:  1286\n" +
   "  Absolute upper-left Y:  814\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 612\n" +
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
   "  Corners:  +1286+814  -22+814  -22-24  +1286-24\n" +
   "  -geometry 61x18-22-24\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331713 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331713 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331713",
   "WINDOW=50331713\n" +
   "X=1286\n" +
   "Y=814\n" +
   "WIDTH=612\n" +
   "HEIGHT=362\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331713 563 364", ""]
  $cmds << ["xdotool windowmove 50331713 1336 814", ""]
  $cmds << ["wmctrl -ia 0x3000033", ""]

  process(m, :expand_right)


  assert_eq m.current_tag, 0

  assert_eq m.tags, [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>[{:x=>20, :w=>613}, {:x=>653, :w=>663}, {:x=>1336, :w=>563}],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
  m.current_tag = 0
  m.tags =   [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>[{:x=>20, :w=>613}, {:x=>653, :w=>663}, {:x=>1336, :w=>563}],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x0302a6f9  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50331699\n"]
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
   "paralle+  804626  0.0  0.0   2308   836 pts/3    S+   16:22   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  804628  0.0  0.0   9016  1868 pts/3    S+   16:22   0:00 grep int2\n"]
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
   "  Width: 613\n" +
   "  Height: 1134\n" +
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
   "  Corners:  +20+46  -1287+46  -1287-20  +20-20\n" +
   "  -geometry 61x56+20-20\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50484326 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50484326 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50484326",
   "WINDOW=50484326\n" +
   "X=20\n" +
   "Y=46\n" +
   "WIDTH=612\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50484326 613 1134", ""]
  $cmds << ["xdotool windowmove 50484326 20 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50331699",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50331699",
   "\n" +
   "xwininfo: Window id: 0x3000033 \n" +
   "\n" +
   "  Absolute upper-left X:  653\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 662\n" +
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
   "  Corners:  +653+46  -605+46  -605-32  +653-32\n" +
   "  -geometry 66x56+653-32\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331699 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331699 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331699",
   "WINDOW=50331699\n" +
   "X=653\n" +
   "Y=46\n" +
   "WIDTH=662\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331699 713 1134", ""]
  $cmds << ["xdotool windowmove 50331699 653 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50336030",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50336030",
   "\n" +
   "xwininfo: Window id: 0x300111e \n" +
   "\n" +
   "  Absolute upper-left X:  1336\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 562\n" +
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
   "  Corners:  +1336+46  -22+46  -22-792  +1336-792\n" +
   "  -geometry 56x18-22+46\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50336030 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50336030 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50336030",
   "WINDOW=50336030\n" +
   "X=1336\n" +
   "Y=46\n" +
   "WIDTH=562\n" +
   "HEIGHT=362\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50336030 513 364", ""]
  $cmds << ["xdotool windowmove 50336030 1386 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50454409",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50454409",
   "\n" +
   "xwininfo: Window id: 0x301df89 \n" +
   "\n" +
   "  Absolute upper-left X:  1336\n" +
   "  Absolute upper-left Y:  430\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 562\n" +
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
   "  Corners:  +1336+430  -22+430  -22-408  +1336-408\n" +
   "  -geometry 56x18-22+430\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50454409 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50454409 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50454409",
   "WINDOW=50454409\n" +
   "X=1336\n" +
   "Y=430\n" +
   "WIDTH=562\n" +
   "HEIGHT=362\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50454409 513 364", ""]
  $cmds << ["xdotool windowmove 50454409 1386 430", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50331713",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50331713",
   "\n" +
   "xwininfo: Window id: 0x3000041 \n" +
   "\n" +
   "  Absolute upper-left X:  1336\n" +
   "  Absolute upper-left Y:  814\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 562\n" +
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
   "  Corners:  +1336+814  -22+814  -22-24  +1336-24\n" +
   "  -geometry 56x18-22-24\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331713 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331713 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331713",
   "WINDOW=50331713\n" +
   "X=1336\n" +
   "Y=814\n" +
   "WIDTH=562\n" +
   "HEIGHT=362\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331713 513 364", ""]
  $cmds << ["xdotool windowmove 50331713 1386 814", ""]
  $cmds << ["wmctrl -ia 0x3000033", ""]

  process(m, :expand_right)


  assert_eq m.current_tag, 0

  assert_eq m.tags, [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>[{:x=>20, :w=>613}, {:x=>653, :w=>713}, {:x=>1386, :w=>513}],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
  m.current_tag = 0
  m.tags =   [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>[{:x=>20, :w=>613}, {:x=>653, :w=>713}, {:x=>1386, :w=>513}],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x0302a6f9  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50331699\n"]
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
   "paralle+  804683  0.0  0.0   2308   836 pts/3    S+   16:22   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  804685  0.0  0.0   9016  1864 pts/3    S+   16:22   0:00 grep int2\n"]
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
   "  Width: 613\n" +
   "  Height: 1134\n" +
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
   "  Corners:  +20+46  -1287+46  -1287-20  +20-20\n" +
   "  -geometry 61x56+20-20\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50484326 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50484326 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50484326",
   "WINDOW=50484326\n" +
   "X=20\n" +
   "Y=46\n" +
   "WIDTH=612\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50484326 613 1134", ""]
  $cmds << ["xdotool windowmove 50484326 20 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50331699",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50331699",
   "\n" +
   "xwininfo: Window id: 0x3000033 \n" +
   "\n" +
   "  Absolute upper-left X:  653\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 712\n" +
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
   "  Corners:  +653+46  -555+46  -555-32  +653-32\n" +
   "  -geometry 71x56+653-32\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331699 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331699 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331699",
   "WINDOW=50331699\n" +
   "X=653\n" +
   "Y=46\n" +
   "WIDTH=712\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331699 763 1134", ""]
  $cmds << ["xdotool windowmove 50331699 653 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50336030",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50336030",
   "\n" +
   "xwininfo: Window id: 0x300111e \n" +
   "\n" +
   "  Absolute upper-left X:  1386\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 512\n" +
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
   "  Corners:  +1386+46  -22+46  -22-792  +1386-792\n" +
   "  -geometry 51x18-22+46\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50336030 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50336030 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50336030",
   "WINDOW=50336030\n" +
   "X=1386\n" +
   "Y=46\n" +
   "WIDTH=512\n" +
   "HEIGHT=362\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50336030 463 364", ""]
  $cmds << ["xdotool windowmove 50336030 1436 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50454409",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50454409",
   "\n" +
   "xwininfo: Window id: 0x301df89 \n" +
   "\n" +
   "  Absolute upper-left X:  1386\n" +
   "  Absolute upper-left Y:  430\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 512\n" +
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
   "  Corners:  +1386+430  -22+430  -22-408  +1386-408\n" +
   "  -geometry 51x18-22+430\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50454409 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50454409 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50454409",
   "WINDOW=50454409\n" +
   "X=1386\n" +
   "Y=430\n" +
   "WIDTH=512\n" +
   "HEIGHT=362\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50454409 463 364", ""]
  $cmds << ["xdotool windowmove 50454409 1436 430", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50331713",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50331713",
   "\n" +
   "xwininfo: Window id: 0x3000041 \n" +
   "\n" +
   "  Absolute upper-left X:  1386\n" +
   "  Absolute upper-left Y:  814\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 512\n" +
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
   "  Corners:  +1386+814  -22+814  -22-24  +1386-24\n" +
   "  -geometry 51x18-22-24\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331713 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331713 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331713",
   "WINDOW=50331713\n" +
   "X=1386\n" +
   "Y=814\n" +
   "WIDTH=512\n" +
   "HEIGHT=362\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331713 463 364", ""]
  $cmds << ["xdotool windowmove 50331713 1436 814", ""]
  $cmds << ["wmctrl -ia 0x3000033", ""]

  process(m, :expand_right)


  assert_eq m.current_tag, 0

  assert_eq m.tags, [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>[{:x=>20, :w=>613}, {:x=>653, :w=>763}, {:x=>1436, :w=>463}],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
  m.current_tag = 0
  m.tags =   [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>[{:x=>20, :w=>613}, {:x=>653, :w=>763}, {:x=>1436, :w=>463}],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x0302a6f9  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50331699\n"]
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
   "paralle+  804744  0.0  0.0   2308   836 pts/3    S+   16:22   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  804746  0.0  0.0   9016  1868 pts/3    S+   16:22   0:00 grep int2\n"]
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
   "  Width: 613\n" +
   "  Height: 1134\n" +
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
   "  Corners:  +20+46  -1287+46  -1287-20  +20-20\n" +
   "  -geometry 61x56+20-20\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50484326 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50484326 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50484326",
   "WINDOW=50484326\n" +
   "X=20\n" +
   "Y=46\n" +
   "WIDTH=612\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50484326 563 1134", ""]
  $cmds << ["xdotool windowmove 50484326 20 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50331699",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50331699",
   "\n" +
   "xwininfo: Window id: 0x3000033 \n" +
   "\n" +
   "  Absolute upper-left X:  653\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 762\n" +
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
   "  Corners:  +653+46  -505+46  -505-32  +653-32\n" +
   "  -geometry 76x56+653-32\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331699 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331699 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331699",
   "WINDOW=50331699\n" +
   "X=653\n" +
   "Y=46\n" +
   "WIDTH=762\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331699 813 1134", ""]
  $cmds << ["xdotool windowmove 50331699 603 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50336030",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50336030",
   "\n" +
   "xwininfo: Window id: 0x300111e \n" +
   "\n" +
   "  Absolute upper-left X:  1436\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 462\n" +
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
   "  Corners:  +1436+46  -22+46  -22-792  +1436-792\n" +
   "  -geometry 46x18-22+46\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50336030 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50336030 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50336030",
   "WINDOW=50336030\n" +
   "X=1436\n" +
   "Y=46\n" +
   "WIDTH=462\n" +
   "HEIGHT=362\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50336030 463 364", ""]
  $cmds << ["xdotool windowmove 50336030 1436 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50454409",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50454409",
   "\n" +
   "xwininfo: Window id: 0x301df89 \n" +
   "\n" +
   "  Absolute upper-left X:  1436\n" +
   "  Absolute upper-left Y:  430\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 462\n" +
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
   "  Corners:  +1436+430  -22+430  -22-408  +1436-408\n" +
   "  -geometry 46x18-22+430\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50454409 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50454409 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50454409",
   "WINDOW=50454409\n" +
   "X=1436\n" +
   "Y=430\n" +
   "WIDTH=462\n" +
   "HEIGHT=362\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50454409 463 364", ""]
  $cmds << ["xdotool windowmove 50454409 1436 430", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50331713",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50331713",
   "\n" +
   "xwininfo: Window id: 0x3000041 \n" +
   "\n" +
   "  Absolute upper-left X:  1436\n" +
   "  Absolute upper-left Y:  814\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 462\n" +
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
   "  Corners:  +1436+814  -22+814  -22-24  +1436-24\n" +
   "  -geometry 46x18-22-24\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331713 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331713 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331713",
   "WINDOW=50331713\n" +
   "X=1436\n" +
   "Y=814\n" +
   "WIDTH=462\n" +
   "HEIGHT=362\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331713 463 364", ""]
  $cmds << ["xdotool windowmove 50331713 1436 814", ""]
  $cmds << ["wmctrl -ia 0x3000033", ""]

  process(m, :expand_left)


  assert_eq m.current_tag, 0

  assert_eq m.tags, [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>[{:x=>20, :w=>563}, {:x=>603, :w=>813}, {:x=>1436, :w=>463}],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
  m.current_tag = 0
  m.tags =   [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>[{:x=>20, :w=>563}, {:x=>603, :w=>813}, {:x=>1436, :w=>463}],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x0302a6f9  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50331699\n"]
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
   "paralle+  804809  0.0  0.0   2308   836 pts/3    S+   16:22   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  804811  0.0  0.0   9016  1848 pts/3    S+   16:22   0:00 grep int2\n"]
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
   "  Width: 562\n" +
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
   "  Corners:  +20+46  -1338+46  -1338-32  +20-32\n" +
   "  -geometry 56x56+20-32\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50484326 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50484326 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50484326",
   "WINDOW=50484326\n" +
   "X=20\n" +
   "Y=46\n" +
   "WIDTH=562\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50484326 563 1134", ""]
  $cmds << ["xdotool windowmove 50484326 20 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50331699",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50331699",
   "\n" +
   "xwininfo: Window id: 0x3000033 \n" +
   "\n" +
   "  Absolute upper-left X:  603\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 812\n" +
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
   "  Corners:  +603+46  -505+46  -505-32  +603-32\n" +
   "  -geometry 81x56+603-32\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331699 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331699 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331699",
   "WINDOW=50331699\n" +
   "X=603\n" +
   "Y=46\n" +
   "WIDTH=812\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331699 863 1134", ""]
  $cmds << ["xdotool windowmove 50331699 603 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50336030",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50336030",
   "\n" +
   "xwininfo: Window id: 0x300111e \n" +
   "\n" +
   "  Absolute upper-left X:  1436\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 463\n" +
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
   "  Corners:  +1436+46  -21+46  -21-790  +1436-790\n" +
   "  -geometry 46x18-21+46\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50336030 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50336030 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50336030",
   "WINDOW=50336030\n" +
   "X=1436\n" +
   "Y=46\n" +
   "WIDTH=462\n" +
   "HEIGHT=362\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50336030 413 364", ""]
  $cmds << ["xdotool windowmove 50336030 1486 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50454409",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50454409",
   "\n" +
   "xwininfo: Window id: 0x301df89 \n" +
   "\n" +
   "  Absolute upper-left X:  1436\n" +
   "  Absolute upper-left Y:  430\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 463\n" +
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
   "  Corners:  +1436+430  -21+430  -21-406  +1436-406\n" +
   "  -geometry 46x18-21+430\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50454409 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50454409 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50454409",
   "WINDOW=50454409\n" +
   "X=1436\n" +
   "Y=430\n" +
   "WIDTH=462\n" +
   "HEIGHT=362\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50454409 413 364", ""]
  $cmds << ["xdotool windowmove 50454409 1486 430", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50331713",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50331713",
   "\n" +
   "xwininfo: Window id: 0x3000041 \n" +
   "\n" +
   "  Absolute upper-left X:  1436\n" +
   "  Absolute upper-left Y:  814\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 462\n" +
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
   "  Corners:  +1436+814  -22+814  -22-24  +1436-24\n" +
   "  -geometry 46x18-22-24\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331713 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331713 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331713",
   "WINDOW=50331713\n" +
   "X=1436\n" +
   "Y=814\n" +
   "WIDTH=462\n" +
   "HEIGHT=362\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331713 413 364", ""]
  $cmds << ["xdotool windowmove 50331713 1486 814", ""]
  $cmds << ["wmctrl -ia 0x3000033", ""]

  process(m, :expand_right)


  assert_eq m.current_tag, 0

  assert_eq m.tags, [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>[{:x=>20, :w=>563}, {:x=>603, :w=>863}, {:x=>1486, :w=>413}],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
  m.current_tag = 0
  m.tags =   [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>[{:x=>20, :w=>563}, {:x=>603, :w=>863}, {:x=>1486, :w=>413}],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x0302a6f9  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50331699\n"]
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
   "paralle+  804866  0.0  0.0   2308   836 pts/3    S+   16:22   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  804868  0.0  0.0   9016  1868 pts/3    S+   16:22   0:00 grep int2\n"]
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
   "  Width: 563\n" +
   "  Height: 1134\n" +
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
   "  Corners:  +20+46  -1337+46  -1337-20  +20-20\n" +
   "  -geometry 56x56+20-20\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50484326 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50484326 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50484326",
   "WINDOW=50484326\n" +
   "X=20\n" +
   "Y=46\n" +
   "WIDTH=562\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50484326 563 1134", ""]
  $cmds << ["xdotool windowmove 50484326 20 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50331699",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50331699",
   "\n" +
   "xwininfo: Window id: 0x3000033 \n" +
   "\n" +
   "  Absolute upper-left X:  603\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 862\n" +
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
   "  Corners:  +603+46  -455+46  -455-32  +603-32\n" +
   "  -geometry 86x56+603-32\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331699 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331699 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331699",
   "WINDOW=50331699\n" +
   "X=603\n" +
   "Y=46\n" +
   "WIDTH=862\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331699 913 1134", ""]
  $cmds << ["xdotool windowmove 50331699 603 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50336030",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50336030",
   "\n" +
   "xwininfo: Window id: 0x300111e \n" +
   "\n" +
   "  Absolute upper-left X:  1486\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 412\n" +
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
   "  Corners:  +1486+46  -22+46  -22-792  +1486-792\n" +
   "  -geometry 41x18-22+46\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50336030 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50336030 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50336030",
   "WINDOW=50336030\n" +
   "X=1486\n" +
   "Y=46\n" +
   "WIDTH=412\n" +
   "HEIGHT=362\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50336030 363 364", ""]
  $cmds << ["xdotool windowmove 50336030 1536 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50454409",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50454409",
   "\n" +
   "xwininfo: Window id: 0x301df89 \n" +
   "\n" +
   "  Absolute upper-left X:  1486\n" +
   "  Absolute upper-left Y:  430\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 412\n" +
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
   "  Corners:  +1486+430  -22+430  -22-408  +1486-408\n" +
   "  -geometry 41x18-22+430\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50454409 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50454409 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50454409",
   "WINDOW=50454409\n" +
   "X=1486\n" +
   "Y=430\n" +
   "WIDTH=412\n" +
   "HEIGHT=362\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50454409 363 364", ""]
  $cmds << ["xdotool windowmove 50454409 1536 430", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50331713",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50331713",
   "\n" +
   "xwininfo: Window id: 0x3000041 \n" +
   "\n" +
   "  Absolute upper-left X:  1486\n" +
   "  Absolute upper-left Y:  814\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 412\n" +
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
   "  Corners:  +1486+814  -22+814  -22-24  +1486-24\n" +
   "  -geometry 41x18-22-24\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331713 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331713 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331713",
   "WINDOW=50331713\n" +
   "X=1486\n" +
   "Y=814\n" +
   "WIDTH=412\n" +
   "HEIGHT=362\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331713 363 364", ""]
  $cmds << ["xdotool windowmove 50331713 1536 814", ""]
  $cmds << ["wmctrl -ia 0x3000033", ""]

  process(m, :expand_right)


  assert_eq m.current_tag, 0

  assert_eq m.tags, [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>[{:x=>20, :w=>563}, {:x=>603, :w=>913}, {:x=>1536, :w=>363}],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
  m.current_tag = 0
  m.tags =   [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>[{:x=>20, :w=>563}, {:x=>603, :w=>913}, {:x=>1536, :w=>363}],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x0302a6f9  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50331699\n"]
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
   "paralle+  804926  0.0  0.0   2308   816 pts/3    S+   16:22   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  804928  0.0  0.0   9016  1868 pts/3    S+   16:22   0:00 grep int2\n"]
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
   "  Width: 563\n" +
   "  Height: 1134\n" +
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
   "  Corners:  +20+46  -1337+46  -1337-20  +20-20\n" +
   "  -geometry 56x56+20-20\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50484326 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50484326 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50484326",
   "WINDOW=50484326\n" +
   "X=20\n" +
   "Y=46\n" +
   "WIDTH=562\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50484326 563 1134", ""]
  $cmds << ["xdotool windowmove 50484326 20 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50331699",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50331699",
   "\n" +
   "xwininfo: Window id: 0x3000033 \n" +
   "\n" +
   "  Absolute upper-left X:  603\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 912\n" +
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
   "  Corners:  +603+46  -405+46  -405-32  +603-32\n" +
   "  -geometry 91x56+603-32\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331699 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331699 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331699",
   "WINDOW=50331699\n" +
   "X=603\n" +
   "Y=46\n" +
   "WIDTH=912\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331699 963 1134", ""]
  $cmds << ["xdotool windowmove 50331699 603 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50336030",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50336030",
   "\n" +
   "xwininfo: Window id: 0x300111e \n" +
   "\n" +
   "  Absolute upper-left X:  1536\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 362\n" +
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
   "  Corners:  +1536+46  -22+46  -22-792  +1536-792\n" +
   "  -geometry 36x18-22+46\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50336030 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50336030 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50336030",
   "WINDOW=50336030\n" +
   "X=1536\n" +
   "Y=46\n" +
   "WIDTH=362\n" +
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
   "  Absolute upper-left X:  1536\n" +
   "  Absolute upper-left Y:  430\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 362\n" +
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
   "  Corners:  +1536+430  -22+430  -22-408  +1536-408\n" +
   "  -geometry 36x18-22+430\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50454409 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50454409 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50454409",
   "WINDOW=50454409\n" +
   "X=1536\n" +
   "Y=430\n" +
   "WIDTH=362\n" +
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
   "  Absolute upper-left X:  1536\n" +
   "  Absolute upper-left Y:  814\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 362\n" +
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
   "  Corners:  +1536+814  -22+814  -22-24  +1536-24\n" +
   "  -geometry 36x18-22-24\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331713 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331713 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331713",
   "WINDOW=50331713\n" +
   "X=1536\n" +
   "Y=814\n" +
   "WIDTH=362\n" +
   "HEIGHT=362\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331713 313 364", ""]
  $cmds << ["xdotool windowmove 50331713 1586 814", ""]
  $cmds << ["wmctrl -ia 0x3000033", ""]

  process(m, :expand_right)


  assert_eq m.current_tag, 0

  assert_eq m.tags, [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>[{:x=>20, :w=>563}, {:x=>603, :w=>963}, {:x=>1586, :w=>313}],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
  m.current_tag = 0
  m.tags =   [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>[{:x=>20, :w=>563}, {:x=>603, :w=>963}, {:x=>1586, :w=>313}],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x0302a6f9  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50331699\n"]
  $cmds << ["wmctrl -ia 0x3025466", ""]

  process(m, :focus_left)


  assert_eq m.current_tag, 0

  assert_eq m.tags, [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>[{:x=>20, :w=>563}, {:x=>603, :w=>963}, {:x=>1586, :w=>313}],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
  m.current_tag = 0
  m.tags =   [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>[{:x=>20, :w=>563}, {:x=>603, :w=>963}, {:x=>1586, :w=>313}],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x0302a6f9  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50484326\n"]
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
   "paralle+  804995  0.0  0.0   2308   836 pts/3    S+   16:22   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  804997  0.0  0.0   9016  1872 pts/3    S+   16:22   0:00 grep int2\n"]
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
   "  Width: 563\n" +
   "  Height: 1134\n" +
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
   "  Corners:  +20+46  -1337+46  -1337-20  +20-20\n" +
   "  -geometry 56x56+20-20\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50484326 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50484326 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50484326",
   "WINDOW=50484326\n" +
   "X=20\n" +
   "Y=46\n" +
   "WIDTH=562\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50484326 613 1134", ""]
  $cmds << ["xdotool windowmove 50484326 20 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50331699",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50331699",
   "\n" +
   "xwininfo: Window id: 0x3000033 \n" +
   "\n" +
   "  Absolute upper-left X:  603\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 962\n" +
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
   "  Corners:  +603+46  -355+46  -355-32  +603-32\n" +
   "  -geometry 96x56+603-32\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331699 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331699 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331699",
   "WINDOW=50331699\n" +
   "X=603\n" +
   "Y=46\n" +
   "WIDTH=962\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331699 913 1134", ""]
  $cmds << ["xdotool windowmove 50331699 653 46", ""]
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
   "  Corners:  +1586+46  -22+46  -22-792  +1586-792\n" +
   "  -geometry 31x18-22+46\n" +
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
   "  Corners:  +1586+430  -22+430  -22-408  +1586-408\n" +
   "  -geometry 31x18-22+430\n" +
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

  process(m, :expand_right)


  assert_eq m.current_tag, 0

  assert_eq m.tags, [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>[{:x=>20, :w=>613}, {:x=>653, :w=>913}, {:x=>1586, :w=>313}],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
  m.current_tag = 0
  m.tags =   [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>[{:x=>20, :w=>613}, {:x=>653, :w=>913}, {:x=>1586, :w=>313}],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x0302a6f9  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50484326\n"]
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
   "paralle+  805055  0.0  0.0   2308   836 pts/3    S+   16:22   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  805057  0.0  0.0   9016  1852 pts/3    S+   16:22   0:00 grep int2\n"]
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
   "  Width: 612\n" +
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
   "  Corners:  +20+46  -1288+46  -1288-32  +20-32\n" +
   "  -geometry 61x56+20-32\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50484326 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50484326 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50484326",
   "WINDOW=50484326\n" +
   "X=20\n" +
   "Y=46\n" +
   "WIDTH=612\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50484326 663 1134", ""]
  $cmds << ["xdotool windowmove 50484326 20 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50331699",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50331699",
   "\n" +
   "xwininfo: Window id: 0x3000033 \n" +
   "\n" +
   "  Absolute upper-left X:  653\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 912\n" +
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
   "  Corners:  +653+46  -355+46  -355-32  +653-32\n" +
   "  -geometry 91x56+653-32\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331699 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331699 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331699",
   "WINDOW=50331699\n" +
   "X=653\n" +
   "Y=46\n" +
   "WIDTH=912\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331699 863 1134", ""]
  $cmds << ["xdotool windowmove 50331699 703 46", ""]
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
   "  Corners:  +1586+46  -22+46  -22-792  +1586-792\n" +
   "  -geometry 31x18-22+46\n" +
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

  process(m, :expand_right)


  assert_eq m.current_tag, 0

  assert_eq m.tags, [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>[{:x=>20, :w=>663}, {:x=>703, :w=>863}, {:x=>1586, :w=>313}],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
  m.current_tag = 0
  m.tags =   [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>[{:x=>20, :w=>663}, {:x=>703, :w=>863}, {:x=>1586, :w=>313}],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x0302a6f9  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50484326\n"]
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
   "paralle+  805111  0.0  0.0   2308   828 pts/3    S+   16:22   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  805113  0.0  0.0   2308    96 pts/3    R+   16:22   0:00 sh -c ps aux | grep int2\n"]
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
   "  Width: 662\n" +
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
   "  Corners:  +20+46  -1238+46  -1238-32  +20-32\n" +
   "  -geometry 66x56+20-32\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50484326 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50484326 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50484326",
   "WINDOW=50484326\n" +
   "X=20\n" +
   "Y=46\n" +
   "WIDTH=662\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50484326 713 1134", ""]
  $cmds << ["xdotool windowmove 50484326 20 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50331699",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50331699",
   "\n" +
   "xwininfo: Window id: 0x3000033 \n" +
   "\n" +
   "  Absolute upper-left X:  703\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 862\n" +
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
   "  Corners:  +703+46  -355+46  -355-32  +703-32\n" +
   "  -geometry 86x56+703-32\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331699 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331699 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331699",
   "WINDOW=50331699\n" +
   "X=703\n" +
   "Y=46\n" +
   "WIDTH=862\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331699 813 1134", ""]
  $cmds << ["xdotool windowmove 50331699 753 46", ""]
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
   "  Corners:  +1586+814  -21+814  -21-22  +1586-22\n" +
   "  -geometry 31x18-21-22\n" +
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

  process(m, :expand_right)


  assert_eq m.current_tag, 0

  assert_eq m.tags, [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>[{:x=>20, :w=>713}, {:x=>753, :w=>813}, {:x=>1586, :w=>313}],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
  m.current_tag = 0
  m.tags =   [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>[{:x=>20, :w=>713}, {:x=>753, :w=>813}, {:x=>1586, :w=>313}],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x0302a6f9  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50484326\n"]
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
   "paralle+  805168  0.0  0.0   2308   836 pts/3    S+   16:22   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  805170  0.0  0.0   9016  1848 pts/3    S+   16:22   0:00 grep int2\n"]
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
   "  Width: 712\n" +
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
   "  Corners:  +20+46  -1188+46  -1188-32  +20-32\n" +
   "  -geometry 71x56+20-32\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50484326 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50484326 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50484326",
   "WINDOW=50484326\n" +
   "X=20\n" +
   "Y=46\n" +
   "WIDTH=712\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50484326 763 1134", ""]
  $cmds << ["xdotool windowmove 50484326 20 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50331699",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50331699",
   "\n" +
   "xwininfo: Window id: 0x3000033 \n" +
   "\n" +
   "  Absolute upper-left X:  753\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 812\n" +
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
   "  Corners:  +753+46  -355+46  -355-32  +753-32\n" +
   "  -geometry 81x56+753-32\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331699 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331699 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331699",
   "WINDOW=50331699\n" +
   "X=753\n" +
   "Y=46\n" +
   "WIDTH=812\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331699 763 1134", ""]
  $cmds << ["xdotool windowmove 50331699 803 46", ""]
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
   "  Corners:  +1586+46  -22+46  -22-792  +1586-792\n" +
   "  -geometry 31x18-22+46\n" +
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
   "  Corners:  +1586+814  -21+814  -21-22  +1586-22\n" +
   "  -geometry 31x18-21-22\n" +
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

  process(m, :expand_right)


  assert_eq m.current_tag, 0

  assert_eq m.tags, [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>[{:x=>20, :w=>763}, {:x=>803, :w=>763}, {:x=>1586, :w=>313}],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
  m.current_tag = 0
  m.tags =   [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>[{:x=>20, :w=>763}, {:x=>803, :w=>763}, {:x=>1586, :w=>313}],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x0302a6f9  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50484326\n"]
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
   "paralle+  805224  0.0  0.0   2308   828 pts/3    S+   16:22   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  805226  0.0  0.0   9016  1848 pts/3    S+   16:22   0:00 grep int2\n"]
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
   "  Width: 762\n" +
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
   "  Corners:  +20+46  -1138+46  -1138-32  +20-32\n" +
   "  -geometry 76x56+20-32\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50484326 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50484326 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50484326",
   "WINDOW=50484326\n" +
   "X=20\n" +
   "Y=46\n" +
   "WIDTH=762\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50484326 813 1134", ""]
  $cmds << ["xdotool windowmove 50484326 20 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50331699",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50331699",
   "\n" +
   "xwininfo: Window id: 0x3000033 \n" +
   "\n" +
   "  Absolute upper-left X:  803\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 762\n" +
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
   "  Corners:  +803+46  -355+46  -355-32  +803-32\n" +
   "  -geometry 76x56+803-32\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331699 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331699 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331699",
   "WINDOW=50331699\n" +
   "X=0\n" +
   "Y=0\n" +
   "WIDTH=1920\n" +
   "HEIGHT=1200\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331699 713 1134", ""]
  $cmds << ["xdotool windowmove 50331699 853 46", ""]
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
   "  Corners:  +1586+46  -22+46  -22-792  +1586-792\n" +
   "  -geometry 31x18-22+46\n" +
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
   "  Corners:  +1586+430  -22+430  -22-408  +1586-408\n" +
   "  -geometry 31x18-22+430\n" +
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
   "  Corners:  +1586+814  -21+814  -21-22  +1586-22\n" +
   "  -geometry 31x18-21-22\n" +
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

  process(m, :expand_right)


  assert_eq m.current_tag, 0

  assert_eq m.tags, [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>[{:x=>20, :w=>813}, {:x=>853, :w=>713}, {:x=>1586, :w=>313}],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
  m.current_tag = 0
  m.tags =   [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>[{:x=>20, :w=>813}, {:x=>853, :w=>713}, {:x=>1586, :w=>313}],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x0302a6f9  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50484326\n"]
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
   "paralle+  805284  0.0  0.0   2308   828 pts/3    S+   16:22   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  805286  0.0  0.0   9016  1868 pts/3    S+   16:22   0:00 grep int2\n"]
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
   "  Width: 812\n" +
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
   "  Corners:  +20+46  -1088+46  -1088-32  +20-32\n" +
   "  -geometry 81x56+20-32\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50484326 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50484326 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50484326",
   "WINDOW=50484326\n" +
   "X=20\n" +
   "Y=46\n" +
   "WIDTH=812\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50484326 863 1134", ""]
  $cmds << ["xdotool windowmove 50484326 20 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50331699",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50331699",
   "\n" +
   "xwininfo: Window id: 0x3000033 \n" +
   "\n" +
   "  Absolute upper-left X:  853\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 712\n" +
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
   "  Corners:  +853+46  -355+46  -355-32  +853-32\n" +
   "  -geometry 71x56+853-32\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331699 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331699 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331699",
   "WINDOW=50331699\n" +
   "X=853\n" +
   "Y=46\n" +
   "WIDTH=712\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331699 663 1134", ""]
  $cmds << ["xdotool windowmove 50331699 903 46", ""]
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
   "  Corners:  +1586+46  -22+46  -22-792  +1586-792\n" +
   "  -geometry 31x18-22+46\n" +
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
   "  Corners:  +1586+430  -22+430  -22-408  +1586-408\n" +
   "  -geometry 31x18-22+430\n" +
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

  process(m, :expand_right)


  assert_eq m.current_tag, 0

  assert_eq m.tags, [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>[{:x=>20, :w=>863}, {:x=>903, :w=>663}, {:x=>1586, :w=>313}],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
  m.current_tag = 0
  m.tags =   [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>[{:x=>20, :w=>863}, {:x=>903, :w=>663}, {:x=>1586, :w=>313}],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x0302a6f9  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50484326\n"]
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
   "paralle+  805340  0.0  0.0   2308   828 pts/3    S+   16:22   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  805342  0.0  0.0   9016  1848 pts/3    S+   16:22   0:00 grep int2\n"]
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
   "  Width: 862\n" +
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
   "  Corners:  +20+46  -1038+46  -1038-32  +20-32\n" +
   "  -geometry 86x56+20-32\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50484326 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50484326 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50484326",
   "WINDOW=50484326\n" +
   "X=20\n" +
   "Y=46\n" +
   "WIDTH=862\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50484326 913 1134", ""]
  $cmds << ["xdotool windowmove 50484326 20 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50331699",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50331699",
   "\n" +
   "xwininfo: Window id: 0x3000033 \n" +
   "\n" +
   "  Absolute upper-left X:  903\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 662\n" +
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
   "  Corners:  +903+46  -355+46  -355-32  +903-32\n" +
   "  -geometry 66x56+903-32\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331699 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331699 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331699",
   "WINDOW=50331699\n" +
   "X=903\n" +
   "Y=46\n" +
   "WIDTH=662\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331699 613 1134", ""]
  $cmds << ["xdotool windowmove 50331699 953 46", ""]
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

  process(m, :expand_right)


  assert_eq m.current_tag, 0

  assert_eq m.tags, [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>[{:x=>20, :w=>913}, {:x=>953, :w=>613}, {:x=>1586, :w=>313}],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
  m.current_tag = 0
  m.tags =   [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>[{:x=>20, :w=>913}, {:x=>953, :w=>613}, {:x=>1586, :w=>313}],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x0302a6f9  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50484326\n"]
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
   "paralle+  805396  0.0  0.0   2308   836 pts/3    S+   16:22   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  805398  0.0  0.0   9016  1852 pts/3    R+   16:22   0:00 grep int2\n"]
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
   "  Width: 912\n" +
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
   "  Corners:  +20+46  -988+46  -988-32  +20-32\n" +
   "  -geometry 91x56+20-32\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50484326 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50484326 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50484326",
   "WINDOW=50484326\n" +
   "X=20\n" +
   "Y=46\n" +
   "WIDTH=912\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50484326 963 1134", ""]
  $cmds << ["xdotool windowmove 50484326 20 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50331699",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50331699",
   "\n" +
   "xwininfo: Window id: 0x3000033 \n" +
   "\n" +
   "  Absolute upper-left X:  953\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 612\n" +
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
   "  Corners:  +953+46  -355+46  -355-32  +953-32\n" +
   "  -geometry 61x56+953-32\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331699 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331699 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331699",
   "WINDOW=50331699\n" +
   "X=953\n" +
   "Y=46\n" +
   "WIDTH=612\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331699 563 1134", ""]
  $cmds << ["xdotool windowmove 50331699 1003 46", ""]
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
   "  Corners:  +1586+46  -22+46  -22-792  +1586-792\n" +
   "  -geometry 31x18-22+46\n" +
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
   "  Corners:  +1586+814  -21+814  -21-22  +1586-22\n" +
   "  -geometry 31x18-21-22\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331713 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331713 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331713",
   "WINDOW=50331713\n" +
   "X=0\n" +
   "Y=0\n" +
   "WIDTH=1920\n" +
   "HEIGHT=1200\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50331713 313 364", ""]
  $cmds << ["xdotool windowmove 50331713 1586 814", ""]
  $cmds << ["wmctrl -ia 0x3025466", ""]

  process(m, :expand_right)


  assert_eq m.current_tag, 0

  assert_eq m.tags, [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>[{:x=>20, :w=>963}, {:x=>1003, :w=>563}, {:x=>1586, :w=>313}],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
  m.current_tag = 0
  m.tags =   [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>[{:x=>20, :w=>963}, {:x=>1003, :w=>563}, {:x=>1586, :w=>313}],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x0302a6f9  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50484326\n"]
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
   "paralle+  805457  0.0  0.0   2308   840 pts/3    S+   16:22   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  805459  0.0  0.0   9016  1864 pts/3    S+   16:22   0:00 grep int2\n"]
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
   "  Width: 962\n" +
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
   "  Corners:  +20+46  -938+46  -938-32  +20-32\n" +
   "  -geometry 96x56+20-32\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50484326 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50484326 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50484326",
   "WINDOW=50484326\n" +
   "X=20\n" +
   "Y=46\n" +
   "WIDTH=962\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50484326 1013 1134", ""]
  $cmds << ["xdotool windowmove 50484326 20 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50331699",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50331699",
   "\n" +
   "xwininfo: Window id: 0x3000033 \n" +
   "\n" +
   "  Absolute upper-left X:  1003\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 562\n" +
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
   "  Corners:  +1003+46  -355+46  -355-32  +1003-32\n" +
   "  -geometry 56x56+1003-32\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50331699 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50331699 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50331699",
   "WINDOW=50331699\n" +
   "X=1003\n" +
   "Y=46\n" +
   "WIDTH=562\n" +
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

  process(m, :expand_right)


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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x0302a6f9  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50484326\n"]
  $cmds << ["xdotool getactivewindow getwindowname", "Terminal - parallels@ubuntu-linux-22-04-desktop: ~"]
  $cmds << ["cd ~ && nohup xfce4-terminal > /dev/null", ""]
  $cmds << ["xdotool getactivewindow", "50602973\n"]
  $cmds << ["xdotool getwindowgeometry --shell 50602973",
   "WINDOW=50602973\n" +
   "X=559\n" +
   "Y=359\n" +
   "WIDTH=802\n" +
   "HEIGHT=482\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool getwindowname 50484326", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 50602973", "<redacted>\n"]
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
   "paralle+  805549  0.0  0.0   2308   840 pts/3    S+   16:22   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  805551  0.0  0.0   9016  1796 pts/3    S+   16:22   0:00 grep int2\n"]
  $cmds << ["wmctrl -ia 0x3025466", ""]
  $cmds << ["wmctrl -ia 0x30423dd", ""]
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
   "X=20\n" +
   "Y=46\n" +
   "WIDTH=1012\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50484326 1013 557", ""]
  $cmds << ["xdotool windowmove 50484326 20 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50602973",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50602973",
   "\n" +
   "xwininfo: Window id: 0x30423dd \n" +
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
  $cmds << ["wmctrl -ir 50602973 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50602973 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50602973",
   "WINDOW=50602973\n" +
   "X=559\n" +
   "Y=359\n" +
   "WIDTH=802\n" +
   "HEIGHT=482\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50602973 1013 557", ""]
  $cmds << ["xdotool windowmove 50602973 20 623", ""]
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
   "  Corners:  +1586+46  -22+46  -22-792  +1586-792\n" +
   "  -geometry 31x18-22+46\n" +
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
  $cmds << ["wmctrl -ia 0x30423dd", ""]

  process(m, :start_terminal)


  assert_eq m.current_tag, 0

  assert_eq m.tags, [{:columns=>
     [["50484326", "50602973"],
      ["50331699"],
      ["50336030", "50454409", "50331713"]],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
  m.current_tag = 0
  m.tags =   [{:columns=>
     [["50484326", "50602973"],
      ["50331699"],
      ["50336030", "50454409", "50331713"]],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x030423dd  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50602973\n"]

  process(m, :move_2)


  assert_eq m.current_tag, 0

  assert_eq m.tags, [{:columns=>
     [["50484326", "50602973"],
      ["50331699"],
      ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326", "50602973"]],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
  m.current_tag = 0
  m.tags =   [{:columns=>
     [["50484326", "50602973"],
      ["50331699"],
      ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326", "50602973"]],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x030423dd  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50602973\n"]
  $cmds << ["xdotool windowminimize 50484326", ""]
  $cmds << ["xdotool windowminimize 50602973", ""]
  $cmds << ["xdotool windowminimize 50331699", ""]
  $cmds << ["xdotool windowminimize 50336030", ""]
  $cmds << ["xdotool windowminimize 50454409", ""]
  $cmds << ["xdotool windowminimize 50331713", ""]
  $cmds << ["wmctrl -ia 0x3025466", ""]
  $cmds << ["wmctrl -ia 0x30423dd", ""]
  $cmds << ["xdotool getwindowname 50484326", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 50602973", "<redacted>\n"]
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
   "paralle+  805634  0.0  0.0   2308   836 pts/3    S+   16:22   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  805636  0.0  0.0   9016  1868 pts/3    S+   16:22   0:00 grep int2\n"]
  $cmds << ["wmctrl -ia 0x3025466", ""]
  $cmds << ["wmctrl -ia 0x30423dd", ""]
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
   "  Corners:  +20+46  -888+46  -888-612  +20-612\n" +
   "  -geometry 101x27+20+46\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50484326 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50484326 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50484326",
   "WINDOW=50484326\n" +
   "X=20\n" +
   "Y=46\n" +
   "WIDTH=1012\n" +
   "HEIGHT=542\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50484326 1880 557", ""]
  $cmds << ["xdotool windowmove 50484326 20 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50602973",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50602973",
   "\n" +
   "xwininfo: Window id: 0x30423dd \n" +
   "\n" +
   "  Absolute upper-left X:  20\n" +
   "  Absolute upper-left Y:  623\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 1012\n" +
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
   "  Corners:  +20+623  -888+623  -888-35  +20-35\n" +
   "  -geometry 101x27+20-35\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50602973 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50602973 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50602973",
   "WINDOW=50602973\n" +
   "X=20\n" +
   "Y=623\n" +
   "WIDTH=1012\n" +
   "HEIGHT=542\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50602973 1880 557", ""]
  $cmds << ["xdotool windowmove 50602973 20 623", ""]
  $cmds << ["wmctrl -ia 0x3025466", ""]

  process(m, :focus_2)


  assert_eq m.current_tag, 1

  assert_eq m.tags, [{:columns=>
     [["50484326", "50602973"],
      ["50331699"],
      ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326", "50602973"]],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
  m.current_tag = 1
  m.tags =   [{:columns=>
     [["50484326", "50602973"],
      ["50331699"],
      ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326", "50602973"]],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x030423dd  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50484326\n"]
  $cmds << ["wmctrl -ia 0x30423dd", ""]

  process(m, :focus_down)


  assert_eq m.current_tag, 1

  assert_eq m.tags, [{:columns=>
     [["50484326", "50602973"],
      ["50331699"],
      ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326", "50602973"]],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
  m.current_tag = 1
  m.tags =   [{:columns=>
     [["50484326", "50602973"],
      ["50331699"],
      ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326", "50602973"]],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x030423dd  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50602973\n"]
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
   "paralle+  805679  0.0  0.0   2308   828 pts/3    S+   16:22   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  805681  0.0  0.0   9016  1852 pts/3    S+   16:22   0:00 grep int2\n"]
  $cmds << ["xdotool getwindowname 50484326", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 50602973", "<redacted>\n"]
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
   "paralle+  805685  0.0  0.0   2308   840 pts/3    S+   16:22   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  805687  0.0  0.0   9016  1868 pts/3    S+   16:22   0:00 grep int2\n"]
  $cmds << ["wmctrl -ia 0x3025466", ""]
  $cmds << ["wmctrl -ia 0x30423dd", ""]
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
  $cmds << ["wmctrl -ir 50484326 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50484326 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50484326",
   "WINDOW=50484326\n" +
   "X=20\n" +
   "Y=46\n" +
   "WIDTH=1872\n" +
   "HEIGHT=542\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50484326 930 1134", ""]
  $cmds << ["xdotool windowmove 50484326 20 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50602973",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50602973",
   "\n" +
   "xwininfo: Window id: 0x30423dd \n" +
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
  $cmds << ["wmctrl -ir 50602973 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50602973 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50602973",
   "WINDOW=50602973\n" +
   "X=20\n" +
   "Y=623\n" +
   "WIDTH=1872\n" +
   "HEIGHT=542\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50602973 930 1134", ""]
  $cmds << ["xdotool windowmove 50602973 970 46", ""]
  $cmds << ["wmctrl -ia 0x30423dd", ""]

  process(m, :move_right)


  assert_eq m.current_tag, 1

  assert_eq m.tags, [{:columns=>
     [["50484326", "50602973"],
      ["50331699"],
      ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326"], ["50602973"]],
    :old_columns=>[["50484326"], ["50602973"]],
    :column_sizes=>[{:x=>20, :w=>930}, {:x=>970, :w=>930}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
  m.current_tag = 1
  m.tags =   [{:columns=>
     [["50484326", "50602973"],
      ["50331699"],
      ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326"], ["50602973"]],
    :old_columns=>[["50484326"], ["50602973"]],
    :column_sizes=>[{:x=>20, :w=>930}, {:x=>970, :w=>930}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x030423dd  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50602973\n"]
  $cmds << ["xdotool windowminimize 50484326", ""]
  $cmds << ["xdotool windowminimize 50602973", ""]
  $cmds << ["wmctrl -ia 0x3025466", ""]
  $cmds << ["wmctrl -ia 0x30423dd", ""]
  $cmds << ["wmctrl -ia 0x3000033", ""]
  $cmds << ["wmctrl -ia 0x300111e", ""]
  $cmds << ["wmctrl -ia 0x301df89", ""]
  $cmds << ["wmctrl -ia 0x3000041", ""]
  $cmds << ["xdotool getwindowname 50484326", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 50602973", "<redacted>\n"]
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
   "paralle+  805731  0.0  0.0   2308   824 pts/3    S+   16:22   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  805733  0.0  0.0   9016  1868 pts/3    S+   16:22   0:00 grep int2\n"]
  $cmds << ["wmctrl -ia 0x3025466", ""]
  $cmds << ["wmctrl -ia 0x30423dd", ""]
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
  $cmds << ["wmctrl -ir 50484326 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50484326 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50484326",
   "WINDOW=50484326\n" +
   "X=20\n" +
   "Y=46\n" +
   "WIDTH=922\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50484326 1013 557", ""]
  $cmds << ["xdotool windowmove 50484326 20 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50602973",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50602973",
   "\n" +
   "xwininfo: Window id: 0x30423dd \n" +
   "\n" +
   "  Absolute upper-left X:  970\n" +
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
   "  Corners:  +970+46  -28+46  -28-32  +970-32\n" +
   "  -geometry 92x56-28-32\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50602973 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50602973 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50602973",
   "WINDOW=50602973\n" +
   "X=970\n" +
   "Y=46\n" +
   "WIDTH=922\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50602973 1013 557", ""]
  $cmds << ["xdotool windowmove 50602973 20 623", ""]
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
   "  Width: 513\n" +
   "  Height: 1134\n" +
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
   "  Corners:  +1053+46  -354+46  -354-20  +1053-20\n" +
   "  -geometry 51x56+1053-20\n" +
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

  assert_eq m.tags, [{:columns=>
     [["50484326", "50602973"],
      ["50331699"],
      ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326"], ["50602973"]],
    :old_columns=>[["50484326"], ["50602973"]],
    :column_sizes=>[{:x=>20, :w=>930}, {:x=>970, :w=>930}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
  m.current_tag = 0
  m.tags =   [{:columns=>
     [["50484326", "50602973"],
      ["50331699"],
      ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326"], ["50602973"]],
    :old_columns=>[["50484326"], ["50602973"]],
    :column_sizes=>[{:x=>20, :w=>930}, {:x=>970, :w=>930}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x030423dd  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50484326\n"]
  $cmds << ["wmctrl -ia 0x30423dd", ""]

  process(m, :focus_down)


  assert_eq m.current_tag, 0

  assert_eq m.tags, [{:columns=>
     [["50484326", "50602973"],
      ["50331699"],
      ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326"], ["50602973"]],
    :old_columns=>[["50484326"], ["50602973"]],
    :column_sizes=>[{:x=>20, :w=>930}, {:x=>970, :w=>930}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
  m.current_tag = 0
  m.tags =   [{:columns=>
     [["50484326", "50602973"],
      ["50331699"],
      ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326"], ["50602973"]],
    :old_columns=>[["50484326"], ["50602973"]],
    :column_sizes=>[{:x=>20, :w=>930}, {:x=>970, :w=>930}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x030423dd  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50602973\n"]
  $cmds << ["xdotool windowminimize 50602973", ""]
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
   "paralle+  805809  0.0  0.0   2308   836 pts/3    S+   16:22   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  805811  0.0  0.0   9016  1820 pts/3    S+   16:22   0:00 grep int2\n"]
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
   "  Corners:  +20+46  -888+46  -888-612  +20-612\n" +
   "  -geometry 101x27+20+46\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50484326 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50484326 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50484326",
   "WINDOW=50484326\n" +
   "X=20\n" +
   "Y=46\n" +
   "WIDTH=1012\n" +
   "HEIGHT=542\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50484326 1013 1134", ""]
  $cmds << ["xdotool windowmove 50484326 20 46", ""]
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
   "  Width: 513\n" +
   "  Height: 1134\n" +
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
   "  Corners:  +1053+46  -354+46  -354-20  +1053-20\n" +
   "  -geometry 51x56+1053-20\n" +
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
   "X=0\n" +
   "Y=0\n" +
   "WIDTH=1920\n" +
   "HEIGHT=1200\n" +
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
   "  Corners:  +1586+430  -22+430  -22-408  +1586-408\n" +
   "  -geometry 31x18-22+430\n" +
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
   "  Corners:  +1586+814  -21+814  -21-22  +1586-22\n" +
   "  -geometry 31x18-21-22\n" +
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

  process(m, :move_1)


  assert_eq m.current_tag, 0

  assert_eq m.tags, [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326"], ["50602973"]],
    :old_columns=>[["50484326"], ["50602973"]],
    :column_sizes=>[{:x=>20, :w=>930}, {:x=>970, :w=>930}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
  m.current_tag = 0
  m.tags =   [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326"], ["50602973"]],
    :old_columns=>[["50484326"], ["50602973"]],
    :column_sizes=>[{:x=>20, :w=>930}, {:x=>970, :w=>930}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x030423dd  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50331713\n"]
  $cmds << ["xdotool windowminimize 50484326", ""]
  $cmds << ["xdotool windowminimize 50331699", ""]
  $cmds << ["xdotool windowminimize 50336030", ""]
  $cmds << ["xdotool windowminimize 50454409", ""]
  $cmds << ["xdotool windowminimize 50331713", ""]
  $cmds << ["wmctrl -ia 0x3025466", ""]
  $cmds << ["wmctrl -ia 0x30423dd", ""]
  $cmds << ["xdotool getwindowname 50484326", "<redacted>\n"]
  $cmds << ["xdotool getwindowname 50602973", "<redacted>\n"]
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
   "paralle+  805872  0.0  0.0   2308   836 pts/3    S+   16:22   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  805874  0.0  0.0   9016  1868 pts/3    S+   16:22   0:00 grep int2\n"]
  $cmds << ["wmctrl -ia 0x3025466", ""]
  $cmds << ["wmctrl -ia 0x30423dd", ""]
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
   "X=20\n" +
   "Y=46\n" +
   "WIDTH=1012\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50484326 930 1134", ""]
  $cmds << ["xdotool windowmove 50484326 20 46", ""]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 50602973",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n"]
  $cmds << ["xwininfo -id 50602973",
   "\n" +
   "xwininfo: Window id: 0x30423dd \n" +
   "\n" +
   "  Absolute upper-left X:  20\n" +
   "  Absolute upper-left Y:  623\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 1012\n" +
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
   "  Corners:  +20+623  -888+623  -888-35  +20-35\n" +
   "  -geometry 101x27+20-35\n" +
   "\n"]
  $cmds << ["wmctrl -ir 50602973 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50602973 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50602973",
   "WINDOW=50602973\n" +
   "X=20\n" +
   "Y=623\n" +
   "WIDTH=1012\n" +
   "HEIGHT=542\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50602973 930 1134", ""]
  $cmds << ["xdotool windowmove 50602973 970 46", ""]
  $cmds << ["wmctrl -ia 0x3025466", ""]

  process(m, :focus_2)


  assert_eq m.current_tag, 1

  assert_eq m.tags, [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326"], ["50602973"]],
    :old_columns=>[["50484326"], ["50602973"]],
    :column_sizes=>[{:x=>20, :w=>930}, {:x=>970, :w=>930}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
  m.current_tag = 1
  m.tags =   [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326"], ["50602973"]],
    :old_columns=>[["50484326"], ["50602973"]],
    :column_sizes=>[{:x=>20, :w=>930}, {:x=>970, :w=>930}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x030423dd  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50484326\n"]
  $cmds << ["wmctrl -ia 0x30423dd", ""]

  process(m, :focus_right)


  assert_eq m.current_tag, 1

  assert_eq m.tags, [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326"], ["50602973"]],
    :old_columns=>[["50484326"], ["50602973"]],
    :column_sizes=>[{:x=>20, :w=>930}, {:x=>970, :w=>930}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
  m.current_tag = 1
  m.tags =   [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326"], ["50602973"]],
    :old_columns=>[["50484326"], ["50602973"]],
    :column_sizes=>[{:x=>20, :w=>930}, {:x=>970, :w=>930}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x030423dd  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50602973\n"]

  process(m, :move_2)


  assert_eq m.current_tag, 1

  assert_eq m.tags, [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326"], ["50602973"]],
    :old_columns=>[["50484326"], ["50602973"]],
    :column_sizes=>[{:x=>20, :w=>930}, {:x=>970, :w=>930}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
  m.current_tag = 1
  m.tags =   [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326"], ["50602973"]],
    :old_columns=>[["50484326"], ["50602973"]],
    :column_sizes=>[{:x=>20, :w=>930}, {:x=>970, :w=>930}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x030423dd  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50602973\n"]

  process(m, :move_2)


  assert_eq m.current_tag, 1

  assert_eq m.tags, [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326"], ["50602973"]],
    :old_columns=>[["50484326"], ["50602973"]],
    :column_sizes=>[{:x=>20, :w=>930}, {:x=>970, :w=>930}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
  m.current_tag = 1
  m.tags =   [{:columns=>[["50484326"], ["50331699"], ["50336030", "50454409", "50331713"]],
    :old_columns=>
     [["50484326"], ["50454409", "50336030"], ["50331699", "50331713"]],
    :column_sizes=>
     [{:x=>20, :w=>1013}, {:x=>1053, :w=>513}, {:x=>1586, :w=>313}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil, nil, nil]},
   {:columns=>[["50484326"], ["50602973"]],
    :old_columns=>[["50484326"], ["50602973"]],
    :column_sizes=>[{:x=>20, :w=>930}, {:x=>970, :w=>930}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[],
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x030423dd  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50602973\n"]
  $cmds << ["zenity --question --ok-label OK --cancel-label Cancel --text \"Close window?\"", ""]
  $cmds << ["wmctrl -i -c 50602973", ""]
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
   "paralle+  805950  0.0  0.0   2308   836 pts/3    S+   16:23   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  805952  0.0  0.0   9016  1868 pts/3    S+   16:23   0:00 grep int2\n"]
  $cmds << ["xdotool getwindowname 50484326", "<redacted>\n"]
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
   "paralle+  805955  0.0  0.0   2308   836 pts/3    S+   16:23   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  805957  0.0  0.0   9016  1872 pts/3    S+   16:23   0:00 grep int2\n"]
  $cmds << ["wmctrl -ia 0x3025466", ""]
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
  $cmds << ["wmctrl -ir 50484326 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50484326 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50484326",
   "WINDOW=50484326\n" +
   "X=20\n" +
   "Y=46\n" +
   "WIDTH=922\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50484326 1880 1134", ""]
  $cmds << ["xdotool windowmove 50484326 20 46", ""]
  $cmds << ["wmctrl -ia 0x30423dd", ""]

  process(m, :close_window)


  assert_eq m.current_tag, 1

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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
  m.current_tag = 1
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x0302a6f9  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50484326\n"]
  $cmds << ["xdotool windowminimize 50484326", ""]
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
   "paralle+  805991  0.0  0.0   2308   836 pts/3    S+   16:23   0:00 sh -c ps aux | grep int2\n" +
   "paralle+  805993  0.0  0.0   9016  1868 pts/3    S+   16:23   0:00 grep int2\n"]
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
  $cmds << ["wmctrl -ir 50484326 -b toggle,maximized_vert,maximized_horz", ""]
  $cmds << ["wmctrl -ir 50484326 -b remove,maximized_vert,maximized_horz", ""]
  $cmds << ["xdotool getwindowgeometry --shell 50484326",
   "WINDOW=50484326\n" +
   "X=20\n" +
   "Y=46\n" +
   "WIDTH=1872\n" +
   "HEIGHT=1122\n" +
   "SCREEN=0\n"]
  $cmds << ["xdotool windowsize 50484326 1013 1134", ""]
  $cmds << ["xdotool windowmove 50484326 20 46", ""]
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
   "  Width: 513\n" +
   "  Height: 1134\n" +
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
   "  Corners:  +1053+46  -354+46  -354-20  +1053-20\n" +
   "  -geometry 51x56+1053-20\n" +
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
   "  Corners:  +1586+814  -21+814  -21-22  +1586-22\n" +
   "  -geometry 31x18-21-22\n" +
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
   {:columns=>[],
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x0302a6f9  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50484326\n"]
  $cmds << ["wmctrl -ia 0x3000033", ""]

  process(m, :focus_right)


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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x0302a6f9  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50331699\n"]
  $cmds << ["wmctrl -ia 0x300111e", ""]

  process(m, :focus_right)


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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x0302a6f9  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50336030\n"]
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x0302a6f9  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50331699\n"]
  $cmds << ["wmctrl -ia 0x3025466", ""]

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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x0302a6f9  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50484326\n"]
  $cmds << ["wmctrl -ia 0x3000033", ""]

  process(m, :focus_right)


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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x0302a6f9  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50331699\n"]
  $cmds << ["wmctrl -ia 0x300111e", ""]

  process(m, :focus_right)


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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x0302a6f9  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50336030\n"]
  $cmds << ["wmctrl -ia 0x301df89", ""]

  process(m, :focus_down)


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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
   "0x0302a6f9  0 <redacted>\n"]
  $cmds << ["xdotool getactivewindow", "50454409\n"]
  $cmds << ["wmctrl -ia 0x3000041", ""]

  process(m, :focus_down)


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
    :old_columns=>[["37752808"]],
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
   {:columns=>[[]],
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
