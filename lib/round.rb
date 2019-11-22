class Round
  attr_accessor :deck
  def initialize(deck)
    @deck = deck
  end

  def turns
    turns_taken = []
  end

  def current_card
    deck.cards[0]
  end

  def take_turn(guess)
    current_card = deck.cards[0]
    p deck.cards[0].question

    guess = gets.chomp
    #### turns_taken < deck.cards[0]
    current_turn = Turn.new(guess, current_card)
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
