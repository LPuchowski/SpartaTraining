require_relative "animal"
require_relative "person"

cow = Animal.new("cow")
louis = Person.new(21, "male", "Louis")

cow.sleep
print cow.description
cow.wake
print cow.description
louis.eat louis.kind
louis.eat cow.kind
louis.sleep
print louis.description
louis.wake
print louis.description
