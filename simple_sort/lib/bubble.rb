require 'pry'


def sort_list(list)
  array = list.split(" ").map { |n| n.to_f }
  sort(array)
end


def sort(array)
  array.length.times do
    i = 0
    while i < array.length - 2 do
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
      end
      i+=1
    end
  end
  array.join(" ")
end



