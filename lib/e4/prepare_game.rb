class E4::PrepareGame
  
  #attr_accessor :game
  
  class << self 

    # create and return new game object
    def create_game(file)
      turns = E4::PrepareGame.get_turns(file)
      E4::Game.new(turns)
    end
    
      
    # extracts turns out of passed pgn file
    def get_turns(file)
      clean_pgn = E4::PrepareGame.clean_pgn(file)
      dirty_turns = clean_pgn.scan(E4::Regex.turns)
      E4::PrepareGame.clean_turns(dirty_turns)
    end

    # pass read pgn file
    # cleans it from any kind of description fields, only moves are
    def clean_pgn(file)
      file.gsub(E4::Regex.clean_pgn, "").delete("\n\r")
    end
    
    # removes surplus whitespace characters from matched turns
    # should be removed in the future, if 'perfect' regex has been found
    def clean_turns(dirty_turns)
      dirty_turns.collect do |turns| 
        turns.collect do |move| 
          move.strip if move
        end
      end
    end
  end
end
