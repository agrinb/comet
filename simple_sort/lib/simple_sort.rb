require 'pry'

array = "30.02 -88.87 10.58 -99.22 107.33"

@@sorted = []

def sort_list(list)
  array = list.split(" ").map { |n| n.to_f }
  sort(array)
end


def sort(array)
    min = array.first
    array.each do |n|
      if n < min
        min = n
      end
    end
    array.delete_at(array.index(min))
  @@sorted << min
  if array.length > 0
    sort(array)
  else
    @@sorted.join(' ')
  end
end


