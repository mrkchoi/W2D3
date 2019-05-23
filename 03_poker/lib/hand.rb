require_relative 'card'
require_relative 'deck'

class Hand
  HANDS = { high_card: 0, one_pair: 100, two_pair: 200, set: 300, straight: 400, flush: 500, full_house: 600, four_of_a_kind: 700, straight_flush: 800 }.freeze

  COUNTS = { 2: 2, 3: 3, 4: 4, 5: 5, 6: 6, 7: 7, 8: 8, 9: 9, 10: 10, J: 11, Q: 12, K: 13, A: 14 }.freeze

  def initialize
    @cards = []
    @score = hand_score
  end

  def hand_score
    @cards.each do |card|
      
    end
  end
end