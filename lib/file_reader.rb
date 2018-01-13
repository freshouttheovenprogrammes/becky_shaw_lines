module FileReader

  def text_reader(data)
    File.open(data, 'r').reduce([]) do |lines, line|
      lines << line
      lines
      end
  end
end


# =begin
# ["BECKY I under",
#  "stand your",
#  " r",
#  "eluctance to see me. What happened to us on a fir",
#  "st date. It’s just so cr",
#  "azy.......
#
# goes on and is one big array of broken sentences. i structured the data so each characters line is one line in the file. not what I'm getting though.
#
#  so this is the output of File.readlines and I think its pretty bizzarre tbh
#
#  i want ["BECKY I understand your reluctance to see me. What happened to us on a first date. Its just so crazy"]
#
#  =end
