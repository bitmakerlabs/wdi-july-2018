require 'minitest'
require 'minitest/autorun'

require_relative './code.rb'

class BadNameTest < Minitest::Test
  def test_that_calculates_simple_interest
    principal = 1000
    interest_rate = 12.0
    years = 5

    loan = total_accrued_amount_from_loan(principal, interest_rate, years)
    assert_equal(1600, loan)
  end

  def test_that_wont_charge_if_interest_zero
    principal = 1000
    interest_rate = 0.0
    years = 5

    loan = total_accrued_amount_from_loan(principal, interest_rate, years)

    assert_equal(1000, loan)
  end

  def test_that_wont_charge_if_years_zero
    principal = 1000
    interest_rate = 9.0
    years = 0

    loan = total_accrued_amount_from_loan(principal, interest_rate, years)

    assert_equal(1000, loan)
  end

  def test_that_wont_charge_if_principal_zero
    principal = 0
    interest_rate = 9.0
    years = 10

    loan = total_accrued_amount_from_loan(principal, interest_rate, years)

    assert_equal(0.0, loan)
  end

end
