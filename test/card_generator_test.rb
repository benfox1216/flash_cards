require 'minitest/autorun'
require 'minitest/pride'
require './lib/card_generator'

class CardGeneratorTest < Minitest::Test

  def setup
    @filename = "cards.txt"
    @card_generator = CardGenerator.new(@filename)
  end

  def test_it_exists
    assert_instance_of CardGenerator, @card_generator
  end

  def test_it_has_text_file
    assert_equal "cards.txt", @card_generator.text_file
  end

  def test_it_has_cards

    @card1 = @card_generator.cards[0]
    @card2 = @card_generator.cards[1]
    @card3 = @card_generator.cards[2]
    @card3 = @card_generator.cards[3]

    assert_equal [@card1, @card2, @card3, @card4], @card_generator.cards
  end
end
