require 'minitest/autorun'
require 'minitest/pride'
require_relative 'temperature.rb'

class TestTemperature < MiniTest::Test
   # tests go in here
   def test_f_to_c_positive
     expected_result = 10
     actual_result = f_to_c(50)

     assert_equal(expected_result, actual_result)
   end

   def test_f_to_c_negative
    assert_equal(-20, f_to_c(-4))
   end

   def test_c_to_f_positive
     expected_result = 50
     actual_result = c_to_f(10)

     assert_equal(expected_result, actual_result)
   end

   def test_c_to_f_negative
     assert_equal(-4, c_to_f(-20))
   end
end
