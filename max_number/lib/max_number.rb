def max_number(numbers)
  # YOUR CODE GOES HERE
  max = numbers.first
  numbers.each do |n|
    if n > max
      max = n
    end
  end
  max
end
