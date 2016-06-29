require "minitest/autorun"
require "minitest/nyan_cat"
require "./lib/credit_check"

class CreditCheckTest < Minitest::Test

  def setup
    @credit_check = CreditCheck.new
  end

  def test_it_can_create_a_class
    assert_instance_of CreditCheck, @credit_check
  end

  def 
  end

end
