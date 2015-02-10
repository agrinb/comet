require 'pry'
arr = [ 19, 987, 3, 5, 6, 100, 8, 7, 12, 14 ]

# @final = []

# def quicksort(arr)
#   w = 0 
#   pivot = arr[-1]
#   arr.each_with_index do |x, i|
#     if x < pivot
#       arr.insert(w, x)
#       arr.delete_at(i+1)
#       w += 1
#     end
#   end
#   arr.insert(w, pivot)
#   arr.delete_at(-1)
#   unless arr.length < 2 binding.pry
#     left, right = arr.each_slice(w).to_a
#     quicksort(left)
#     quicksort(right)
#   else 
#     @final << arr.first
#   end
#   @final
# end


# p quicksort(arr) 

def quicksort(arr, si, ei)
  arr = arr[si..ei]
  if ei <= si
    # binding.pry
    return
    # mid = arr.length / 2
    # pivot = arr[mid]
  else 
    pivot = arr[-1]
    fi = 0
    li = arr.length - 1
    arr.each_with_index do |x, i|
      if x <= pivot
        # binding.pry 
        arr[fi], arr[i] = arr[i], arr[fi]
        fi += 1
      end
    end
    split_p = arr.index(pivot)
    # binding.pry
    quicksort(arr, 0, split_p - 1)
    quicksort(arr, split_p, arr.length - 1)
  end
  
  arr
end

p quicksort(arr, 0, 9 )
