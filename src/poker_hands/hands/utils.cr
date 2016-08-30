module PokerHands
  module Hand
    class Utils
      def self.int(value : String)
        case value
        when "T" then 10
        when "J" then 11
        when "Q" then 12
        when "K" then 13
        when "A" then 14
        else 
          value.to_i
        end
      end
    end
  end
end