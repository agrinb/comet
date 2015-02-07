# YOUR CODE HERE
require 'pry'
# OLD
# def armstrong_number?(num)
#   array = num.to_s.split(//)
#   power = array.length
#   sum = 0
#   raised_array = array.map do |x|
#     n = 0
#     n = x.to_i ** power
#     sum += n
#     end
#   sum == num
# end


def armstrong_number?(number)
	n = number.to_s.length
	arr = number.to_s.split("")
	sum = arr.inject(0) { |res, el| res + el.to_i**n }
	number == sum
end

