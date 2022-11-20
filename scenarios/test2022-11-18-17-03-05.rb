
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
