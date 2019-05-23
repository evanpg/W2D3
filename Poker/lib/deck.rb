require_relative 'card.rb'

class Deck
  attr_reader :cards
  def initialize
    @cards = []
    (0..12).each do |i|
      (0..3).each do |j|
        @cards << Card.new(i, j)
      end
    end
  end
end



# if __FILE__ == $PROGRAM_NAME
my_deck = Deck.new
p @cards
#   p my_deck
# end