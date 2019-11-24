class Round
  attr_accessor :deck, :turns, :number_correct, :correct_cards, :total_guesses

  def initialize(deck)
    @deck = deck
    @turns = []
    @number_correct = 0
    @correct_cards = []
    @total_guesses = 0
  end

  def current_card
    current_card = deck.cards[0]
    return current_card
  end

  def take_turn(guess)
    current_turn = Turn.new(guess, current_card)
    @turns << current_turn.card
    @total_guesses += 1

    if guess == deck.cards[0].answer
      @number_correct += 1
      @correct_cards << current_turn.card
    end

    deck.cards.shift

    return current_turn
  end

  def number_correct_by_category(category)
    @correct_by_category = 0
    correct_cards.each do |card|
      if category == @correct_cards[@correct_cards.index(card)].category
        @correct_by_category += 1
      end
    end

    return @correct_by_category
  end

  def percent_correct
    @number_correct / @total_guesses.to_f.truncate(1) * 100
  end

  def percent_correct_by_category(category)
    number_correct_by_category(category)
    total_guesses_by_category = 0

    @turns.each do |card|
      if category == @turns[@turns.index(card)].category
        total_guesses_by_category += 1
      end
    end

    @correct_by_category / total_guesses_by_category.to_f.truncate(1) * 100
  end
end
