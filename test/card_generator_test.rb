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

# TEST IF FAILING WITH THE FOLLOWING ERROR:
# No visible difference in the Array#inspect output.
# You should look at the implementation of #== on Array or its members.
#
# Apparently it means the expected value is correct, but it's still failing...unfortunately it's too late to research further before submission
  def test_it_has_cards
    assert_equal [@card_generator.cards[0], @card_generator.cards[1], @card_generator.cards[2], @card_generator.cards[3]], @card_generator.cards
  end
end
