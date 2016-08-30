module PokerHands
  module Hand
    module Comparer
      class HandType
        getter black : PokerHands::Hands, white : PokerHands::Hands

        def initialize(@black, @white)
        end

        def compare
          worse_hands.includes?(white.class) ? -1 : 1
        end

        private def worse_hands
          PokerHands::HANDS.select { |hand| hand == black.class }
        end
      end
    end
  end
end