require 'pry'

def armstrong(number)
	n = number.to_s.length
	arr = number.to_s.split("")
	sum = 0 
	# arr.each { |x| sum + (x.to_i*n) }
	sum = arr.inject(0) do |res, el| 
		res + el.to_i**n 
	end
	number == sum
end

