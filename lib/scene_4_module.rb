require_relative 'file_reader'

module Scene4
  # attr_reader :count
  include FileReader

  BECKY_LINES_4 = []
  MAX_LINES_4 = []


  def create_becky_lines_4
    text_reader('./data/scene_4.txt').find_all do |line|
      BECKY_LINES_4 << line.chomp if line.include?("BECKY")
    end
  end

  def create_max_lines_4
    text_reader('./data/scene_4.txt').find_all do |line|
      MAX_LINES_4 << line.chomp if line.include?("Max,")
    end
  end

  def max_say_4
    `say #{MAX_LINES_4[count]}`
    @count += 1
  end

  def becky_output_4
    puts "#{BECKY_LINES_4[@count]}"
  end

  def scene_over_4
    if @count == BECKY_LINES_4.length
      new_scene_menu
    end
  end

  def hint_4
    cue = BECKY_LINES_4[@count].split(" ")
      puts "#{cue.first(4).join(" ")}"
  end

end
