require_relative "person"

person1 = Person.new("Jim", "male", 27, 2.00, 85)
person2 = Person.new("Alice", "female", 45, 1.50, 50.00)

puts person1.name
puts person1.description
puts person2.description
