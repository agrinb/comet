# YOUR CODE HERE
#1 1 2 3 5 8 13
require 'pry'


def fibonacci(n)
  if n > 2
    sum = fibonacci(n -1 ) + fibonacci(n - 2)
  else
    start_n(n)
  end
  sum
end


def start_n(n)
  if n <= 2
   return 1
  end
end


