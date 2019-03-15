class Circle

  attr_accessor :radius

  def initialize radius
    @radius = radius
    @diameter = radius * 2
  end

  def calculate_area
    Math::PI * (@radius * @radius)
  end

  def calculate_circumference
    Math::PI * @diameter
  end

  def description
    puts "Area: #{calculate_area} Circumference: #{calculate_circumference}"
  end

end
