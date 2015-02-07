
require 'pry'
arr = [1, 89, 83, 9837, 3987, 973 ]

def merge_sort(arr)
		if arr.length < 2
			return arr
		end

		mid = (arr.length / 2.to_f).round
		left, right = arr.each_slice(mid).to_a
		left = merge_sort(left)
		right = merge_sort(right)
		final = []
	  merge(final, left, right)
end


def merge(final, left, right)
	while !right.empty? || !left.empty?
		if right.empty?
			final << left.shift
		elsif left.empty?
			final << right.shift
		else 
			if right[0] < left[0]
				final << right.shift
			else 
				final << left.shift
			end		
		end
	end
 final
end


 p merge_sort(arr)