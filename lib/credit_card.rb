require "pry"

class CreditCard

  def initialize(card_number)
    @card_number = card_number.rjust(16, "0") 
  end

  def start
    thing = split_into_arrays #change name
    thing1 = sum_results(thing)
    binding.pry
    is_card_valid?(thing1)
  end


  def split_into_arrays
    split_digits = @card_number.split("").map{|num| num.to_i}
    each_index = [] #change name
    split_digits.each_with_index do |num , index|
      if index.even?
        each_index << combine_numbers(num * 2)
      else
        each_index << num
      end
    end
    each_index
  end

    def combine_numbers(num)
      num.to_s.split("").map{|num| num.to_i}.reduce(:+)
    end

    def sum_results(thing)
      thing.flatten.reduce(:+)
    #@even_card.zip(convert_odd).flatten.reduce(:+)
    end

    def is_card_valid?(thing1)
      thing1 %10 == 0 ? puts("Card is valid") : puts("card is invalid")
    end

  end
