require_relative 'file_reader'

module Scene3
  include FileReader

  def another_1
    `say scene three`
  end


end
