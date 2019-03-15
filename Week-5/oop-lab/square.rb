class Square

  @@square_count = 0

  attr_accessor :side_length, :width, :scale

  def initialize side_length, width, scale
    @length = side_length
    @width = width
    @scaled_length = side_length * scale
    @scaled_width = width * scale
    count
  end

  def calculate_area
    @length * @width
  end

  def calculate_perimeter
    @length * 4
  end

  def scale_area
    @scaled_length * @scaled_width
  end

  def scale_perimeter
    @scaled_length * 4
  end

  def description
    puts "Area: #{calculate_area} Perimeter: #{calculate_perimeter} Scaled Area: #{scale_area} Scaled Perimeter: #{scale_perimeter}"
  end

  def count
    @@square_count += 1
    puts "You have #{@@square_count} squares"
  end

  def self.square_count
    @@square_count
  end

end
