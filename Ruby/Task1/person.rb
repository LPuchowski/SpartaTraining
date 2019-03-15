class Person < Animal

  attr_accessor :age, :gender, :name

  def initialize age, gender, name
    @kind = "person"
    @age = age
    @gender = gender
    @name = name
  end

  def eat food
    if food == "person"
      puts "#{@name} cannot eat another #{food}"
    else
      puts "#{@kind} is eating #{food}"
    end
  end

  def description
    puts "#{@name} is #{@state}"
  end

end
