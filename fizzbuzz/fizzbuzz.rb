def fizzbuzz
	(0..99).to_a.reverse.each do |x|
		if x % 15 == 0
			puts "fizzbuzz"
		elsif x % 5 == 0
			puts "fizz"
		elsif x % 3 == 0
			puts "buzz"
		else 
			puts x
		end
	end
end

fizzbuzz