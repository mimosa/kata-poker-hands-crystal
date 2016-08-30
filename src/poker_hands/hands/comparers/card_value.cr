module PokerHands
  module Hand
    module Comparer
      class CardValue
        BLACK = 0
        WHITE = 1

        getter black : PokerHands::Hands, white : PokerHands::Hands, comparison_result : Int32

        def initialize(@black, @white)
          @comparison_result = 0
        end

        def compare
          compare_value_pair
          comparison_result
        end

        private def compare_value_pair
          value_pairs.select do |pair|
            black_var = Utils.int(pair[0])
            white_var = Utils.int(pair[1])

            @comparison_result = (black_var <=> white_var)
            break unless @comparison_result == 0
          end
        end

        private def value_pairs
          black.high_card_values.zip(white.high_card_values)
        end
      end
    end
  end
end