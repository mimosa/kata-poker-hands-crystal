require "./spec_helper"

describe PokerHands::DealtHand do
  describe "comparison" do
    it "2H 3D 5S 9C KD vs 2C 3H 4S 8C AH" do
      black = PokerHands::DealtHand.new("2H 3D 5S 9C KD")
      white = PokerHands::DealtHand.new("2C 3H 4S 8C AH")

      (black < white).should be_true
    end

    it "2H 4S 4C 2D 4H vs 2S 8S AS QS 3S (lol, example is wrong)" do
      black = PokerHands::DealtHand.new("2H 4S 4C 2D 4H")
      white = PokerHands::DealtHand.new("2S 8S AS QS 3S")
      
      (black > white).should be_true
    end

    it "2H 3D 5S 9C KD vs 2C 3H 4S 8C KH" do
      black = PokerHands::DealtHand.new("2H 3D 5S 9C KD")
      white = PokerHands::DealtHand.new("2C 3H 4S 8C KH")
      
      (black > white).should be_true
    end

    it "2H 3D 5S 9C KD vs 2D 3H 5C 9S KH" do
      black = PokerHands::DealtHand.new("2H 3D 5S 9C KD")
      white = PokerHands::DealtHand.new("2D 3H 5C 9S KH")
      
      (black == white).should be_true
    end
  end
end