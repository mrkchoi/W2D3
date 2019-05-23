require 'card'

RSpec.describe Card do 
  subject(:card) { Card.new('♥', 10) }
  
  describe "#initialize" do
    it 'should set a valid suit' do
      expect(['♠', '♥', '♦', '♣']).to include(card.suit)
    end

    it 'should set a valid value' do
      expect((2..10).to_a.map(&:to_s) + ['J', 'Q', 'K', 'A']).to include(card.value)
    end
  end
end