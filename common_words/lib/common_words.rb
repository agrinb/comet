require "pry"

# OLD
# def most_common(string)
#   str_string = string.downcase.gsub(/[^a-z0-9\s]/i, '')
#   array = str_string.split(" ")
#   hash = Hash.new(0)
#   array.each_with_object(hash) do | word, hash|
#     hash[word] += 1
#   end
#   arr = []
#   hash.each do |word, count|
#     if count == hash.values.max
#       arr << word
#     end
#   end
#   arr
# end

def most_common(string)
  # binding.pry
  arr = string.downcase.gsub(/[^a-z0-9\s]/i, '').split(" ")
  arr = arr.map { |x| x.downcase }
  words_hash = arr.group_by { |x| x }
  final_arr = []
  words_hash.each do |k,v|
    #binding.pry
    if v.length > 1
      final_arr << k
    end
  end
  p final_arr
end

most_common('Words in a short, short words, lists of words!')