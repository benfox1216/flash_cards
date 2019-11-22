class Round
  attr_accessor :deck

  def initialize(deck)
    @deck = deck
  end

  def current_card
    p current = deck.cards[0]

  end

  def take_turn(name)
    if name == "Juneau"
      p deck.cards[0]
    end
  end

  def turns
    turns_taken = []
  end

  def number_correct
  end

  def number_correct_by_category
  end

  def percent_correct
  end

  def percent_correct_by_category
  end
end
