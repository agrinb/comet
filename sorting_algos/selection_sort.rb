class SelectionSort
  def initialize
    @sorted = []
  end
    
  def sort(array)
    min = array.first
    array.each do |n|
      if n < min
        min = n
      end
     end
    array.delete_at(array.index(min))
    @sorted << min
    if array.length > 0
      sort(array)
    else
    @sorted
    end
  end
end

p SelectionSort.new.sort([ 19, 987, 3, 5, 6, 100, 8, 7, 12, 14 ])