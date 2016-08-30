require "./poker_hands/**"

module PokerHands
  HANDS = [
    Hand::StraightFlush,
    Hand::FourOfAKind,
    Hand::FullHouse,
    Hand::Flush,
    Hand::Straight,
    Hand::ThreeOfAKind,
    Hand::TwoPairs,
    Hand::Pair,
    Hand::HighCard
  ]

  alias Hands = Hand::Flush | 
                Hand::FourOfAKind | 
                Hand::FullHouse | 
                Hand::HighCard | 
                Hand::Pair | 
                Hand::Straight | 
                Hand::StraightFlush | 
                Hand::ThreeOfAKind | 
                Hand::TwoPairs

  VALUES = %w(A K Q J T 9 8 7 6 5 4 3 2)

  def self.vs(black : String, white : String)
    black_hand = DealtHand.new(black)
    white_hand = DealtHand.new(white)
    
    if black_hand > white_hand
      "Black wins!"
    elsif black_hand < white_hand
      "White wins!"
    else
      "Tie."
    end
  end
end