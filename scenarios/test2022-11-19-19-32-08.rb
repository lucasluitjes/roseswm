
HOSTNAME = "ubuntu-linux-22-04-desktop"
OFFSET_X = 0
OFFSET_Y = 26
RESIZE_AMOUNT = 50
PERSIST_SIZES = false
MARGIN = 20

scenario do
  m = Manager.new('')
  m.current_tag = 0
  m.tags =   [{:columns=>[["56629377", "56644482"], ["56638076", "56629996", "56623107"]],
    :old_columns=>[["56629377"], ["56638076", "56629996", "56623107"]],
    :column_sizes=>[{:x=>20, :w=>1330}, {:x=>1370, :w=>530}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil]},
   {:columns=>[["56629377"]],
    :old_columns=>[["56629377"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
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
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]}]
  m.floating_locations =   {}
  m.last_tiling_focus =   nil
  m.last_float_focus =   nil
  $cmds << ["wmctrl -l",
   "0x02000003 -1 <redacted>\n" +
   "0x03600003  0 <redacted>\n" +
   "0x01c00013 -1 <redacted>\n" +
   "0x0600002c  0 <redacted>\n" +
   "0x03601881  0 <redacted>\n" +
   "0x03601aec  0 <redacted>\n" +
   "0x03603a7c  0 <redacted>\n" +
   "0x03605382  0 <redacted>\n",
   0]
  $cmds << ["xdotool getactivewindow", "56623107\n", 0]
  $cmds << ["xdotool getactivewindow getwindowname", "Terminal - parallels@ubuntu-linux-22-04-desktop: ~"]
  $cmds << ["cd ~ && nohup xfce4-terminal > /dev/null", "", 0]
  $cmds << ["xdotool getactivewindow", "56651555\n", 0]
  $cmds << ["xdotool getwindowgeometry --shell 56651555",
   "WINDOW=56651555\n" +
   "X=559\n" +
   "Y=359\n" +
   "WIDTH=802\n" +
   "HEIGHT=482\n" +
   "SCREEN=0\n",
   0]
  $cmds << ["xdotool getwindowname 56629377", "<redacted>\n", 0]
  $cmds << ["xdotool getwindowname 56644482", "<redacted>\n", 0]
  $cmds << ["xdotool getwindowname 56638076", "<redacted>\n", 0]
  $cmds << ["xdotool getwindowname 56629996", "<redacted>\n", 0]
  $cmds << ["xdotool getwindowname 56623107", "<redacted>\n", 0]
  $cmds << ["xdotool getwindowname 56651555", "<redacted>\n", 0]
  $cmds << ["xrandr",
   "Screen 0: minimum 320 x 200, current 1920 x 1200, maximum 8192 x 8192\n" +
   "Virtual-1 connected primary 1920x1200+0+0 (normal left inverted right x axis y axis) 0mm x 0mm\n" +
   "   1024x768      59.95 +  60.00  \n" +
   "   4096x2160     60.00    59.94  \n" +
   "   2560x1600     59.99    59.97  \n" +
   "   1920x1440     60.00  \n" +
   "   1856x1392     60.00  \n" +
   "   1792x1344     60.00  \n" +
   "   2048x1152     60.00  \n" +
   "   1920x1200     59.88*   59.95  \n" +
   "   1920x1080     60.00  \n" +
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
   "Virtual-16 disconnected\n",
   0]
  $cmds << ["ps aux | grep int2",
   "paralle+   26082  0.0  0.0   2308   836 pts/0    S+   19:32   0:00 sh -c ps aux | grep int2\n" +
   "paralle+   26084  0.0  0.0   9016  1844 pts/0    S+   19:32   0:00 grep int2\n",
   0]
  $cmds << ["wmctrl -ia 0x3601881", "", 0]
  $cmds << ["wmctrl -ia 0x3605382", "", 0]
  $cmds << ["wmctrl -ia 0x3603a7c", "", 0]
  $cmds << ["wmctrl -ia 0x3601aec", "", 0]
  $cmds << ["wmctrl -ia 0x3600003", "", 0]
  $cmds << ["wmctrl -ia 0x3606f23", "", 0]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 56629377",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n",
   0]
  $cmds << ["xwininfo -id 56629377",
   "\n" +
   "xwininfo: Window id: 0x3601881 \n" +
   "\n" +
   "  Absolute upper-left X:  20\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 1330\n" +
   "  Height: 557\n" +
   "  Depth: 32\n" +
   "  Visual: 0x6cb\n" +
   "  Visual Class: TrueColor\n" +
   "  Border width: 0\n" +
   "  Class: InputOutput\n" +
   "  Colormap: 0x3600002 (not installed)\n" +
   "  Bit Gravity State: NorthWestGravity\n" +
   "  Window Gravity State: NorthWestGravity\n" +
   "  Backing Store State: NotUseful\n" +
   "  Save Under State: no\n" +
   "  Map State: IsViewable\n" +
   "  Override Redirect State: no\n" +
   "  Corners:  +20+46  -570+46  -570-597  +20-597\n" +
   "  -geometry 132x27+20+46\n" +
   "\n",
   0]
  $cmds << ["wmctrl -ir 56629377 -b toggle,maximized_vert,maximized_horz", "", 0]
  $cmds << ["wmctrl -ir 56629377 -b remove,maximized_vert,maximized_horz", "", 0]
  $cmds << ["xdotool getwindowgeometry --shell 56629377",
   "WINDOW=56629377\n" +
   "X=20\n" +
   "Y=46\n" +
   "WIDTH=1322\n" +
   "HEIGHT=542\n" +
   "SCREEN=0\n",
   0]
  $cmds << ["xdotool windowsize 56629377 1330 557", "", 0]
  $cmds << ["xdotool windowmove 56629377 20 46", "", 0]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 56644482",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n",
   0]
  $cmds << ["xwininfo -id 56644482",
   "\n" +
   "xwininfo: Window id: 0x3605382 \n" +
   "\n" +
   "  Absolute upper-left X:  20\n" +
   "  Absolute upper-left Y:  623\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 1330\n" +
   "  Height: 557\n" +
   "  Depth: 32\n" +
   "  Visual: 0x6cb\n" +
   "  Visual Class: TrueColor\n" +
   "  Border width: 0\n" +
   "  Class: InputOutput\n" +
   "  Colormap: 0x3600002 (not installed)\n" +
   "  Bit Gravity State: NorthWestGravity\n" +
   "  Window Gravity State: NorthWestGravity\n" +
   "  Backing Store State: NotUseful\n" +
   "  Save Under State: no\n" +
   "  Map State: IsViewable\n" +
   "  Override Redirect State: no\n" +
   "  Corners:  +20+623  -570+623  -570-20  +20-20\n" +
   "  -geometry 132x27+20-20\n" +
   "\n",
   0]
  $cmds << ["wmctrl -ir 56644482 -b toggle,maximized_vert,maximized_horz", "", 0]
  $cmds << ["wmctrl -ir 56644482 -b remove,maximized_vert,maximized_horz", "", 0]
  $cmds << ["xdotool getwindowgeometry --shell 56644482",
   "WINDOW=56644482\n" +
   "X=20\n" +
   "Y=623\n" +
   "WIDTH=1322\n" +
   "HEIGHT=542\n" +
   "SCREEN=0\n",
   0]
  $cmds << ["xdotool windowsize 56644482 1330 557", "", 0]
  $cmds << ["xdotool windowmove 56644482 20 623", "", 0]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 56638076",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n",
   0]
  $cmds << ["xwininfo -id 56638076",
   "\n" +
   "xwininfo: Window id: 0x3603a7c \n" +
   "\n" +
   "  Absolute upper-left X:  1370\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 530\n" +
   "  Height: 364\n" +
   "  Depth: 32\n" +
   "  Visual: 0x6cb\n" +
   "  Visual Class: TrueColor\n" +
   "  Border width: 0\n" +
   "  Class: InputOutput\n" +
   "  Colormap: 0x3600002 (not installed)\n" +
   "  Bit Gravity State: NorthWestGravity\n" +
   "  Window Gravity State: NorthWestGravity\n" +
   "  Backing Store State: NotUseful\n" +
   "  Save Under State: no\n" +
   "  Map State: IsViewable\n" +
   "  Override Redirect State: no\n" +
   "  Corners:  +1370+46  -20+46  -20-790  +1370-790\n" +
   "  -geometry 52x18-20+46\n" +
   "\n",
   0]
  $cmds << ["wmctrl -ir 56638076 -b toggle,maximized_vert,maximized_horz", "", 0]
  $cmds << ["wmctrl -ir 56638076 -b remove,maximized_vert,maximized_horz", "", 0]
  $cmds << ["xdotool getwindowgeometry --shell 56638076",
   "WINDOW=56638076\n" +
   "X=1370\n" +
   "Y=46\n" +
   "WIDTH=522\n" +
   "HEIGHT=362\n" +
   "SCREEN=0\n",
   0]
  $cmds << ["xdotool windowsize 56638076 530 268", "", 0]
  $cmds << ["xdotool windowmove 56638076 1370 46", "", 0]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 56629996",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n",
   0]
  $cmds << ["xwininfo -id 56629996",
   "\n" +
   "xwininfo: Window id: 0x3601aec \n" +
   "\n" +
   "  Absolute upper-left X:  1370\n" +
   "  Absolute upper-left Y:  430\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 522\n" +
   "  Height: 362\n" +
   "  Depth: 32\n" +
   "  Visual: 0x6cb\n" +
   "  Visual Class: TrueColor\n" +
   "  Border width: 0\n" +
   "  Class: InputOutput\n" +
   "  Colormap: 0x3600002 (not installed)\n" +
   "  Bit Gravity State: NorthWestGravity\n" +
   "  Window Gravity State: NorthWestGravity\n" +
   "  Backing Store State: NotUseful\n" +
   "  Save Under State: no\n" +
   "  Map State: IsViewable\n" +
   "  Override Redirect State: no\n" +
   "  Corners:  +1370+430  -28+430  -28-408  +1370-408\n" +
   "  -geometry 52x18-28+430\n" +
   "\n",
   0]
  $cmds << ["wmctrl -ir 56629996 -b toggle,maximized_vert,maximized_horz", "", 0]
  $cmds << ["wmctrl -ir 56629996 -b remove,maximized_vert,maximized_horz", "", 0]
  $cmds << ["xdotool getwindowgeometry --shell 56629996",
   "WINDOW=56629996\n" +
   "X=1370\n" +
   "Y=430\n" +
   "WIDTH=522\n" +
   "HEIGHT=362\n" +
   "SCREEN=0\n",
   0]
  $cmds << ["xdotool windowsize 56629996 530 268", "", 0]
  $cmds << ["xdotool windowmove 56629996 1370 334", "", 0]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 56623107",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n",
   0]
  $cmds << ["xwininfo -id 56623107",
   "\n" +
   "xwininfo: Window id: 0x3600003 \n" +
   "\n" +
   "  Absolute upper-left X:  1370\n" +
   "  Absolute upper-left Y:  814\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 530\n" +
   "  Height: 364\n" +
   "  Depth: 32\n" +
   "  Visual: 0x6cb\n" +
   "  Visual Class: TrueColor\n" +
   "  Border width: 0\n" +
   "  Class: InputOutput\n" +
   "  Colormap: 0x3600002 (not installed)\n" +
   "  Bit Gravity State: NorthWestGravity\n" +
   "  Window Gravity State: NorthWestGravity\n" +
   "  Backing Store State: NotUseful\n" +
   "  Save Under State: no\n" +
   "  Map State: IsViewable\n" +
   "  Override Redirect State: no\n" +
   "  Corners:  +1370+814  -20+814  -20-22  +1370-22\n" +
   "  -geometry 52x18-20-22\n" +
   "\n",
   0]
  $cmds << ["wmctrl -ir 56623107 -b toggle,maximized_vert,maximized_horz", "", 0]
  $cmds << ["wmctrl -ir 56623107 -b remove,maximized_vert,maximized_horz", "", 0]
  $cmds << ["xdotool getwindowgeometry --shell 56623107",
   "WINDOW=56623107\n" +
   "X=1370\n" +
   "Y=814\n" +
   "WIDTH=522\n" +
   "HEIGHT=362\n" +
   "SCREEN=0\n",
   0]
  $cmds << ["xdotool windowsize 56623107 530 268", "", 0]
  $cmds << ["xdotool windowmove 56623107 1370 622", "", 0]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 56651555",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n",
   0]
  $cmds << ["xwininfo -id 56651555",
   "\n" +
   "xwininfo: Window id: 0x3606f23 \n" +
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
   "  Colormap: 0x3600002 (not installed)\n" +
   "  Bit Gravity State: NorthWestGravity\n" +
   "  Window Gravity State: NorthWestGravity\n" +
   "  Backing Store State: NotUseful\n" +
   "  Save Under State: no\n" +
   "  Map State: IsViewable\n" +
   "  Override Redirect State: no\n" +
   "  Corners:  +559+359  -559+359  -559-359  +559-359\n" +
   "  -geometry 80x24+559+359\n" +
   "\n",
   0]
  $cmds << ["wmctrl -ir 56651555 -b toggle,maximized_vert,maximized_horz", "", 0]
  $cmds << ["wmctrl -ir 56651555 -b remove,maximized_vert,maximized_horz", "", 0]
  $cmds << ["xdotool getwindowgeometry --shell 56651555",
   "WINDOW=56651555\n" +
   "X=559\n" +
   "Y=359\n" +
   "WIDTH=802\n" +
   "HEIGHT=482\n" +
   "SCREEN=0\n",
   0]
  $cmds << ["xdotool windowsize 56651555 530 268", "", 0]
  $cmds << ["xdotool windowmove 56651555 1370 910", "", 0]
  $cmds << ["wmctrl -ia 0x3606f23", "", 0]

  process(m, :start_terminal)


  assert_eq m.current_tag, 0

  assert_eq m.tags, [{:columns=>
     [["56629377", "56644482"],
      ["56638076", "56629996", "56623107", "56651555"]],
    :old_columns=>[["56629377"], ["56638076", "56629996", "56623107"]],
    :column_sizes=>[{:x=>20, :w=>1330}, {:x=>1370, :w=>530}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil]},
   {:columns=>[["56629377"]],
    :old_columns=>[["56629377"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
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
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]}]
  assert_eq m.floating_locations,   {"56651555"=>{:x=>559, :y=>359, :w=>802, :h=>482}}
  assert_eq m.last_tiling_focus,   nil
  assert_eq m.last_float_focus,   nil
end


scenario do
  m = Manager.new('')
  m.current_tag = 0
  m.tags =   [{:columns=>
     [["56629377", "56644482"],
      ["56638076", "56629996", "56623107", "56651555"]],
    :old_columns=>[["56629377"], ["56638076", "56629996", "56623107"]],
    :column_sizes=>[{:x=>20, :w=>1330}, {:x=>1370, :w=>530}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil]},
   {:columns=>[["56629377"]],
    :old_columns=>[["56629377"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
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
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]}]
  m.floating_locations =   {"56651555"=>{:x=>559, :y=>359, :w=>802, :h=>482}}
  m.last_tiling_focus =   nil
  m.last_float_focus =   nil
  $cmds << ["wmctrl -l",
   "0x02000003 -1 <redacted>\n" +
   "0x03600003  0 <redacted>\n" +
   "0x01c00013 -1 <redacted>\n" +
   "0x0600002c  0 <redacted>\n" +
   "0x03601881  0 <redacted>\n" +
   "0x03601aec  0 <redacted>\n" +
   "0x03603a7c  0 <redacted>\n" +
   "0x03605382  0 <redacted>\n" +
   "0x03606f23  0 <redacted>\n",
   0]
  $cmds << ["xdotool getactivewindow", "56651555\n", 0]
  $cmds << ["wmctrl -ia 0x3603a7c", "", 0]

  process(m, :focus_down)


  assert_eq m.current_tag, 0

  assert_eq m.tags, [{:columns=>
     [["56629377", "56644482"],
      ["56638076", "56629996", "56623107", "56651555"]],
    :old_columns=>[["56629377"], ["56638076", "56629996", "56623107"]],
    :column_sizes=>[{:x=>20, :w=>1330}, {:x=>1370, :w=>530}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil]},
   {:columns=>[["56629377"]],
    :old_columns=>[["56629377"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
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
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]}]
  assert_eq m.floating_locations,   {"56651555"=>{:x=>559, :y=>359, :w=>802, :h=>482}}
  assert_eq m.last_tiling_focus,   nil
  assert_eq m.last_float_focus,   nil
end


scenario do
  m = Manager.new('')
  m.current_tag = 0
  m.tags =   [{:columns=>
     [["56629377", "56644482"],
      ["56638076", "56629996", "56623107", "56651555"]],
    :old_columns=>[["56629377"], ["56638076", "56629996", "56623107"]],
    :column_sizes=>[{:x=>20, :w=>1330}, {:x=>1370, :w=>530}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil]},
   {:columns=>[["56629377"]],
    :old_columns=>[["56629377"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
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
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]}]
  m.floating_locations =   {"56651555"=>{:x=>559, :y=>359, :w=>802, :h=>482}}
  m.last_tiling_focus =   nil
  m.last_float_focus =   nil
  $cmds << ["wmctrl -l",
   "0x02000003 -1 <redacted>\n" +
   "0x03600003  0 <redacted>\n" +
   "0x01c00013 -1 <redacted>\n" +
   "0x0600002c  0 <redacted>\n" +
   "0x03601881  0 <redacted>\n" +
   "0x03601aec  0 <redacted>\n" +
   "0x03603a7c  0 <redacted>\n" +
   "0x03605382  0 <redacted>\n" +
   "0x03606f23  0 <redacted>\n",
   0]
  $cmds << ["xdotool getactivewindow", "56638076\n", 0]
  $cmds << ["wmctrl -ia 0x3601aec", "", 0]

  process(m, :focus_down)


  assert_eq m.current_tag, 0

  assert_eq m.tags, [{:columns=>
     [["56629377", "56644482"],
      ["56638076", "56629996", "56623107", "56651555"]],
    :old_columns=>[["56629377"], ["56638076", "56629996", "56623107"]],
    :column_sizes=>[{:x=>20, :w=>1330}, {:x=>1370, :w=>530}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil]},
   {:columns=>[["56629377"]],
    :old_columns=>[["56629377"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
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
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]}]
  assert_eq m.floating_locations,   {"56651555"=>{:x=>559, :y=>359, :w=>802, :h=>482}}
  assert_eq m.last_tiling_focus,   nil
  assert_eq m.last_float_focus,   nil
end


scenario do
  m = Manager.new('')
  m.current_tag = 0
  m.tags =   [{:columns=>
     [["56629377", "56644482"],
      ["56638076", "56629996", "56623107", "56651555"]],
    :old_columns=>[["56629377"], ["56638076", "56629996", "56623107"]],
    :column_sizes=>[{:x=>20, :w=>1330}, {:x=>1370, :w=>530}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil]},
   {:columns=>[["56629377"]],
    :old_columns=>[["56629377"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
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
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]}]
  m.floating_locations =   {"56651555"=>{:x=>559, :y=>359, :w=>802, :h=>482}}
  m.last_tiling_focus =   nil
  m.last_float_focus =   nil
  $cmds << ["wmctrl -l",
   "0x02000003 -1 <redacted>\n" +
   "0x03600003  0 <redacted>\n" +
   "0x01c00013 -1 <redacted>\n" +
   "0x0600002c  0 <redacted>\n" +
   "0x03601881  0 <redacted>\n" +
   "0x03601aec  0 <redacted>\n" +
   "0x03603a7c  0 <redacted>\n" +
   "0x03605382  0 <redacted>\n" +
   "0x03606f23  0 <redacted>\n",
   0]
  $cmds << ["xdotool getactivewindow", "56629996\n", 0]
  $cmds << ["wmctrl -ia 0x3600003", "", 0]

  process(m, :focus_down)


  assert_eq m.current_tag, 0

  assert_eq m.tags, [{:columns=>
     [["56629377", "56644482"],
      ["56638076", "56629996", "56623107", "56651555"]],
    :old_columns=>[["56629377"], ["56638076", "56629996", "56623107"]],
    :column_sizes=>[{:x=>20, :w=>1330}, {:x=>1370, :w=>530}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil]},
   {:columns=>[["56629377"]],
    :old_columns=>[["56629377"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
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
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]}]
  assert_eq m.floating_locations,   {"56651555"=>{:x=>559, :y=>359, :w=>802, :h=>482}}
  assert_eq m.last_tiling_focus,   nil
  assert_eq m.last_float_focus,   nil
end


scenario do
  m = Manager.new('')
  m.current_tag = 0
  m.tags =   [{:columns=>
     [["56629377", "56644482"],
      ["56638076", "56629996", "56623107", "56651555"]],
    :old_columns=>[["56629377"], ["56638076", "56629996", "56623107"]],
    :column_sizes=>[{:x=>20, :w=>1330}, {:x=>1370, :w=>530}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil]},
   {:columns=>[["56629377"]],
    :old_columns=>[["56629377"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
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
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]}]
  m.floating_locations =   {"56651555"=>{:x=>559, :y=>359, :w=>802, :h=>482}}
  m.last_tiling_focus =   nil
  m.last_float_focus =   nil
  $cmds << ["wmctrl -l",
   "0x02000003 -1 <redacted>\n" +
   "0x03600003  0 <redacted>\n" +
   "0x01c00013 -1 <redacted>\n" +
   "0x0600002c  0 <redacted>\n" +
   "0x03601881  0 <redacted>\n" +
   "0x03601aec  0 <redacted>\n" +
   "0x03603a7c  0 <redacted>\n" +
   "0x03605382  0 <redacted>\n" +
   "0x03606f23  0 <redacted>\n",
   0]
  $cmds << ["xdotool getactivewindow", "56623107\n", 0]
  $cmds << ["wmctrl -ia 0x3606f23", "", 0]

  process(m, :focus_down)


  assert_eq m.current_tag, 0

  assert_eq m.tags, [{:columns=>
     [["56629377", "56644482"],
      ["56638076", "56629996", "56623107", "56651555"]],
    :old_columns=>[["56629377"], ["56638076", "56629996", "56623107"]],
    :column_sizes=>[{:x=>20, :w=>1330}, {:x=>1370, :w=>530}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil]},
   {:columns=>[["56629377"]],
    :old_columns=>[["56629377"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
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
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]}]
  assert_eq m.floating_locations,   {"56651555"=>{:x=>559, :y=>359, :w=>802, :h=>482}}
  assert_eq m.last_tiling_focus,   nil
  assert_eq m.last_float_focus,   nil
end


scenario do
  m = Manager.new('')
  m.current_tag = 0
  m.tags =   [{:columns=>
     [["56629377", "56644482"],
      ["56638076", "56629996", "56623107", "56651555"]],
    :old_columns=>[["56629377"], ["56638076", "56629996", "56623107"]],
    :column_sizes=>[{:x=>20, :w=>1330}, {:x=>1370, :w=>530}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil]},
   {:columns=>[["56629377"]],
    :old_columns=>[["56629377"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
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
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]}]
  m.floating_locations =   {"56651555"=>{:x=>559, :y=>359, :w=>802, :h=>482}}
  m.last_tiling_focus =   nil
  m.last_float_focus =   nil
  $cmds << ["wmctrl -l",
   "0x02000003 -1 <redacted>\n" +
   "0x03600003  0 <redacted>\n" +
   "0x01c00013 -1 <redacted>\n" +
   "0x0600002c  0 <redacted>\n" +
   "0x03601881  0 <redacted>\n" +
   "0x03601aec  0 <redacted>\n" +
   "0x03603a7c  0 <redacted>\n" +
   "0x03605382  0 <redacted>\n" +
   "0x03606f23  0 <redacted>\n",
   0]
  $cmds << ["xdotool getactivewindow", "56651555\n", 0]
  $cmds << ["zenity --question --ok-label OK --cancel-label Cancel --text \"Close window?\"",
   "",
   1]

  process(m, :close_window)


  assert_eq m.current_tag, 0

  assert_eq m.tags, [{:columns=>
     [["56629377", "56644482"],
      ["56638076", "56629996", "56623107", "56651555"]],
    :old_columns=>[["56629377"], ["56638076", "56629996", "56623107"]],
    :column_sizes=>[{:x=>20, :w=>1330}, {:x=>1370, :w=>530}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil]},
   {:columns=>[["56629377"]],
    :old_columns=>[["56629377"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
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
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]}]
  assert_eq m.floating_locations,   {"56651555"=>{:x=>559, :y=>359, :w=>802, :h=>482}}
  assert_eq m.last_tiling_focus,   nil
  assert_eq m.last_float_focus,   nil
end


scenario do
  m = Manager.new('')
  m.current_tag = 0
  m.tags =   [{:columns=>
     [["56629377", "56644482"],
      ["56638076", "56629996", "56623107", "56651555"]],
    :old_columns=>[["56629377"], ["56638076", "56629996", "56623107"]],
    :column_sizes=>[{:x=>20, :w=>1330}, {:x=>1370, :w=>530}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil]},
   {:columns=>[["56629377"]],
    :old_columns=>[["56629377"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
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
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]}]
  m.floating_locations =   {"56651555"=>{:x=>559, :y=>359, :w=>802, :h=>482}}
  m.last_tiling_focus =   nil
  m.last_float_focus =   nil
  $cmds << ["wmctrl -l",
   "0x02000003 -1 <redacted>\n" +
   "0x03600003  0 <redacted>\n" +
   "0x01c00013 -1 <redacted>\n" +
   "0x0600002c  0 <redacted>\n" +
   "0x03601881  0 <redacted>\n" +
   "0x03601aec  0 <redacted>\n" +
   "0x03603a7c  0 <redacted>\n" +
   "0x03605382  0 <redacted>\n" +
   "0x03606f23  0 <redacted>\n",
   0]
  $cmds << ["xdotool getactivewindow", "56623107\n", 0]
  $cmds << ["wmctrl -ia 0x3606f23", "", 0]

  process(m, :focus_down)


  assert_eq m.current_tag, 0

  assert_eq m.tags, [{:columns=>
     [["56629377", "56644482"],
      ["56638076", "56629996", "56623107", "56651555"]],
    :old_columns=>[["56629377"], ["56638076", "56629996", "56623107"]],
    :column_sizes=>[{:x=>20, :w=>1330}, {:x=>1370, :w=>530}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil]},
   {:columns=>[["56629377"]],
    :old_columns=>[["56629377"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
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
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]}]
  assert_eq m.floating_locations,   {"56651555"=>{:x=>559, :y=>359, :w=>802, :h=>482}}
  assert_eq m.last_tiling_focus,   nil
  assert_eq m.last_float_focus,   nil
end


scenario do
  m = Manager.new('')
  m.current_tag = 0
  m.tags =   [{:columns=>
     [["56629377", "56644482"],
      ["56638076", "56629996", "56623107", "56651555"]],
    :old_columns=>[["56629377"], ["56638076", "56629996", "56623107"]],
    :column_sizes=>[{:x=>20, :w=>1330}, {:x=>1370, :w=>530}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil]},
   {:columns=>[["56629377"]],
    :old_columns=>[["56629377"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
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
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]}]
  m.floating_locations =   {"56651555"=>{:x=>559, :y=>359, :w=>802, :h=>482}}
  m.last_tiling_focus =   nil
  m.last_float_focus =   nil
  $cmds << ["wmctrl -l",
   "0x02000003 -1 <redacted>\n" +
   "0x03600003  0 <redacted>\n" +
   "0x01c00013 -1 <redacted>\n" +
   "0x0600002c  0 <redacted>\n" +
   "0x03601881  0 <redacted>\n" +
   "0x03601aec  0 <redacted>\n" +
   "0x03603a7c  0 <redacted>\n" +
   "0x03605382  0 <redacted>\n" +
   "0x03606f23  0 <redacted>\n",
   0]
  $cmds << ["xdotool getactivewindow", "56651555\n", 0]
  $cmds << ["wmctrl -ia 0x3600003", "", 0]

  process(m, :focus_up)


  assert_eq m.current_tag, 0

  assert_eq m.tags, [{:columns=>
     [["56629377", "56644482"],
      ["56638076", "56629996", "56623107", "56651555"]],
    :old_columns=>[["56629377"], ["56638076", "56629996", "56623107"]],
    :column_sizes=>[{:x=>20, :w=>1330}, {:x=>1370, :w=>530}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil]},
   {:columns=>[["56629377"]],
    :old_columns=>[["56629377"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
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
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]}]
  assert_eq m.floating_locations,   {"56651555"=>{:x=>559, :y=>359, :w=>802, :h=>482}}
  assert_eq m.last_tiling_focus,   nil
  assert_eq m.last_float_focus,   nil
end


scenario do
  m = Manager.new('')
  m.current_tag = 0
  m.tags =   [{:columns=>
     [["56629377", "56644482"],
      ["56638076", "56629996", "56623107", "56651555"]],
    :old_columns=>[["56629377"], ["56638076", "56629996", "56623107"]],
    :column_sizes=>[{:x=>20, :w=>1330}, {:x=>1370, :w=>530}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil]},
   {:columns=>[["56629377"]],
    :old_columns=>[["56629377"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
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
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]}]
  m.floating_locations =   {"56651555"=>{:x=>559, :y=>359, :w=>802, :h=>482}}
  m.last_tiling_focus =   nil
  m.last_float_focus =   nil
  $cmds << ["wmctrl -l",
   "0x02000003 -1 <redacted>\n" +
   "0x03600003  0 <redacted>\n" +
   "0x01c00013 -1 <redacted>\n" +
   "0x0600002c  0 <redacted>\n" +
   "0x03601881  0 <redacted>\n" +
   "0x03601aec  0 <redacted>\n" +
   "0x03603a7c  0 <redacted>\n" +
   "0x03605382  0 <redacted>\n" +
   "0x03606f23  0 <redacted>\n",
   0]
  $cmds << ["xdotool getactivewindow", "56623107\n", 0]
  $cmds << ["wmctrl -ia 0x3606f23", "", 0]

  process(m, :focus_down)


  assert_eq m.current_tag, 0

  assert_eq m.tags, [{:columns=>
     [["56629377", "56644482"],
      ["56638076", "56629996", "56623107", "56651555"]],
    :old_columns=>[["56629377"], ["56638076", "56629996", "56623107"]],
    :column_sizes=>[{:x=>20, :w=>1330}, {:x=>1370, :w=>530}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil]},
   {:columns=>[["56629377"]],
    :old_columns=>[["56629377"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
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
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]}]
  assert_eq m.floating_locations,   {"56651555"=>{:x=>559, :y=>359, :w=>802, :h=>482}}
  assert_eq m.last_tiling_focus,   nil
  assert_eq m.last_float_focus,   nil
end


scenario do
  m = Manager.new('')
  m.current_tag = 0
  m.tags =   [{:columns=>
     [["56629377", "56644482"],
      ["56638076", "56629996", "56623107", "56651555"]],
    :old_columns=>[["56629377"], ["56638076", "56629996", "56623107"]],
    :column_sizes=>[{:x=>20, :w=>1330}, {:x=>1370, :w=>530}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil]},
   {:columns=>[["56629377"]],
    :old_columns=>[["56629377"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
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
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]}]
  m.floating_locations =   {"56651555"=>{:x=>559, :y=>359, :w=>802, :h=>482}}
  m.last_tiling_focus =   nil
  m.last_float_focus =   nil
  $cmds << ["wmctrl -l",
   "0x02000003 -1 <redacted>\n" +
   "0x03600003  0 <redacted>\n" +
   "0x01c00013 -1 <redacted>\n" +
   "0x0600002c  0 <redacted>\n" +
   "0x03601881  0 <redacted>\n" +
   "0x03601aec  0 <redacted>\n" +
   "0x03603a7c  0 <redacted>\n" +
   "0x03605382  0 <redacted>\n" +
   "0x03606f23  0 <redacted>\n",
   0]
  $cmds << ["xdotool getactivewindow", "56651555\n", 0]
  $cmds << ["zenity --question --ok-label OK --cancel-label Cancel --text \"Close window?\"",
   "",
   0]
  $cmds << ["wmctrl -i -c 56651555", "", 0]
  $cmds << ["wmctrl -l",
   "0x02000003 -1 <redacted>\n" +
   "0x03600003  0 <redacted>\n" +
   "0x01c00013 -1 <redacted>\n" +
   "0x0600002c  0 <redacted>\n" +
   "0x03601881  0 <redacted>\n" +
   "0x03601aec  0 <redacted>\n" +
   "0x03603a7c  0 <redacted>\n" +
   "0x03605382  0 <redacted>\n",
   0]
  $cmds << ["xdotool getwindowname 56629377", "<redacted>\n", 0]
  $cmds << ["xdotool getwindowname 56644482", "<redacted>\n", 0]
  $cmds << ["xdotool getwindowname 56638076", "<redacted>\n", 0]
  $cmds << ["xdotool getwindowname 56629996", "<redacted>\n", 0]
  $cmds << ["xdotool getwindowname 56623107", "<redacted>\n", 0]
  $cmds << ["xrandr",
   "Screen 0: minimum 320 x 200, current 1920 x 1200, maximum 8192 x 8192\n" +
   "Virtual-1 connected primary 1920x1200+0+0 (normal left inverted right x axis y axis) 0mm x 0mm\n" +
   "   1024x768      59.95 +  60.00  \n" +
   "   4096x2160     60.00    59.94  \n" +
   "   2560x1600     59.99    59.97  \n" +
   "   1920x1440     60.00  \n" +
   "   1856x1392     60.00  \n" +
   "   1792x1344     60.00  \n" +
   "   2048x1152     60.00  \n" +
   "   1920x1200     59.88*   59.95  \n" +
   "   1920x1080     60.00  \n" +
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
   "Virtual-16 disconnected\n",
   0]
  $cmds << ["ps aux | grep int2",
   "paralle+   26291  0.0  0.0   2308   816 pts/0    S+   19:32   0:00 sh -c ps aux | grep int2\n" +
   "paralle+   26293  0.0  0.0   9016  1880 pts/0    S+   19:32   0:00 grep int2\n",
   0]
  $cmds << ["wmctrl -ia 0x3601881", "", 0]
  $cmds << ["wmctrl -ia 0x3605382", "", 0]
  $cmds << ["wmctrl -ia 0x3603a7c", "", 0]
  $cmds << ["wmctrl -ia 0x3601aec", "", 0]
  $cmds << ["wmctrl -ia 0x3600003", "", 0]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 56629377",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n",
   0]
  $cmds << ["xwininfo -id 56629377",
   "\n" +
   "xwininfo: Window id: 0x3601881 \n" +
   "\n" +
   "  Absolute upper-left X:  20\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 1330\n" +
   "  Height: 557\n" +
   "  Depth: 32\n" +
   "  Visual: 0x6cb\n" +
   "  Visual Class: TrueColor\n" +
   "  Border width: 0\n" +
   "  Class: InputOutput\n" +
   "  Colormap: 0x3600002 (not installed)\n" +
   "  Bit Gravity State: NorthWestGravity\n" +
   "  Window Gravity State: NorthWestGravity\n" +
   "  Backing Store State: NotUseful\n" +
   "  Save Under State: no\n" +
   "  Map State: IsViewable\n" +
   "  Override Redirect State: no\n" +
   "  Corners:  +20+46  -570+46  -570-597  +20-597\n" +
   "  -geometry 132x27+20+46\n" +
   "\n",
   0]
  $cmds << ["wmctrl -ir 56629377 -b toggle,maximized_vert,maximized_horz", "", 0]
  $cmds << ["wmctrl -ir 56629377 -b remove,maximized_vert,maximized_horz", "", 0]
  $cmds << ["xdotool getwindowgeometry --shell 56629377",
   "WINDOW=56629377\n" +
   "X=20\n" +
   "Y=46\n" +
   "WIDTH=1322\n" +
   "HEIGHT=542\n" +
   "SCREEN=0\n",
   0]
  $cmds << ["xdotool windowsize 56629377 1330 557", "", 0]
  $cmds << ["xdotool windowmove 56629377 20 46", "", 0]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 56644482",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n",
   0]
  $cmds << ["xwininfo -id 56644482",
   "\n" +
   "xwininfo: Window id: 0x3605382 \n" +
   "\n" +
   "  Absolute upper-left X:  20\n" +
   "  Absolute upper-left Y:  623\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 1330\n" +
   "  Height: 557\n" +
   "  Depth: 32\n" +
   "  Visual: 0x6cb\n" +
   "  Visual Class: TrueColor\n" +
   "  Border width: 0\n" +
   "  Class: InputOutput\n" +
   "  Colormap: 0x3600002 (not installed)\n" +
   "  Bit Gravity State: NorthWestGravity\n" +
   "  Window Gravity State: NorthWestGravity\n" +
   "  Backing Store State: NotUseful\n" +
   "  Save Under State: no\n" +
   "  Map State: IsViewable\n" +
   "  Override Redirect State: no\n" +
   "  Corners:  +20+623  -570+623  -570-20  +20-20\n" +
   "  -geometry 132x27+20-20\n" +
   "\n",
   0]
  $cmds << ["wmctrl -ir 56644482 -b toggle,maximized_vert,maximized_horz", "", 0]
  $cmds << ["wmctrl -ir 56644482 -b remove,maximized_vert,maximized_horz", "", 0]
  $cmds << ["xdotool getwindowgeometry --shell 56644482",
   "WINDOW=56644482\n" +
   "X=20\n" +
   "Y=623\n" +
   "WIDTH=1322\n" +
   "HEIGHT=542\n" +
   "SCREEN=0\n",
   0]
  $cmds << ["xdotool windowsize 56644482 1330 557", "", 0]
  $cmds << ["xdotool windowmove 56644482 20 623", "", 0]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 56638076",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n",
   0]
  $cmds << ["xwininfo -id 56638076",
   "\n" +
   "xwininfo: Window id: 0x3603a7c \n" +
   "\n" +
   "  Absolute upper-left X:  1370\n" +
   "  Absolute upper-left Y:  46\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 522\n" +
   "  Height: 262\n" +
   "  Depth: 32\n" +
   "  Visual: 0x6cb\n" +
   "  Visual Class: TrueColor\n" +
   "  Border width: 0\n" +
   "  Class: InputOutput\n" +
   "  Colormap: 0x3600002 (not installed)\n" +
   "  Bit Gravity State: NorthWestGravity\n" +
   "  Window Gravity State: NorthWestGravity\n" +
   "  Backing Store State: NotUseful\n" +
   "  Save Under State: no\n" +
   "  Map State: IsViewable\n" +
   "  Override Redirect State: no\n" +
   "  Corners:  +1370+46  -28+46  -28-892  +1370-892\n" +
   "  -geometry 52x13-28+46\n" +
   "\n",
   0]
  $cmds << ["wmctrl -ir 56638076 -b toggle,maximized_vert,maximized_horz", "", 0]
  $cmds << ["wmctrl -ir 56638076 -b remove,maximized_vert,maximized_horz", "", 0]
  $cmds << ["xdotool getwindowgeometry --shell 56638076",
   "WINDOW=56638076\n" +
   "X=1370\n" +
   "Y=46\n" +
   "WIDTH=522\n" +
   "HEIGHT=262\n" +
   "SCREEN=0\n",
   0]
  $cmds << ["xdotool windowsize 56638076 530 364", "", 0]
  $cmds << ["xdotool windowmove 56638076 1370 46", "", 0]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 56629996",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n",
   0]
  $cmds << ["xwininfo -id 56629996",
   "\n" +
   "xwininfo: Window id: 0x3601aec \n" +
   "\n" +
   "  Absolute upper-left X:  1370\n" +
   "  Absolute upper-left Y:  334\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 522\n" +
   "  Height: 262\n" +
   "  Depth: 32\n" +
   "  Visual: 0x6cb\n" +
   "  Visual Class: TrueColor\n" +
   "  Border width: 0\n" +
   "  Class: InputOutput\n" +
   "  Colormap: 0x3600002 (not installed)\n" +
   "  Bit Gravity State: NorthWestGravity\n" +
   "  Window Gravity State: NorthWestGravity\n" +
   "  Backing Store State: NotUseful\n" +
   "  Save Under State: no\n" +
   "  Map State: IsViewable\n" +
   "  Override Redirect State: no\n" +
   "  Corners:  +1370+334  -28+334  -28-604  +1370-604\n" +
   "  -geometry 52x13-28+334\n" +
   "\n",
   0]
  $cmds << ["wmctrl -ir 56629996 -b toggle,maximized_vert,maximized_horz", "", 0]
  $cmds << ["wmctrl -ir 56629996 -b remove,maximized_vert,maximized_horz", "", 0]
  $cmds << ["xdotool getwindowgeometry --shell 56629996",
   "WINDOW=56629996\n" +
   "X=1370\n" +
   "Y=334\n" +
   "WIDTH=522\n" +
   "HEIGHT=262\n" +
   "SCREEN=0\n",
   0]
  $cmds << ["xdotool windowsize 56629996 530 364", "", 0]
  $cmds << ["xdotool windowmove 56629996 1370 430", "", 0]
  $cmds << ["xprop _NET_FRAME_EXTENTS -id 56623107",
   "_NET_FRAME_EXTENTS(CARDINAL) = 0, 0, 0, 0\n",
   0]
  $cmds << ["xwininfo -id 56623107",
   "\n" +
   "xwininfo: Window id: 0x3600003 \n" +
   "\n" +
   "  Absolute upper-left X:  1370\n" +
   "  Absolute upper-left Y:  622\n" +
   "  Relative upper-left X:  0\n" +
   "  Relative upper-left Y:  0\n" +
   "  Width: 522\n" +
   "  Height: 262\n" +
   "  Depth: 32\n" +
   "  Visual: 0x6cb\n" +
   "  Visual Class: TrueColor\n" +
   "  Border width: 0\n" +
   "  Class: InputOutput\n" +
   "  Colormap: 0x3600002 (not installed)\n" +
   "  Bit Gravity State: NorthWestGravity\n" +
   "  Window Gravity State: NorthWestGravity\n" +
   "  Backing Store State: NotUseful\n" +
   "  Save Under State: no\n" +
   "  Map State: IsViewable\n" +
   "  Override Redirect State: no\n" +
   "  Corners:  +1370+622  -28+622  -28-316  +1370-316\n" +
   "  -geometry 52x13-28+622\n" +
   "\n",
   0]
  $cmds << ["wmctrl -ir 56623107 -b toggle,maximized_vert,maximized_horz", "", 0]
  $cmds << ["wmctrl -ir 56623107 -b remove,maximized_vert,maximized_horz", "", 0]
  $cmds << ["xdotool getwindowgeometry --shell 56623107",
   "WINDOW=56623107\n" +
   "X=1370\n" +
   "Y=622\n" +
   "WIDTH=522\n" +
   "HEIGHT=262\n" +
   "SCREEN=0\n",
   0]
  $cmds << ["xdotool windowsize 56623107 530 364", "", 0]
  $cmds << ["xdotool windowmove 56623107 1370 814", "", 0]
  $cmds << ["wmctrl -ia 0x3603a7c", "", 0]

  process(m, :close_window)


  assert_eq m.current_tag, 0

  assert_eq m.tags, [{:columns=>[["56629377", "56644482"], ["56638076", "56629996", "56623107"]],
    :old_columns=>[["56629377"], ["56638076", "56629996", "56623107"]],
    :column_sizes=>[{:x=>20, :w=>1330}, {:x=>1370, :w=>530}],
    :fullscreen=>nil,
    :column_maximized=>[nil, nil]},
   {:columns=>[["56629377"]],
    :old_columns=>[["56629377"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[["100663340"]],
    :old_columns=>[["100663340"]],
    :column_sizes=>[{:x=>20, :w=>1880}],
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
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]},
   {:columns=>[[]],
    :old_columns=>[],
    :column_sizes=>[],
    :fullscreen=>nil,
    :column_maximized=>[]}]
  assert_eq m.floating_locations,   {"56651555"=>{:x=>559, :y=>359, :w=>802, :h=>482}}
  assert_eq m.last_tiling_focus,   nil
  assert_eq m.last_float_focus,   nil
end
