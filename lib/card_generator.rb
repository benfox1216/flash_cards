require './lib/card'

class CardGenerator
  attr_accessor :text_file, :card

  def initialize(text_file)
    @text_file = text_file
  end

  def cards
    cards_from_file = []

    File.open("./lib/#{@text_file}").each do |line|
      card = line.split(",")

      new_card = Card.new(card[0], card[1], card[2].chop)
      cards_from_file << new_card
    end

    return cards_from_file
  end
end
