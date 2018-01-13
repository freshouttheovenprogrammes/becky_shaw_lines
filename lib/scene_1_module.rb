require_relative 'file_reader'

module Scene1
  include FileReader

  def some_method
    `say scene 1`
  end


end
