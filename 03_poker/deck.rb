require './card.rb'
require 'colorize'

class Deck
  # SUITS = [:s, :c, :d, :h]
  SUITS = ['♠', '♥', '♦', '♣']
  VALUES = (2..10).to_a + [:J, :Q, :K, :A]

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

d = Deck.new
p d.deck
