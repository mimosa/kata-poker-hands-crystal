require "./spec_helper"

describe PokerHands::Hand do
  describe "different types comparison" do
    straight_flush = PokerHands::Hand::StraightFlush.new
    four_of_a_kind = PokerHands::Hand::FourOfAKind.new

    it "straight flush > four of a kind" do
      (straight_flush > four_of_a_kind).should be_true
    end

    full_house = PokerHands::Hand::FullHouse.new

    it "four of a kind > full house" do
      (four_of_a_kind > full_house).should be_true
    end

    flush = PokerHands::Hand::Flush.new

    it "full house > flush" do
      (full_house > flush).should be_true
    end

    straight = PokerHands::Hand::Straight.new

    it "flush > straight" do
      (flush > straight).should be_true
    end

    three_of_a_kind = PokerHands::Hand::ThreeOfAKind.new

    it "straight > three of a kind" do
      (straight > three_of_a_kind).should be_true
    end

    two_pairs = PokerHands::Hand::TwoPairs.new

    it "three of a kind > two pairs" do
      (three_of_a_kind > two_pairs).should be_true
    end

    pair = PokerHands::Hand::Pair.new

    it "two pairs > pair" do
      (two_pairs > pair).should be_true
    end

    high_card = PokerHands::Hand::HighCard.new

    it "pair > high card" do
      (pair > high_card).should be_true
    end

    it "straight flush > high card" do
      (straight_flush > high_card).should be_true
    end
  end
end