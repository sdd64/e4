class E4::PrepareGame
  class << self 

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
