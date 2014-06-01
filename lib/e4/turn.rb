class E4::Turn
  attr_accessor :moves
  
  def initialize(turn)
    self.moves = turn
  end
  
  def white_move
    moves[0]
  end
  
  def black_move
    moves[1]
  end
end