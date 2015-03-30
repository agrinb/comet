require 'pry'


class Quicksort
  def initialize
    @final = []
  end

  def quicksort(arr)
    w = 0 
    pivot = arr[-1]
    arr.each_with_index do |x, i|
      if x < pivot
        arr.insert(w, x)
        arr.delete_at(i+1)
        w += 1
      end
    end
    arr.insert(w, pivot)
    arr.delete_at(-1)
    unless arr.length < 2
      left, right = arr.each_slice(w).to_a
      quicksort(left)
      quicksort(right)
    else 
      @final << arr.first
    end
    @final
  end
end

arr = [ 19, 987, 3, 5, 6, 100, 8, 7, 12, 14 ]
sort = Quicksort.new.quicksort(arr) 
p sort 
