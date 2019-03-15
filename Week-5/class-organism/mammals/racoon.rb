require_relative "../animal"
require_relative "../animal_types/mammals"

class Racoon < Animal
  include Mammals

  def speak
    puts "chitter!"
  end

  def number_of_legs
    Quadruped.legs
  end

end

steve = Racoon.new

steve.speak
steve.number_of_legs

elephant = Animal.new

elephant.speak
