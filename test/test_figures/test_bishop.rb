require 'test/unit'
require 'e4'

class TestBishop < Test::Unit::TestCase

  def test_name_yo
    assert_equal E4::Figures::Bishop::NAME, "Bishop"
  end
end