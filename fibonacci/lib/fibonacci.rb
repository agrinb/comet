# YOUR CODE HERE
#1 1 2 3 5 8 13
require 'pry'


def fibonacci(n)
  if n > 2
    sum = fibonacci(n -1 ) + fibonacci(n - 2)
  else
    1
  end
end



