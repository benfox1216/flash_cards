require 'minitest/autorun'
require 'minitest/pride'
require './lib/round'
require './lib/card'
require './lib/deck'
require './lib/turn'

class RoundTest < Minitest::Test

  def setup
    @card1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    @card2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports
      about the surface of which planet?", "Mars", :STEM)
    @card3 = Card.new("Describe in words the exact direction that is 697.5° clockwise
      from due north?", "North north west", :STEM)

    @deck = Deck.new([@card1, @card2, @card3])

    @round = Round.new(@deck)

    @new_turn = @round.take_turn("Juneau")
    @round.take_turn("Venus")
  end

  def test_it_exists
    assert_instance_of Round, @round
  end

  def test_it_has_a_deck
    assert_equal @deck, @round.deck
  end

  def test_it_records_turns_taken
    assert_equal [@card1, @card2], @round.turns
  end

  def test_it_records_number_of_correct_guesses
    assert_equal 1, @round.number_correct
  end

  def test_it_records_cards_with_correct_answers
    assert_equal [@card1], @round.correct_cards
  end

  def test_it_records_total_guesses
    assert_equal 2, @round.total_guesses
  end

  def test_it_records_current_card
    assert_equal @card3, @round.current_card
  end

  def test_it_processes_taking_a_turn
    assert_equal "Juneau", @new_turn.guess
    assert_equal @card1, @new_turn.card
    assert_instance_of Turn, @round.take_turn("Juneau")
  end

  def test_it_records_number_correct_by_category
    assert_equal 1, @round.number_correct_by_category(:Geography)
  end

  def test_it_records_percent_correct
    assert_equal 50.0, @round.percent_correct
  end

  def test_it_records_percent_correct_by_category
    assert_equal 100.0, @round.percent_correct_by_category(:Geography)
  end
end
