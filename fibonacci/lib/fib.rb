require 'pry'

def fib(n)
	start = [0,1]
	i = 0
		while i != n
			i = helper(start)
			start << i
			if i == n
				# binding.pry
				print start
				puts start.index(i)
				break
			end
		end
end



def helper(array)
	array[-1] + array[-2] 
end

fib(8)