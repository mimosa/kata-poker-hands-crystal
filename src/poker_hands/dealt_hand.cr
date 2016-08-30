require "set"

module PokerHands
  class DealtHand
    include Comparable(DealtHand)

    def initialize(cards_string : String)
      denotations = cards_string.split(" ")
      denotations.each { |denotation| cards << Card.new(denotation) }
    end

    def <=>(other)
      hand <=> other.hand
    end

    def cards
      @cards ||= Set(Card).new
    end

    def hand
      PokerHands::HANDS.map { |hand| hand.new(cards) }.select(&.valid?)[0]
    end
  end
end