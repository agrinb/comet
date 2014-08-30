require 'pry'
arr = [ 19, 987, 3, 5, 6, 100, 8, 7, 12, 14 ]
arr2 = arr.each_slice(1).to_a

@sorted = []

def mergesort(arr)
  if arr.length <= 1
    return arr
  else
    middle = arr.length / 2
    left = []
    right = []
    arr.each_with_index do |e,i|
      if i < middle
        left << e
      else
        right << e
      end
    end
  end
  #binding.pry
  mergesort(left)
  mergesort(right)
  merge(left, right)
  # binding.pry
  # if left.last <= right.first
  #   left.append(right)
  # end
end


def merge(left,right)
 result = []
  while left.length > 0 && right.length > 0
    if left.first <= right.first
      result << left.first
      binding.pry
      left.delete_at(0)

    end
  end
end

mergesort(arr)


# left = rest(left)
# elseappend first(right) to result
# right = rest(right)
# if length(left) > 0
# append rest(left) to result
# if length(right) > 0
# append rest(right) to result
# return result



















# def comp(array)
#   (0..(array.length-1)).each do |x|
#     new_arr = []
#     if x % 2 == 0
#       if array[x][0] <= array[x+1][0]
#         new_arr = [array[x][0], array[x+1][0]]
#       else
#         new_arr = [array[x+1][0], array[x][0]]
#       end
#     end
#     unless new_arr.empty?
#       @sorted << new_arr
#     end
#   end
#   binding.pry
#   @sorted
# end

# @sorted.each do |ineternal_arr|
#   new_arr = []
#   internal_arr.each do |smaller


# end
# comp(arr2)

