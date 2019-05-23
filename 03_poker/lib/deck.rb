require_relative 'card'
require 'colorize'

class Deck
  SUITS = ['♠', '♥', '♦', '♣']
  VALUES = (2..10).to_a.map(&:to_s) + ['J', 'Q', 'K', 'A']

  attr_reader :SUITS, :VALUES, :deck

  def initialize
    @deck = []
    build_shuffled_deck
  end

  def build_shuffled_deck
    SUITS.each do |suit|
      VALUES.each do |value|
        @deck << Card.new(suit, value)
      end
    end
    @deck.shuffle!
  end
end

if __FILE__ == $PROGRAM_NAME
  d = Deck.new
  p d.deck
end




hash = Hash.new(0)

cards.each do |card|
  hash[card.value] += 1
end

# four of a kind
if hash.values.include?(4)
# full house
hash.values.include?(3) && hash.values.include?(2)
# three of a kind
hash.values.include?(3)
# pair
if hash.values.include?(2)


