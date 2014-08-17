require 'pry'
arr = [ 19, 987, 3, 5, 6, 100, 8, 7, 12, 14 ]
arr2 = arr.each_slice(1).to_a

@sorted = []



def comp(array)
  (0..(array.length-1)).each do |x|
    new_arr = []
    if x % 2 == 0
      if array[x][0] <= array[x+1][0]
        new_arr = [array[x][0], array[x+1][0]]
      else
        new_arr = [array[x+1][0], array[x][0]]
      end
    end
    unless new_arr.empty?
      @sorted << new_arr
    end
  end
  @sorted
end

@sorted.each do |ineternal_arr|
  new_arr = []
  internal_arr.each do |smaller


end


