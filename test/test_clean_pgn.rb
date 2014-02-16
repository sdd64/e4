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

class TestCleanPgn < Test::Unit::TestCase
  def setup
    file = File.read("test/moves_simple.pgn")
    @cleaned_pgn = E4::PrepareGame.clean_pgn(file)
  end

  def test_cleaned_pgn_only_has_moves
    assert_equal "1.f4 d5 2.d4+ g6 3.Bf6 g5+ 4.0-0-0 Bg7 5.c4 O-O 6.Bf6 Nc6# 7.Bb5#", @cleaned_pgn
  end
end