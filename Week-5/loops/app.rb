# Basic loop

def say_hello
  puts "Hello World"
end

def print_words word
  puts "#{word}"
end

i = 0;

# loop do
#   # i++ doesn't work
#   i+=1
#   puts "The value of i is #{i}"
#   if i > 5
#     break
#   end
# end

# While
# while i < 10
#   puts "Hello World!"
#   i+=1
# end

# Do while
# begin
#   say_hello
#   i+=1
# end while (i < 5)

# Each
# (0..10).each do [i]
#   say_hello
# end

some_words = ["this", "is", "an", "array", "of", "words"]

# some_words.each do |dataitem| # "dataitem" can be renamed to anything
#   puts "#{dataitem}"
# end
#
# some_words.each_with_index do |dataitem, index| # "dataitem" can be renamed to anything
#   puts "#{dataitem} is held at index #{index}"
# end

person = {name: "Louis", age: 21, city: "Brum"}

# person.each do |key, value|
#   puts "The key is #{key} and its value is #{value}"
# end

# # For
# for i in 0...5
#   puts "#{i}"
# end

array = []

# for letter in "a".."z"
#   # puts "#{letter}"
#   array.push letter
# end

# print array

# Map
# reversed_words = some_words.map do |word|
#   word.reverse
# end
#
# p reversed_words
#
# some_words.map! do |word|
#   word.reverse
# end
#
# print some_words

some_nums = [1,1,2,3,5,8,13,21,34,55,89]

# puts some_nums.sum

# sum = some_nums.reduce 0 do |total, number|
#   total + number
# end

quick_sum = some_nums.reduce(0,:+) # Same as 86-88

puts "Sum is #{quick_sum}"

# For in
