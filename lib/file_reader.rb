module FileReader

  def text_reader(data)
    File.readlines(data, 'r')
  end

end
