require_relative 'file_reader'

module Scene3
  include FileReader

  BECKY_LINES_3 = []
  MAX_LINES_3 = []


  def create_becky_lines_3
    text_reader('./data/scene_3.txt').find_all do |line|
      BECKY_LINES_3 << line.chomp if line.include?("BECKY")
    end
  end

  def create_max_lines_3
    text_reader('./data/scene_3.txt').find_all do |line|
      MAX_LINES_3 << line.chomp if line.include?("Max,")
    end
  end

  def max_say_3
    `say #{MAX_LINES_3[count]}`
    @count += 1
  end

  def becky_output_3
    puts "#{BECKY_LINES_3[@count]}"
  end

  def scene_over_3
    if @count == BECKY_LINES_3.length
      new_scene_menu
    end
  end

  def hint_3
    cue = BECKY_LINES_3[@count].split(" ")
      puts "#{cue.first(4).join(" ")}"
  end

end
