require 'pry'

array = [30.02, -88.87, 10.58, -99.22, 107.33]
sorted = []
unsorted = []
array.each do |n|
  array.shift
  if sorted.empty?
    sorted << n
  elsif
    if sorted.last < n
      sorted << n
    else
      unsorted << n
    end
  end
end
print sorted
print unsorted
print array

