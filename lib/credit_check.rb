require "pry"
puts "What is your card number?"
card_number = gets.chomp
class CreditCheck

  def inititalize
    @card_number = card_number
  end

  binding.pry
end

CreditCheck.new
