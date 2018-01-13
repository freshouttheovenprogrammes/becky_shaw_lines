require './lib/scene_1_module'
require './lib/scene_2_module'
require './lib/scene_3_module'
require './lib/scene_4_module'
require './lib/scene_5_module'
require './lib/all_module'
require './lib/help_module'
require './lib/file_reader'

class Runner
  attr_accessor :count, :hint_count

  include Scene1, Scene2, Scene3, Scene4, Scene5, AllScenes, HelpModule

  def initialize
    @count = 0
    @hint_count = 0
  end

  def reset_count
    @count = 0
  end

  def reset_hint_count
    @hint_count = 0
  end

  def blow_up
    puts "Thats not something I know what to do with! Let me take you to the main menu"
    main_menu
    reset_hint_count
  end

  def main_menu
    puts "Hello and welcome to the Becky Shaw simulation experience!!!!!"
    sleep(0.45)
    puts "¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥"
    sleep(0.45)
    puts "Type help if you need some instructions!"
    sleep(0.45)
    puts "Which act would you like to rehearse? Choose from (1) - (5) or ALL"
    sleep(0.45)
    puts "Just type Scene #"
    sleep(0.45)
    reset_count
    reset_hint_count
  end

  def new_scene_menu
    reset_count
    puts "Ok, which scene would you like to rehearse now?"
    puts "Choose from (1) - (5) or ALL "
    user_input = gets.chomp
    if user_input == 'scene 1'
      scene_1_loop
    elsif user_input == 'scene 2'
      scene_2_loop
    elsif user_input == 'scene 3'
      scene_3_loop
    elsif user_input == 'scene 4'
      scene_4_loop
    elsif user_input == 'scene 5'
      scene_5_loop
    else
      blow_up
    end
  end

r = Runner.new
  loop do
    r.main_menu
    input = gets.chomp
    if input.downcase == "scene 1"
      r.scene_1_loop
    elsif input.downcase == "scene 2"
      r.scene_2_loop
    elsif input.downcase == "scene 3"
      r.scene_3_loop
    elsif input.downcase == "scene 4"
      r.scene_4_loop
    elsif input.downcase == "scene 5"
      r.scene_5_loop
    elsif input.downcase == "all"
      r.final
    elsif input.downcase == "hint"
      r.hint
    elsif input.downcase == "help"
      r.help_output
    end
    next_one = gets.chomp
    break if next_one == "exit"
  end
end
