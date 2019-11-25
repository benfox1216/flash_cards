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
end
