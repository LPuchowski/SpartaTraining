def say_hello(name)
  puts "Hello #{name}"
end

def say_bye name
  puts "Bye name"
end

def add_nums num1, num2=4
  return num1 + num2
end

def create_user name, course="eng23", location
  puts "#{name} is on course #{course} in #{location}"
end

# Splat
def say_some_words *words
  puts words
  print words
end

def students course, *people, location
  people.each do |person|
    puts "#{person} is on #{course} in #{location}"
  end
end

students "eng23", "Louis", "Ashley", "CJ", "Abdul", "Birmingham"

say_some_words "Hello", "this", "is", "some", "words"

say_hello "Louis"

# create_user "Louis"
create_user "Louis", "eng24", "Birmingham"

puts add_nums 3, 76
add_nums 9
