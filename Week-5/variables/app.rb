my_variable = 5.0
second_num = 12

p my_variable.to_s.class
p my_variable.class

puts my_variable + second_num

first_name = "louis"
last_name = "Puchowski"
eye_colour = "blue"
age = 21.80

puts first_name.upcase
puts last_name.downcase
puts "My name is #{first_name.capitalize}"
puts first_name.reverse.capitalize

puts "My name is #{first_name.capitalize} #{last_name.capitalize}, I am #{age.floor} years old"

array = ["apple", 12, [4,5], "Louis"]

puts array
print array
p array
puts array[3]
puts array[2][1]

puts array.first
puts array.last
puts array[-1]
puts array[-2]

array[0] = "pear"
array.push "word"
print array

last = array.pop
puts last
puts array

# puts my_variable.methods

# JSON
person = {
  name: "louis",
  age: 28,
  eye_colour: "blue"
}

# Hash rockets
person2 = {
  :name => "louis",
  :age => 28,
  :eye_colour => "blue"
}
person[:name] = "richard"
puts person[:name]

person[:city] = "london"
puts person

letters = "abcdefg"
puts letters.reverse

letters.reverse!
puts letters
