class Duck

  @@names_of_ducks = []

  attr_accessor :name, :colour, :size

  def initialize name, colour, size
    @name = name
    @colour = colour
    @size = size
    add_duck_name
  end

  def speak
    puts "Quack! My name is #{@name}"
  end

  def update_name name
    @name = name
  end

  def description
    puts "My name is #{@name} and I am an #{@colour} duck"
  end

  def add_duck_name
    @@names_of_ducks.push @name
    # print @@names_of_ducks
  end

  def self.duck_names
    @@names_of_ducks
  end

end
