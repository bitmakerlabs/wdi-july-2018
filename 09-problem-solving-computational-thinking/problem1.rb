# Problem: Get the total sum of a list of numbers
# 1 2 5 11 1

# go through the numbers and add them one by one to a total
# return the total

# define total(list_of_numbers)
#   sum = 0
#   for each number in list_of_numbers {
#     sum = sum + number
#   }
#   return sum
# end

def total(list_of_numbers)
  sum = 0
  list_of_numbers.each do |number|
    sum = sum + number
  end

  return sum
end

puts total([1,2,5,11,1])

