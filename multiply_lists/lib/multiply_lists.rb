require 'pry'
def multiply_lists(lists)
  arr1, arr2 = lists.split("|")

  arr1 = arr1.split(" ").map {|x| x.to_i}
  arr2 = arr2.split(" ").map {|x| x.to_i}

  if arr1.length != arr2. length
    return "Lists must be same length"
  end


  # array = ""
  # arr1.each_with_index do |el, i|
  #   array << " " + (el * arr2[i]).to_s
  # end
  # array

  array = []
  arr1.each_with_index do |el, i|
    array << el * arr2[i]
  end
  string = array.to_s
  string.delete! "["
  string.delete! "]"
  string.delete! ","

  string


end

