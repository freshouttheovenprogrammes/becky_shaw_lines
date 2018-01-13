module FileReader

  def text_reader(data)
    array = File.readlines(data, 'r')
      array.map do |line|
        [line]
      end
  end

end
