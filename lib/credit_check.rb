class CreditCheck

  def inititalize
    @card_numner = get_card #method name
  end

  def get_card
    puts "What is your card number?"
    gets.chomp
  end

end

CreditCheck.new
