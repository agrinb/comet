require 'pry'
arr = [ 987, 3, 5, 6, 100, 8, 7, 12, 14 ]

unsorted = nil

def bubble(arr, unsorted)
  while unsorted != false
    arr.each_index do |i|
      if i < (arr.length - 1)
        if arr[i] > arr[i+1]
          unsorted = true
          arr[i], arr[i+1] = arr[i+1], arr[i]
        else
          unsorted = false
          return arr
        end
      end
    end
    bubble(arr, unsorted)
  end
end


print bubble(arr, unsorted)
