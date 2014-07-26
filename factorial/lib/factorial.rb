# YOUR CODE HERE
require 'pry'
require 'pry-debugger'


def factorial(n)
  if n > 1
    fac = n * (n - 1)
    n -= 2
    while n > 0
      fac = fac * n
      n -= 1
    end
    fac
  else
    fac = 1
  end
end










