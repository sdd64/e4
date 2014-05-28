# "test/moves_simple.pgn"
#
# [Event "Test"]
# [Site "Somewhere.com"]
# [Date "2013.01.18"]
# [White "Whitey"]
# [Black "Blackey"]
# [Result "1-0"]
# [WhiteElo "1234"]
# [BlackElo "1111"]
# [TimeControl "1 in 3 tests"]
# [Termination "Test::Unit won by RSpec changing their API"]
#
# 1.f4 d5 2.d4+ g6 3.Bf6 g5+ 4.0-0-0 Bg7 5.c4 O-O 6.Bf6 Nc6# 7.Bb5#


require 'test/unit'
require 'e4'

class TestTurnesRegex < Test::Unit::TestCase
  def setup
    file = File.read("test/moves_simple.pgn")
    @turnes = E4::PrepareGame.get_turns(file)
  end

  def test_first_turn
    assert_equal ["f4", "d5"], @turnes.first
  end

  def test_check_symbol_white
    assert_equal ["d4+", "g6"], @turnes[1]
  end

  def test_check_symbol_black
    assert_equal ["Bf6", "g5+"], @turnes[2]
  end

  def test_long_castle
    assert_equal ["0-0-0", "Bg7"], @turnes[3]    
  end

  def test_castle
    assert_equal ["c4" ,"O-O"], @turnes[4]    
  end

  def test_black_mates
    assert_equal ["Bf6", "Nc6#"], @turnes[5]
  end

  def test_white_mates
    assert_equal ["Bb5#", nil], @turnes.last
  end

  def test_turns_array
    assert_equal [["f4", "d5"], ["d4+", "g6"], ["Bf6", "g5+"], 
    ["0-0-0", "Bg7"], ["c4" ,"O-O"], ["Bf6", "Nc6#"], ["Bb5#", nil]], @turnes
  end
end