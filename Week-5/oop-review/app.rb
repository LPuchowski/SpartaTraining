require_relative "duck"

duck1 = Duck.new "Frank", "orange", "unit"
duck1.speak
duck2 = Duck.new "Howard", "blue", "smol"

duck1.speak
duck2.speak

duck2.name = "Stephanie"
duck2.speak

duck2.update_name "Louis"
duck2.description

puts Duck.duck_names
