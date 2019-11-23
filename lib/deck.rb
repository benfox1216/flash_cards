class Deck
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def count
    number_in_deck = 0

    cards.each do |card|
      number_in_deck += 1
    end

    return  number_in_deck
  end

  def cards_in_category(given_category)
    cards_in_category = []

    cards.each do |card|
      if given_category == card.category
        cards_in_category << card
      end
    end

    return cards_in_category
  end
end
