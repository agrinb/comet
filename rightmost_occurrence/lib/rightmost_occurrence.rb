# YOUR CODE HERE
require 'pry'
require 'pry-debugger'
def rightmost_occurrence(string, letter)
  string = string.downcase.split(//)
  place = nil
  string.each_with_index do | elem, index|
    if elem == letter
      place = index
    end
  end
  place


end

