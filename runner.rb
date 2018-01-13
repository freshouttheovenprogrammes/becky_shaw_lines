require './lib/scene_1_module'
require './lib/scene_2_module'
require './lib/scene_3_module'
require './lib/scene_4_module'
require './lib/scene_5_module'
require './lib/all_module'
require './lib/file_reader'




class Runner
  include Scene1, Scene2, Scene3, Scene4, Scene5, AllScenes

  def main_menu
    puts "Hello and welcome to the Becky Shaw simulation experience!!!!!"
    sleep(0.5)
    puts "¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥"
    sleep(0.5)
    puts "Which act would you like to rehearse? Choose from (1) - (5) or ALL"
    sleep(0.5)
    puts "Just type Scene #"
    sleep(0.5)
  end

  def new_scene_menu
    puts "Ok, which scene would you like to rehearse now?"
    puts "Choose from (1) - (5) or ALL "
  end


r = Runner.new
loop do
  r.main_menu
  input = gets.chomp
    if input.downcase == "scene 1"
      r.some_method
    elsif input.downcase == "scene 2"
      r.another_method
    elsif input.downcase == "scene 3"
      r.another_1
    elsif input.downcase == "scene 4"
      r.create_becky_lines_4
      r.create_max_lines_4
      puts "You say the first line here. Press Enter to begin"
      gets.chomp
        loop do
          r.becky_output_4
          gets.chomp
          r.max_say_4
          next_one = gets.chomp
          if next_one == '-hint'
            r.hint_4
          end
          break if next_one == 'exit'
        end
    elsif input.downcase == "scene 5"
      r.another_3
    elsif input.downcase == "all"
      r.final
    elsif input.downcase == "-hint"
      r.hint
    elsif input.downcase == "help"
      r.help
    end
  # r.other_actor_lines
  # r.amber_current_line
  next_one = gets.chomp
  break if next_one == "exit"
end
end


#TODO

  # * What happens when I get to the end of the scene?
  # * Make different Scene Functionality
  # * Add -help feature
  #   • -hint will give first three words to the thing
  # * What about when the other character is preforming an action that is recorded?
  # * Make something that documents how many times she has needed cues
