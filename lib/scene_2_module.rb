require_relative 'file_reader'

module Scene2
  include FileReader

  BECKY_LINES_2 = []
  MAX_LINES_2 = []


  def create_becky_lines_2
    text_reader('./data/scene_2.txt').find_all do |line|
      BECKY_LINES_2 << line.chomp if line.include?("BECKY")
    end
  end

  def create_max_lines_2
    text_reader('./data/scene_2.txt').find_all do |line|
      MAX_LINES_2 << line.chomp if line.include?("Max,")
    end
  end

  def max_say_2
    `say #{MAX_LINES_2[count]}`
    @count += 1
  end

  def becky_output_2
    puts "#{BECKY_LINES_2[@count]}"
  end

  def scene_over_2
    if @count == BECKY_LINES_2.length
      new_scene_menu
    end
  end

  def hint_2
    cue = BECKY_LINES_2[@count].split(" ")
      puts "#{cue.first(4).join(" ")}"
  end

end
