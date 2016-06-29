require "./lib/credit_card"
require "pry"

puts "What is your card number?"
card_number = gets.chomp

puts CreditCard.new(card_number).start
