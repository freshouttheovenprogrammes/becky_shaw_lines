require './lib/scene_1_module'
require './lib/scene_2_module'
require './lib/scene_3_module'
require './lib/scene_4_module'
require './lib/scene_5_module'
require './lib/all_module'
require './lib/file_reader'




class Runner
  attr_reader :count
  include Scene1, Scene2, Scene3, Scene4, Scene5, AllScenes

  OTHER_ACTOR_LINE = ["other actor", "say this is line two", "line three"]

  AMBER_LINE =  ["here is a clue", "this is a test", "this is the third one"]

  def initialize
   @count = 0
  end

  def other_actor_lines
    `say "#{OTHER_ACTOR_LINE[@count]}"`
  end

  def hint
    cue = AMBER_LINE[@count].split(" ")
      puts "BECKY: #{cue.first(3).join(" ")}"
  end

  def amber_current_line
    puts "BECKY: #{AMBER_LINE[@count]}"
    @count += 1
  end
end


r = Runner.new
loop do
  puts "Hello and welcome to the Becky Shaw simulation experience!!!!!"
  sleep(0.5)
  puts "¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥"
  sleep(0.5)
  puts "Which act would you like to rehearse? Choose from (1) - (5) or ALL"
  sleep(0.5)
  puts "Just type Scene #"
  sleep(0.5)
  input = gets.chomp
    if input.downcase == "scene 1"
      r.some_method
      require "pry"; binding.pry
    elsif input.downcase == "scene 2"
      r.another_method
    elsif input.downcase == "scene 3"
      r.another_1
    elsif input.downcase == "scene 4"
      r.becky_with_the_good_hair_lines
      r.max_lines
    elsif input.downcase == "scene 5"
      r.another_3
    elsif input.downcase == "all"
      r.final
    elsif input.downcase == "-hint"
      r.hint
    elsif input.downcase == "help"
      r.help
    end
  r.other_actor_lines
    if input == "-hint"
      r.hint
      gets.chomp
    elsif input == "-help"
      r.help
      gets.chomp
    end
  r.amber_current_line
  next_one = gets.chomp
  break if next_one == "exit"
end


=begin
TODO

  * Make different Scene Functionality
  * Add -help feature
    • -hint will give first three words to the thing
  * What about when the other character is preforming an action that is recorded?
  * Make something that documents how many times she has needed cues
=end
