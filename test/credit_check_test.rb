require "minitest/autorun"
require "minitest/nyan_cat"
require "./lib/credit_card"

class CreditCardTest < Minitest::Test

  def setup
    @card_number = "4024007136512380"
    @credit_card = CreditCard.new(@card_number)
  end

  def test_it_can_create_a_class
    assert_instance_of CreditCard, @credit_card
  end

  def test_that_it_works
    assert_equal "Card is valid", @credit_card.start
  end

  def test_it_doesnt_work
    card_number = "111214ssfjnsfdg"
    assert_equal "This is not a valid card.", CreditCard.new(card_number).start
  end

  def test_it_can_reject_a_card
    card_number = "5541801923795240"
    assert_equal "Card is invalid", CreditCard.new(card_number).start
  end

  def test_it_can_split_numbers
    number = "24"
    assert_equal [0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4], CreditCard.new(number).card_array
  end

end
