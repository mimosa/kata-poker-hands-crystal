module PokerHands
  class Card
    getter value : String, suit : String

    def initialize(denotation : String)
      @value, @suit = denotation.split("")
    end
  end
end