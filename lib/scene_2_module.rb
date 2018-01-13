require_relative 'file_reader'

module Scene2
  include FileReader

  def another_method
    `say Scene two`
  end


end
