require 'minitest/autorun'
require 'minitest/pride'
require './lib/round'
require './lib/card'
require './lib/deck'
require './lib/turn'

class RoundTest < Minitest::Test

  def setup
    @card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    @card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    @card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

    @deck = Deck.new([@card_1, @card_2, @card_3])

    @round = Round.new(@deck)
  end

  def test_it_exists
  end

  def test_it_has_a_deck
  end

  def test_current_card
  end

  def test_taking_a_turn
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
