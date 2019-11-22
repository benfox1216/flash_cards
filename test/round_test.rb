require 'minitest/autorun'
require 'minitest/pride'
require './lib/round'
require './lib/card'
require './lib/deck'
require './lib/turn'

class RoundTest < Minitest::Test

  def setup
    @card1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    @card2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    @card3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

    @deck = Deck.new([@card1, @card2, @card3])

    @round = Round.new(@deck)

    @new_turn = @round.take_turn("Juneau")
  end

  def test_it_exists
  end

  def test_it_has_a_deck
  end

  def test_current_card
  end

  def test_taking_a_turn
  end

  def test_number_of_turns
  end

  def test_number_correct
  end

  def number_correct_by_category
  end

  def percent_correct
  end

  def percent_correct_by_category
  end
end
