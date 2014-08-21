def schedule_tournament(names)
  i = 0
  array = []
  names.each_with_index do |name, i|
   arr = [name, names[i+1]]
   array << arr

end
