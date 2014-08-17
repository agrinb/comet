# YOUR CODE HERE
require 'pry'
def armstrong_number?(num)
  array = num.to_s.split(//)
  power = array.length
  sum = 0
  raised_array = array.map do |x|
    n = 0
    n = x.to_i ** power
    sum += n
    end
  sum == num
end
