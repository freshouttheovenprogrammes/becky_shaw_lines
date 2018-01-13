require_relative 'file_reader'

module Scene4
  attr_reader :counter
  include FileReader

  BECKY_LINES_4 = []
  MAX_LINES_4 = []
  
  @counter = 0

  def create_becky_lines_4
    text_reader('./data/scene_test.txt').find_all do |line|
      BECKY_LINES_4 << line.chomp if line.include?("BECKY")
    end
    require "pry"; binding.pry
  end

  def create_max_lines_4
    text_reader('./data/scene_test.txt').find_all do |line|
      MAX_LINES_4 << line.chomp if line.include?("Max,")
    end
  end

  def max_say_4
    `say #{MAX_LINES_4[@counter]}`
    @counter += 1
  end

  def becky_output_4
    puts "#{BECKY_LINES_4[@counter]}"
  end

  def scene_over_4
    if @counter == BECKY_LINES_4.length
      new_scene_menu
    end
  end

  def hint_4
    cue = BECKY_LINES_4[@counter].split(" ")
      puts "BECKY: #{cue.first(3).join(" ")}"
  end

end
