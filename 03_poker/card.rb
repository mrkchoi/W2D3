
class Card  
  attr_reader :suit, :value

  def initialize(suit, value)
    @suit = suit
    @value = value
  end

  def inspect
    if suit == '♥' || suit == '♦'
      "#{value}#{suit}".colorize(:red)
    else
      "#{value}#{suit}".colorize(:black)
    end
  end
end
