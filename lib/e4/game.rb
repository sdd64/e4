class E4::Game
  attr_accessor :turns

  def initialize(pgn_turns)
    self.turns ||= []
    
    create_turns(pgn_turns)
      
  end
  
  def create_turns(pgn_turns)
    pgn_turns.each do |turn|
      self.turns << E4::Turn.new(turn)
    end
  end
end