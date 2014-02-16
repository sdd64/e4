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
    cleaned_pgn = E4::PrepareGame.clean_pgn(file)
    @moves = cleaned_pgn.scan(E4::Regex.turns)
  end

  def test_first_turn
    assert_equal ["1.f4 d5"], @moves.first
  end

  def test_check_symbol_white
    assert_equal ["2.d4+ g6"], @moves[1]
  end

  def test_check_symbol_black
    assert_equal ["3.Bf6 g5+"], @moves[2]
  end

  def test_long_castle
    assert_equal ["4.0-0-0 Bg7"], @moves[3]    
  end

  def test_castle
    assert_equal ["5.c4 O-O"], @moves[4]    
  end

  def test_black_mates
    assert_equal ["6.Bf6 Nc6#"], @moves[5]
  end

  def test_white_mates
    assert_equal ["7.Bb5#"], @moves.last
  end

  def test_moves_array
    assert_equal [["1.f4 d5"], ["2.d4+ g6"], ["3.Bf6 g5+"], 
    ["4.0-0-0 Bg7"], ["5.c4 O-O"], ["6.Bf6 Nc6#"], ["7.Bb5#"]], @moves
  end
end