# Write a function that multiplies two numbers and returns the result
# multiply
def multiply num1, num2
  return num1 * num2
end

# Write a function that adds three numbers together and returns the result
# add_three
def add_three n1, n2, n3
  return n1 + n2 + n3
end

# Write a function that returns the smaller of 2 numbers
# smallest_number

def smallest_number n1, n2
  [n1, n2].min
end

# Write a function that returns the largest of 3 numbers
# max_of_three
def max_of_three n1, n2, n3
  [n1, n2, n3].max
end

# Write a function that returns the reverse of a string
# reverse_string
def reverse_string s1
  s1.reverse
end

# write a function that returns a string with the vowels stripped out
# disemvowel
def disemvowel string
  return string.delete "aeiouAEIOU"
end

# write a function that removes all ODD numbers from an array
# remove_odd
def remove_odd a
  return a.delete_if &:odd?
end

# write a function that removes all EVEN numbers from an array
# remove_even
def remove_even a
  return a.delete_if &:even?
end

# write a function that takes an array of strings and returns the string with the longest char length
# longest_string
def longest_string ar
  return ar.max_by(&:length)
end

# discard the first 3 elements of an array,
# e.g. [1, 2, 3, 4, 5, 6] becomes [4, 5, 6]
def all_elements_except_first_3 a
  a.shift
  a.shift
  a.shift
  return a
end

# turn an array (with an even number of elements) into a hash, by
# pairing up elements. e.g. ['a', 'b', 'c', 'd'] becomes
# {'a' => 'b', 'c' => 'd'}
def convert_array_to_a_hash a1
  return Hash[*a1.flatten(1)]
end

# Write a function that takes any number and returns a value based on these rules

# For multiples of three print "Fizz" instead of the number
# For the multiples of five print "Buzz".
# For numbers which are multiples of both three and five print "FizzBuzz".
# Otherwise, print the number
def fizz_buzz number
  if number%3 == 0 && number%5 == 0
    return "FizzBuzz"
  elsif number%3 == 0
    return "Fizz"
  elsif number%5 == 0
    return "Buzz"
  else
    return number
  end
end
