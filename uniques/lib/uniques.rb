require 'pry'
require 'pry-debugger'

def uniques(list)
  results = []
  list = list.split(',')
  list.each do |n|
    unless results.include?(n)
      results << n
    end
  end
  results.join(",")
end


