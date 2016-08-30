require "./spec_helper"

describe PokerHands do
  describe ".vs" do
    it "Black wins!" do
      PokerHands.vs("2H 3D 5S 9C KD", "2C 3H 4S 8C KH").should eq "Black wins!"
    end

    it "White wins!" do
      PokerHands.vs("2H 3D 5S 9C KD", "2C 3H 4S 8C AH").should eq "White wins!"
    end

    it "Tie." do
      PokerHands.vs("2H 3D 5S 9C KD", "2D 3H 5C 9S KH").should eq "Tie."
    end
  end
end