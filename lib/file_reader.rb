module FileReader

  def text_reader(data)
    File.open(data, 'r').reduce([]) do |lines, line|
      lines << line
      lines
      end
  end
end
