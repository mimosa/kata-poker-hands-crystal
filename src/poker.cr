require "./poker_hands"

if ARGV.is_a?(Array(String)) && ARGV.size > 1
  prev   = nil
  winner = nil

  ARGV.each do |hand|
    if prev.nil?
      prev = PokerHands::DealtHand.new(hand)
      winner = hand
    else
      current = PokerHands::DealtHand.new(hand)
      if current > prev
        winner = hand
        prev   = current
      end
    end
  end

  puts "#{winner} wins!"
else
  puts "Usage: poker \"2H 3D 5S 9C KD\" \"2C 3H 4S 8C KH\""
end