## CAN ONLY USE EACH METHOD PER README.MD


require 'pry'
def starts_with_vowel(animals)
  array = []
  vowels = ["a", "e", "o", "u", "i"]
  animals.each do |k,v|
    array << k if vowels.include?(k.chr)
  end
  array
end

def lonely_animals(animals)
  array = []
  animals.each do |k,v|
    array << k if v == 1
  end
  array
end

def total_animals(animals)
  sum = 0
  animals.each do |k, v|
    sum += v
  end
  sum
end

def add_new_animals(animals, new_shipment)
  new_shipment.each do |k, v|
    unless animals.keys.include?(k)
      animals.merge!(k => v)
      #binding.pry
    end
  end
  animals
end

def group_by_count(animals)
  hash = {}
  animals.each do |k,v|
    if hash.keys.include?(v)
      hash[v] << k
    else
      hash.merge!(v => [k])
    end
  end
  hash
end

