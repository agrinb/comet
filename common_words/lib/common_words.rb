require "pry"
def most_common(string)
  str_string = string.downcase.gsub(/[^a-z0-9\s]/i, '')
  array = str_string.split(" ")
  hash = Hash.new(0)
  array.each_with_object(hash) do | word, hash|
    hash[word] += 1
  end
  arr = []
  hash.each do |word, count|
    if count == hash.values.max
      arr << word
    end
  end
  arr
end



# def most_common(string)
# str_string = string.downcase.gsub(/[^a-z0-9\s]/i, '')
# array = str_string.split(" ")
# binding.pry
# hash = array.group_by { |word| word }
# binding.pry

# end
