require 'pry'

numbers = [3, 5, 2, 6, 7, 9, 2, 16]


def map(collection)
  array = []
  collection.each do |x|
    array << (x * x)
  end
  array
end

def filter(collection)
end

def any?(collection)
end

def reduce(collection, initial = nil)
end
