require_relative 'file_reader'

module Scene4
  include FileReader

  BECKY_LINES = []
  MAX_LINES = []


  def becky_with_the_good_hair_lines
    text_reader('./data/scene_4.txt').find_all do |line|
      BECKY_LINES << line if line.include?("BECKY")
      require "pry"; binding.pry
    end
  end

  def max_lines
    text_reader('./data/scene4.txt').find_all do |line|
      MAX_LINES << line if line.include?("MAX")
    end.chomp
  end

  def another_2
    `say scene 4`
  end
end
