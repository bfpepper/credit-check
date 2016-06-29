require "pry"

class CreditCard

  def initialize(card_number)
    @card_number = card_number.rjust(16, "0")
  end

  def start
    if @card_number == @card_number.to_i.to_s
      split_card = card_array
      added_card_numbers = sum_results(split_card)
      is_card_valid?(added_card_numbers)
    else
      "This is not a valid card."
    end
  end


  def card_array
    modified_card = []
    turn_card_into_int.each_with_index do |num , index|
      if index.even?
        modified_card << combine_numbers(num * 2)
      else
        modified_card << num
      end
    end
    modified_card
  end

    def combine_numbers(num)
      num.to_s.split("").map{|num| num.to_i}.reduce(:+)
    end

    def sum_results(split_card)
      split_card.flatten.reduce(:+)
    end

    def is_card_valid?(added_card_numbers)
      added_card_numbers %10 == 0 ? "Card is valid" : "Card is invalid"
    end

    def turn_card_into_int
      @card_number.split("").map{|num| num.to_i}
    end


  end
