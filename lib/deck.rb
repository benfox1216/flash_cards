class Deck
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def cards_in_category(card_category)
    cards_specified = []
    cards.each do |card|
      if card_category == card.category
        cards_specified << card
      end
    end

    p cards_specified
  end
end
