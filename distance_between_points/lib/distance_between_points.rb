# YOUR CODE HERE
require 'pry'

def  distance(point1, point2)
  x1 = point1[0].to_f
  y1 = point1[1].to_f
  x2 = point2[0].to_f
  y2 = point2[1].to_f

  formula_prep = ((x1 - x2) ** 2) + ((y1 - y2) ** 2)
  distance = Math.sqrt(formula_prep).round(3)
end

#distance([0,5], [7,8])
