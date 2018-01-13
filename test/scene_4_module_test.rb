require_relative 'test_helper'
require './lib/scene_4_module'


class SceneFourModuleTest < Minitest::Test

  def test_becky_lines_array_working_proper
    module_4 = Scene4
    
    assert_equal "BECKY I understand your reluctance to see me. What happened to us on a first date. It’s just so crazy.", BECKY_LINES_4[0]
  end

end
