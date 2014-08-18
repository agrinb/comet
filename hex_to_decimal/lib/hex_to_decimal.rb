# YOUR CODE HERE

# (216 × 16**3) + (A16 × 16**2) + (F16 × 161) + (316 × 160),
# (2 × 4096) + (10 × 256) + (15 × 16) + (3 × 1), or 10995.
# def hash
require 'pry'

def hex(hex)
  hash = Hash.new(0)
  hash["1"] = 1
  hash["2"] = 2
  hash["3"] = 3
  hash["4"] = 4
  hash["5"] = 5
  hash["6"] = 6
  hash["7"] = 7
  hash["8"] = 8
  hash["9"] = 9
  hash["a"] = 10
  hash["b"] = 11
  hash["c"] = 12
  hash["d"] = 13
  hash["e"] = 14
  hash["f"] = 15


  arr = hex.split(//)
  arr.reverse!
  sum = 0
  arr_each_with_index do |el, i|
    sum += hash[el] * (16 ** i)
  end
  #binding.pry
  sum
end

#hex("2fa3")


