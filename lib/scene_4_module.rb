require_relative 'file_reader'

module Scene4
  # attr_reader :count
  include FileReader

  BECKY_LINES_4 ||= []
  MAX_LINES_4 ||= []


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


    def scene_4_loop
      create_becky_lines_4
      create_max_lines_4
      puts "You say the first line on this scene. Press Enter to begin and reveal your first line, pressing enter again will start the Max line."
      gets.chomp
        loop do
          becky_output_4
          gets.chomp
          max_say_4
          next_one = gets.chomp
          if next_one == '-hint'
            hint_4
          elsif next_one == 'main_menu'
            main_menu
          gets.chomp
          end
          break if next_one == 'exit'
        end
    end

end
