def total_accrued_amount_from_loan(principal_loan, rate_percentage, periods_in_years)
  decimal_rate_percentage = rate_percentage / 100
  principal_loan * (1 + decimal_rate_percentage * periods_in_years)
end

