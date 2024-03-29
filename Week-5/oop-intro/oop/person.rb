class Person

  attr_accessor :name, :sex, :age, :height, :weight
  #attr_writer
  #attr_reader

  def initialize name, sex, age, height, weight
    @name = name
    @sex = sex
    @age = age
    @height = height
    @weight = weight

  end

  def calculate_bmi
    (@weight/(@height ** 2)).to_f
  end

  def calculate_bmr
    if @sex == "male"
      bmr = 66.47 + (13.7 * @weight) + (5 * @height * 100) - (6.8 * @age)
    else
      bmr = 655.1 + (9.5 * @weight) + (1.85 * @height * 100) - (4.6 * @age)
    end
    bmr
  end

  def description
    puts "#{@name} has a BMI of #{calculate_bmi}. Recommended calorie intake is #{calculate_bmr} calories"
  end

end
