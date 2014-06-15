require 'test/unit'
require 'e4'

class TestBlackLightSquareBishop < Test::Unit::TestCase

  def setup
    @bishop = E4::BlackLightSquareBishop.new
  end  
    
  def test_start_pos
    assert_equal "c8", @bishop.start_pos
  end
end