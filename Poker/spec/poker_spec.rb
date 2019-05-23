require 'card'
require 'deck'

RSpec.describe Card do
  subject(:card) { Card.new(3,3) }
  describe "#initialize" do
    it 'creates a card with value' do
      expect(card.value).to eq(3)
    end

    it 'creates a card with suit' do
      expect(card.suit).to eq(3)
    end
  end
end

RSpec.describe Deck do
  subject(:deck) { Deck.new }
  describe "#initialize" do
    it 'creates a deck with 52 cards' do
      expect(deck.cards.length).to eq(52)
    end
  end
end


