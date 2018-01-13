require_relative 'file_reader'

module Scene4
  include FileReader

  BECKY_LINES_4 = []
  MAX_LINES_4 = []
  @count = 0

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
    puts "#{BECKY_LINES_4[count]}"
  end

end
