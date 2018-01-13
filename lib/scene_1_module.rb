require_relative 'file_reader'

module Scene1
  include FileReader

BECKY_LINES_1 = []
MAX_LINES_1 = []


def create_becky_lines_1
  text_reader('./data/scene_1.txt').find_all do |line|
    BECKY_LINES_1 << line.chomp if line.include?("BECKY")
  end
end

def create_max_lines_1
  text_reader('./data/scene_1.txt').find_all do |line|
    MAX_LINES_1 << line.chomp if line.include?("Max,")
  end
end

def max_say_1
  `say #{MAX_LINES_1[count]}`
  @count += 1
end

def becky_output_1
  puts "#{BECKY_LINES_1[@count]}"
end

def scene_over_1
  if @count == BECKY_LINES_1.length
    new_scene_menu
  end
end

def hint_1
  cue = BECKY_LINES_1[@count].split(" ")
    puts "#{cue.first(4).join(" ")}"
end

end
