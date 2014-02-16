class E4::Regex
  class << self
    # regex to match the turns of a pgn game
    #
    # read: 
    # one up to three digits, number of the move
    # one seperating dot
    # one optional space
    # any combination of words, digits, minus or check and checkmate sign
    # one space, if there is
    # than again any combination of words, digits, minus or check and checkmate sign
    def turns
      /(\d{1,3}\s?\.[\w\d\-#+]+\s*[\w\d\-#+]+)/
    end

    # regex to match any kind of description fields
    # e.g. [Site "Chess.XYZ"]
    def clean_pgn
      /\[[\w\"\s\d\.\-\:]*\]/
    end
  end
end
