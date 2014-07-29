require 'pry'

array = "30.02 -88.87 10.58 -99.22 107.33"

@@sorted = []

def sort_list(list)
  array = list.split(" ").map { |n| n.to_f }
  sort(array)
end


def sort(array)
  array.length.times do
    i = -1
    while i < array.length - 2 do
      if array[i+1] > array[i+2]
        array[i+1], array[i+2] = array[i+2], array[i+1]
      end
      i+=1
      #binding.pry
    end
    binding.pry
  end
  puts array
end

sort_list(array)


