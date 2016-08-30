module PokerHands
  module Hand
    module AsAHand
      include ::Comparable(PokerHands::Hands)

      getter :cards

      def initialize(@cards = Set(Card).new)
      end

      def <=>(other : PokerHands::Hands)
        if self.class == other.class
          Comparer::CardValue.new(self, other).compare
        else
          Comparer::HandType.new(self, other).compare
        end
      end

      def valid?
        raise NotImplementedError
      end

      def high_card_values
        high_cards.map(&.value)
      end
      
      private def high_cards
        grouped_card_values.keys.map do |value|
          cards.select { |card| card.value == value }
        end.flatten
      end

      private def grouped_card_values
        card_values.group_by { |v| v }
          .map { |k, v| { k, v.size } }
          .sort_by { |h| 
            { h[1], h[0] } 
          } # 正序
          .reverse # 倒叙
          .to_h
      end

      private def card_values
        cards.map { |card| 
          { card.value, Utils.int(card.value) }
        }
        .sort_by { |ary| ary[1] } # 正序
        .reverse # 倒叙
        .map(&.first)
      end

      private def card_suits
        cards.map(&.suit)
      end
    end
  end
end