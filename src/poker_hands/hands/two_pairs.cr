module PokerHands
  module Hand
    class TwoPairs
      include AsAHand

      def valid?
        first_pair? && second_pair?
      end

      def first_pair?
        Pair.new(cards).valid?
      end

      def second_pair?
        grouped_card_values.values[1] == 2
      end
    end
  end
end