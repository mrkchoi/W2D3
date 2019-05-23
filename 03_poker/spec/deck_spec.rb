require 'deck'

RSpec.describe Deck do 
  subject(:deck) { Deck.new }

  describe "#initialize" do
    it 'should build a deck of cards as an array' do
      expect(deck.deck).to be_an(Array)
    end
    
    it 'should build a deck of 52 cards (as an array)' do
      expect(deck.deck.length).to eq(52)
    end
    
  end

  describe "build_shuffled_deck" do
    let(:deck2) { Deck.new }
    it 'it should shuffle the deck of cards' do
      expect(deck2.deck == deck.deck).to be_falsy
    end
  end

  # describe "#deal_card" do
  #   it 'should remove a card from the top of the deck' 
  # end
end