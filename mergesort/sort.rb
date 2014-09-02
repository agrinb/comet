require 'pry'
arr = [ 19, 987, 3, 5, 6, 100, 8, 7, 12, 14 ]


def mergesort(arr)
  left = []
  right = []
  if arr.length <= 1
    return arr
  else
    middle = arr.length / 2
    arr.each_with_index do |e,i|
      if i < middle
        left << e
      else
        right << e
      end
    end
  end
  mergesort(left)
  mergesort(right)
  merge(arr, left, right)
end




def merge(arr, left, right)
  li = 0
  ri = 0
  ai = 0
  while left.length > li && right.length > ri
    if left[li] < right[ri]
      arr[ai] = left[li]
      ai += 1
      li += 1
    else
      arr[ai] = right[ri]
      ai += 1
      ri += 1
    end
  end

  while left.length > li
    arr[ai] = left[li]
    ai += 1
    li += 1
  end

   while right.length > ri
    arr[ai] = right[ri]
    ai += 1
    ri += 1
  end
  arr
end



print mergesort(arr)


