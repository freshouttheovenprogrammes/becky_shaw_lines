require_relative 'file_reader'

module Scene4
  include FileReader

  BECKY_LINES_4 = []
  MAX_LINES_4 = []


  def create_becky_lines_4
    text_reader('./data/scene_4.txt').find_all do |line|
      BECKY_LINES_4 << line if line.include?("BECKY")
      require "pry"; binding.pry
       # when it hits that data,
      #the first line only comes out to [BECKY I under] not sure why
      # its not gathering the whole line...any thoughts??
    end
  end

  def create_max_lines_4
    text_reader('./data/scene_4.txt').find_all do |line|
      MAX_LINES_4 << line if line.include?("MAX")
    end
  end

end
