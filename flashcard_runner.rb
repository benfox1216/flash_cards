#!/usr/bin/env ruby

require './lib/round'
require './lib/card'
require './lib/deck'
require './lib/turn'
require './lib/card_generator'

# KEEPING LINES 8-14 AS COMMENTS TO SHOW CODE BEFORE ITERATION 4
# card1 = Card.new("What is 5 + 5?", "10", :STEM)
# card2 = Card.new("What is Rachel's favorite animal?", "Cat", :"Turing Staff")
# card3 = Card.new("What is Mike's middle name?", "nobody knows", :"Turing Staff")
# card4 = Card.new("What cardboard cutout lives at Turing?", "Justin Beiber",
#   :"Pop Culture")
#
# cards = [card1, card2, card3, card4]

filename = "cards.txt"
cards = CardGenerator.new(filename).cards

@deck = Deck.new(cards)
@round = Round.new(@deck)

card_count = cards.length

@card_number = 1

puts "Welcome! You're playing with #{card_count} cards."
puts "-------------------------------------------------"

def play_game

  puts "This is card number #{@card_number} out of 4."
  puts @deck.cards[0].question

  guess = gets.chomp

  turn = @round.take_turn(guess)

  puts turn.feedback

  @card_number += 1

end

cards.length.times {play_game}


puts "****** Game over! ******"
puts "You had #{@round.number_correct} correct guesses out of #{card_count} for a total score of #{@round.percent_correct.to_i}%."
puts "STEM - #{@round.percent_correct_by_category("STEM").to_i}% correct"
puts "Turing Staff - #{@round.percent_correct_by_category("Turing Staff").to_i} % correct"
puts "Pop Culture - #{@round.percent_correct_by_category("Pop Culture").to_i}% correct"
