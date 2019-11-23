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
  end

  def test_it_exists
    assert_instance_of Round, @round
  end

  def test_it_has_a_deck
    assert_equal @deck, @round.deck
  end

  def test_it_records_turns_taken
    assert_equal [], @round.turns
  end

# This test is not running
  def it_records_number_of_correct_guesses
    assert_equal 0, @round.number_correct
  end

  def test_it_records_cards_with_correct_answers
    assert_equal [], @round.correct_cards
  end

  def test_it_records_total_guesses
    assert_equal 0, @round.total_guesses
  end

  def test_it_records_total_guesses_by_category
    assert_equal 0, @round.total_guesses_by_category
  end

# This test is not running
  def it_records_current_card
    assert_equal ["What is the capital of Alaska?", "Juneau", :Geography],
      @round.current_card
  end

  def percent_correct_by_category

  end
end
