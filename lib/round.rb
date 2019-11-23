class Round
  attr_accessor :deck, :turns, :number_correct, :current_card
  def initialize(deck)
    @deck = deck
    @turns = []
    @number_correct = 0
    @current_card = deck.cards[0]
  end

  def current_card
    current_card = deck.cards[0]
  end

  def take_turn(guess)
    current_turn = Turn.new(guess, current_card)
    @turns << current_turn

    if guess == deck.cards[0].answer
      @number_correct += 1
    end

    deck.cards.shift

    return current_turn
  end

  def number_correct_by_category
  end

  def percent_correct
  end

  def percent_correct_by_category
  end
end
