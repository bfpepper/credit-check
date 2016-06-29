require "pry"

class CreditCard

  def initialize(card_number)
    @card_number = card_number
  end

  def start
    split_into_arrays
    convert_odd
    sum_results
    is_card_valid
  end

  def combine_numbers(num)
    num.to_s.split("").map{|num| num.to_i}.reduce(:+)
  end

  def split_into_arrays
    @even_card = @card_number.split("").values_at(-1, -3, -5, -7, -9, -11, -13, -15).map{|num| num.to_i}
    @odd_card = @card_number.split("").values_at(-2, -4, -6, -8, -10, -12, -14, -16).map{|num| num.to_i}.map{|num| num * 2}
  end

  def convert_odd
    @odd_final = @odd_card.map{|num| combine_numbers(num)}
  end

  def sum_results
    @summed_results = @even_card.zip(@odd_final).flatten.reduce(:+)
  end

  def is_card_valid
    @summed_results %10 == 0 ? puts("Card is valid") : puts("card is invalid")
  end

end

#adding this thing.
