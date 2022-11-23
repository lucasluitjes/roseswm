# RosesWM

RosesWM is not actually a window manager. Instead it uses `xbindkeys`, `wmctrl`, `xdotool`, `xwininfo`, `xprop`, and `zenity` to implement tiling behaviour on top of a normal desktop environment like XFCE. Heavily inspired by wmii.

It is an experiment to see if it is possible to combine the polish and ease-of-use of a modern desktop environment, with the power of a tiling window manager. 

Pros:

- You get all the polish and GUI that a modern desktop environment has to offer.
- The whole thing is written in ruby, no need to use C if you want to change things.
- Controllable through a UNIX socket, so most simple behaviour can be scripted in any language you like.

Cons:

- `wmctrl`/`xdotool`/`xwininfo` offer a lot, but in the end RosesWM has less control over window behaviour than an actual window manager. 
- Due to the above, getting windows sized/positioned/aligned pixel perfect requires increasingly hacky solutions and won't always work. This was particularly problematic on GNOME but also occurs with KDE/XFCE.

Screenshot of RosesWM running on top of XFCE:

![example screenshot](https://raw.githubusercontent.com/lucasluitjes/roseswm/main/screenshot.png)

## Running it

Note: this project is pretty rough around the edges. There is no configuration file, just a few constants in `run.rb`. During development I've been running it on xfce4. I don't know how well it does on other desktop environments.

To run: 

- Clone this repository.
- Make sure the following tools are all linstalled: `ruby`, `xbindkeys`, `wmctrl`, `xdotool`, `xwininfo`, `xprop`, `xrandr`, and `zenity`.
- Set up `~/.xbindkeysrc` and reload/restart xbindkeys. See an example at the bottom of this README.
- Disable/change any interfering keyboard combinations. In XFCE you'll want to search the settings for the word "key" and go to each menu. Last time I found at least four places with potentially interfering keyboard combinations.
- Optionally copy `local_config.rb.example` to `local_config.rb` (janky local hooks system).

Then cd to this repository and run `ruby run.rb`.

See the `~/.xbindkeysrc` commands for some idea of how to use this. Other than that, you'll probably want to look at the wmii documentation, that's what pretty much all the functionality is based on. Supported wmii features:

- Columns, rows.
- Resizing columns.
- Default mode, maximized mode (no stacking, yet).
- Fullscreen mode.
- Tags but only numbered (no status bar to display the names in).

## Todos

- when cleaning up closed windows, make sure to also clean up fullscreen-window state. Right now if you close a fullscreen window you get a broken state.
- when going back and forth between maximized columns, focus the previously selected instead of the top one
- Resize windows vertically.
- Reduce the flickering on window resizing/moving. Most of it is caused by doing hide/raise/resize for all windows to be safe, rather than just the necessary windows. For raising/minimizing/positioning we could probably do it in a helper that checks the current state before doing actual changes.
- xfce terminals (and possibly other windows), particularly when margins are small-ish like 10px, will often be positioned slightly off. But if you redraw a few times they're eventually right. Maybe redraw in a loop until they're correct.
- Improve positioning/resizing/alignment of windows.
  - Dig deeper in the X documentation, see what's possible without actually being a window manager. Or:
  - Per-application margin adjustments as a workaround.
- Figure out a nice way to draw on the screen from ruby.
- Draw a status bar for numbered tags.
- Draw title bars and add stacking mode.
- Docs.
- Support more desktop environments.

## Tests

If you set the `CREATE_SCENARIOS` constant to true in run.rb, a test scenario will be generated in the scenarios folder every time you run it. The scenario will contain the initial state of the window manager, every command that is run, and the input/output of each shell-out. 

It's an extremely verbose format, so you probably only want to do this if you need a test case for a specific behaviour.

## .xbindkeysrc example 

```
"echo 'start_terminal' |socat - UNIX-CONNECT:/tmp/roseswm"
  Alt+Mod2 + Return
"echo 'focus_left' |socat - UNIX-CONNECT:/tmp/roseswm"
  Alt+Mod2 + h
"echo 'focus_down' |socat - UNIX-CONNECT:/tmp/roseswm"
  Alt+Mod2 + j
"echo 'focus_up' |socat - UNIX-CONNECT:/tmp/roseswm"
  Alt+Mod2 + k
"echo 'focus_right' |socat - UNIX-CONNECT:/tmp/roseswm"
  Alt+Mod2 + l
"echo 'focus_1' |socat - UNIX-CONNECT:/tmp/roseswm"
  Alt+Mod2 + 1
"echo 'focus_2' |socat - UNIX-CONNECT:/tmp/roseswm"
  Alt+Mod2 + 2
"echo 'focus_3' |socat - UNIX-CONNECT:/tmp/roseswm"
  Alt+Mod2 + 3
"echo 'focus_4' |socat - UNIX-CONNECT:/tmp/roseswm"
  Alt+Mod2 + 4
"echo 'focus_5' |socat - UNIX-CONNECT:/tmp/roseswm"
  Alt+Mod2 + 5
"echo 'focus_6' |socat - UNIX-CONNECT:/tmp/roseswm"
  Alt+Mod2 + 6
"echo 'focus_7' |socat - UNIX-CONNECT:/tmp/roseswm"
  Alt+Mod2 + 7
"echo 'focus_8' |socat - UNIX-CONNECT:/tmp/roseswm"
  Alt+Mod2 + 8
"echo 'focus_9' |socat - UNIX-CONNECT:/tmp/roseswm"
  Alt+Mod2 + 9
"echo 'toggle_maximized' |socat - UNIX-CONNECT:/tmp/roseswm"
  Alt+Mod2 + m
"echo 'toggle_fullscreen' |socat - UNIX-CONNECT:/tmp/roseswm"
  Alt+Mod2 + f
"echo 'focus_tile_or_float' |socat - UNIX-CONNECT:/tmp/roseswm"
  Alt+Mod2 + space
"echo 'move_left' |socat - UNIX-CONNECT:/tmp/roseswm"
  Shift+Alt+Mod2 + h
"echo 'move_down' |socat - UNIX-CONNECT:/tmp/roseswm" 
  Shift+Alt+Mod2 + j
"echo 'move_up' |socat - UNIX-CONNECT:/tmp/roseswm"
  Shift+Alt+Mod2 + k
"echo 'move_right' |socat - UNIX-CONNECT:/tmp/roseswm"
  Shift+Alt+Mod2 + l
"echo 'move_tile_or_float' |socat - UNIX-CONNECT:/tmp/roseswm"
  Shift+Alt+Mod2 + space
"echo 'move_1' |socat - UNIX-CONNECT:/tmp/roseswm"
  Shift+Alt+Mod2 + 1
"echo 'move_2' |socat - UNIX-CONNECT:/tmp/roseswm"
  Shift+Alt+Mod2 + 2
"echo 'move_3' |socat - UNIX-CONNECT:/tmp/roseswm"
  Shift+Alt+Mod2 + 3
"echo 'move_4' |socat - UNIX-CONNECT:/tmp/roseswm"
  Shift+Alt+Mod2 + 4
"echo 'move_5' |socat - UNIX-CONNECT:/tmp/roseswm"
  Shift+Alt+Mod2 + 5
"echo 'move_6' |socat - UNIX-CONNECT:/tmp/roseswm"
  Shift+Alt+Mod2 + 6
"echo 'move_7' |socat - UNIX-CONNECT:/tmp/roseswm"
  Shift+Alt+Mod2 + 7
"echo 'move_8' |socat - UNIX-CONNECT:/tmp/roseswm"
  Shift+Alt+Mod2 + 8
"echo 'move_9' |socat - UNIX-CONNECT:/tmp/roseswm"
  Shift+Alt+Mod2 + 9
"echo 'expand_left' |socat - UNIX-CONNECT:/tmp/roseswm"
  Control+Shift+Mod2+Mod4 + h
"echo 'expand_down' |socat - UNIX-CONNECT:/tmp/roseswm"
  Control+Shift+Mod2+Mod4 + j
"echo 'expand_up' |socat - UNIX-CONNECT:/tmp/roseswm"
  Control+Shift+Mod2+Mod4 + k
"echo 'expand_right' |socat - UNIX-CONNECT:/tmp/roseswm"
  Control+Shift+Mod2+Mod4 + l
"echo 'close_window' |socat - UNIX-CONNECT:/tmp/roseswm"
  Shift+Alt+Mod2 + c
"echo 'force_resize' |socat - UNIX-CONNECT:/tmp/roseswm"
  Shift+Alt+Mod2 + r
```
