class E4::Regex
  class << self
    # regex to match the turns of a pgn game
    #
    # read: 
    # pawn coordinations or figures or x for takes
    # one digit
    # OR
    # long or short casteling
    # one optional space
    # same as above, minus the space, but optional
    #
    # WARNING: might create entries with surplus space chars. those need to te
    # stripped
    def turns
      /([a-hKQRBNx]{1,3}?\d[#+]?|[0oO\-]{3,5})(\s?[a-hKQRBNx]{1,3}?\d[#+]?|\s?[0oO\-]{3,5})?/
    end

    # regex to match any kind of description fields
    # e.g. [Site "Chess.XYZ"]
    def clean_pgn
      /\[[\w\"\s\d\.\-\:]*\]/
    end
  end
end
