require "./lib/credit_card"
require "pry"

puts "What is your card number?"
card_number = gets.chomp

puts CreditCard.new(card_number).start
  if card_number == card_number.to_i.to_s
else
  puts "This is not a valid card."
end
