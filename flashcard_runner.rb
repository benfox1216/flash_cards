require './lib/round'
require './lib/card'
require './lib/deck'
require './lib/turn'

card1 = Card.new("What is 5 + 5?", "10", :STEM)
card2 = Card.new("What is Rachel's favorite animal?", "Cat", :"Turing Staff")
card3 = Card.new("What is Mike's middle name?", "nobody knows", :"Turing Staff")
card4 = Card.new("What cardboard cutout lives at Turing?", "Justin Beiber",
  :"Pop Culture")

cards = [card1, card2, card3, card4]

deck = Deck.new(cards)

round1 = Round.new(deck)

puts "Welcome! You're playing with 4 cards."
puts "-------------------------------------------------"
puts "This is card number 1 out of 4."
puts deck.cards[0].question

gets.chomp guess = ""

turn1 = round1.take_turn(guess)

puts turn1.feedback
