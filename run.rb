require 'pp'
require 'json'
require 'socket'
require 'thread'
begin
  require 'pry' 
rescue LoadError
  puts 'pry not found'
end

require_relative 'lib/manager'
require_relative 'lib/controller'

module LocalConfig # to be overridden
end
begin
require_relative 'local_config'
rescue LoadError
end

SET_GEOMETRY_ITERATIONS = 1

HOSTNAME = File.read('/etc/hostname').strip
OFFSET_X = 0#50 # the gnome dock
OFFSET_Y = 26 # the top menu bar
RESIZE_AMOUNT = 50

# persisting sizes is handy when you're developing, but if you want to quickly change the margins it's better to forget
PERSIST_SIZES = true#false
MARGIN = 20

CREATE_SCENARIOS = false
#CREATE_SCENARIOS = true

SCENARIO_PATH = "scenarios/test#{Time.now.strftime("%Y-%m-%d %T").gsub(/[^\d]/,'-')}.rb"

if CREATE_SCENARIOS
  File.open(SCENARIO_PATH, 'a') do |f|
    f.puts
    %w(HOSTNAME OFFSET_X OFFSET_Y RESIZE_AMOUNT PERSIST_SIZES MARGIN).each do |const|
      f.puts "#{const} = #{Kernel.const_get(const.to_sym).inspect}"
    end
    f.puts
  end
end

$cmds = []

$lock = Mutex.new
m = Manager.new('/tmp/roseswm-state')
m.redraw
controller = Controller.new(m)

alias old_backtick `
def `(cmd)
  if CREATE_SCENARIOS 
    result = old_backtick(cmd)
    if cmd.include?("xwininfo")
      result.gsub!(/(xwininfo: Window id: [^ ]+ ).*$/, '\1')
    elsif cmd.include?('wmctrl -l')
      result.gsub!(/^([^ ]+ +[\d-]+ ).*$/,'\1<redacted>')
    elsif cmd.include?('getwindowname')
      result = "<redacted>\n"
    end
    $cmds << [cmd, result, $?.exitstatus]
    result
  else
    old_backtick(cmd)
  end
end

def pp_for_scenario(obj)
  result = ""
  PP.pp(obj, result)
  result.gsub(/^/, "  ")
end

Thread.abort_on_exception = true
Thread.new do
  loop do 
    $lock.synchronize do
      if CREATE_SCENARIOS
        scenario_start = "\n\nscenario do\n  m = Manager.new('')\n  m.current_tag = #{m.current_tag}\n  m.tags = #{pp_for_scenario m.tags}\n"
        if m.remove_dead_windows_and_redraw!
          File.open(SCENARIO_PATH, 'a') do |f|
            f.puts scenario_start
            $cmds.each do |n|
              f.puts "  $cmds << #{pp_for_scenario(n).strip}"
            end
            f.puts "\n  m.remove_dead_windows_and_redraw!"
            f.puts "\n\n  assert_eq m.current_tag, #{m.current_tag.inspect}"
            f.puts "\n  assert_eq m.tags, #{pp_for_scenario(m.tags).strip}"
            f.puts "end"
          end
        end
        $cmds = []
      else
        m.remove_dead_windows_and_redraw!
      end

    end
    sleep 0.5
  end
end

def listen
  begin 
    File.unlink("/tmp/roseswm") if File.exist?("/tmp/roseswm")
    server = UNIXServer.new("/tmp/roseswm")
    loop do 
      socket = server.accept
      $lock.synchronize do 
        yield socket.read.strip.to_sym
      end
      socket.close
    end
  ensure
    File.unlink("/tmp/roseswm")
    server.close
  end
end

listen do |cmd| 
  if CREATE_SCENARIOS 
    File.open(SCENARIO_PATH, 'a') do |f|
      f.puts "\n\nscenario do\n  m = Manager.new('')\n  m.current_tag = #{m.current_tag}\n  m.tags = #{pp_for_scenario m.tags}"
      [:floating_locations, :last_tiling_focus, :last_float_focus]. each do |prop|
        f.puts "  m.#{prop.to_s} = #{pp_for_scenario(m.send(prop))}"
      end
      process(m, cmd) 
      $cmds.each do |n|
        f.puts "  $cmds << #{pp_for_scenario(n).strip}"
      end
      f.puts "\n  process(m, #{cmd.inspect})"
      f.puts "\n\n  assert_eq m.current_tag, #{m.current_tag.inspect}"
      f.puts "\n  assert_eq m.tags, #{pp_for_scenario(m.tags).strip}"
      [:floating_locations, :last_tiling_focus, :last_float_focus]. each do |prop|
        f.puts "  assert_eq m.#{prop.to_s}, #{pp_for_scenario(m.send(prop))}"
      end
      f.puts "end"
      $cmds = []
    end
  else
    controller.process(cmd)
    if LocalConfig.respond_to?(:after_cmd)
      LocalConfig.after_cmd(m, cmd)
    end
  end
end
