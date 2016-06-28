require "pry"

class CreditCheck

  def initialize
    @credit_card = "4024007136512380" #valid
    start
  end

  def start
    ## even_card = @credit_card.split("").values_at(-1, -3, -5, -7, -9, -11, -13, -15).map{|num| num.to_i}
    ## odd_card = @credit_card.split("").values_at(-2, -4, -6, -8, -10, -12, -14, -16).map{|num| num.to_i}.map{|num| num * 2}
    ## odd_final = odd_card.map{|num| combine_numbers(num)}
    ## summed_results = even_card.zip(odd_final).flatten.reduce(:+)
    split_digits = @credit_card.split("").map{|num| num.to_i}
    each_index = []
    split_digits.each_with_index do |num , index|
      if index.even?
        each_index << combine_numbers(num * 2)
      else
        each_index << num
      end
    end
    summed_results = each_index.flatten.reduce(:+)

    summed_results %10 == 0 ? puts("Card is valid") : puts("card is invalid")

    # if summed_results %10 == 0
    #   puts "Card is valid"
    # else
    #   puts "card is invalid"
    # end
  end

  def combine_numbers(num)
    num.to_s.split("").map{|num| num.to_i}.reduce(:+)
  end

end

CreditCheck.new
