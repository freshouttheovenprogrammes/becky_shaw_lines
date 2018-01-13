require_relative 'test_helper'
require './runner'

class RunnerTest < Minitest::Test

  def test_it_exists
    r = Runner.new
    assert_instance_of Runner, r
  end

end
