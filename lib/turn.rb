class Turn
  attr_reader :guess, :card

  def initialize(guess, card)
    @guess = guess
    @card = card
  end

  def correct?
    guess == card.answer
  end

  def feedback
    correct?
    if test_guess == true
      "Correct!"
    else
      "Incorrect."
    end
  end
end
