# return an array of reversed words
def reverse_array_of_strings words
  words.map do |word|
    word.reverse
  end
end

# return all the even numbers less than the given number
def even_numbers_less_than num
  array = []
  i = 0
  while i != (num - 1)
    if i % 2 == 0 # Can also use ".even?", e.g. "if i.even?"
      array.push i
    end
    i+=1
  end
  array
end

# return the average of all numbers in an array
def average numbers
  numbers.reduce(0,:+).to_f / numbers.length.to_f
end
