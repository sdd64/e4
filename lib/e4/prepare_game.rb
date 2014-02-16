class E4::PrepareGame
  class << self 

    # pass read pgn file
    # cleans it from any kind of description fields, only moves are
    def clean_pgn(file)
      file.gsub(E4::Regex.clean_pgn, "").delete("\n\r")
    end
  end
end
