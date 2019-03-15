def is_integer? num
    num.count("a-zA-Z") > 0
end

puts "Enter which setting you would like: (b)asic, (a)dvanced, (BMI) or (t)rip"
setting = gets.chomp.to_s

if setting == "b"
  puts "Enter the first number that you want to perform an operation on"
  num1 = gets.chomp.to_s
  puts "Enter the second number that you want to perform an operation on"
  num2 = gets.chomp.to_s
  puts "Enter the type of operation you want to perform (+, *, / or -)"
  op = gets.chomp.to_s
  if is_integer?(num1) == true || is_integer?(num2) == true
    puts "Invalid argument given"
  else
    num1 = num1.to_f
    num2 = num2.to_f
    case op
    when "+"
      answer = num1 + num2
      puts "Answer is #{answer}"
    when "*"
      answer = num1 * num2
      puts "Answer is #{answer}"
    when "/"
      answer = num1 / num2
      puts "Answer is #{answer}"
    when "-"
      answer = num1 - num2
      puts "Answer is #{answer}"
    else
      puts "Invalid argument given"
    end
  end
elsif setting == "a"
  puts "Enter the number that you want to perform an operation on"
  num1 = gets.chomp.to_s
  puts "Enter the type of operation you want to perform: (1) - power, (2) - square root "
  op = gets.chomp.to_s
  if is_integer?(num1) == true
    puts "Invalid argument given"
  else
    num1 = num1.to_f
    case op
    when "1"
      puts "Enter the power"
      power = gets.chomp.to_s
      if is_integer?(power) == true
        puts "Invalid argument given"
      else
        power = power.to_f
        answer = num1 ** power
        puts "Answer is #{answer}"
      end
    when "2"
      answer = Math.sqrt(num1)
      puts "Answer is #{answer}"
    else
      puts "Invalid argument given"
    end
  end
elsif setting == "bmi" || setting == "BMI"
  puts "(i)mperial or (m)etric measurement?"
  measurement = gets.chomp.to_s
  if measurement == "i"
    puts "Enter weight in pounds"
    weight = gets.chomp.to_s
    puts "Enter height in inches"
    height = gets.chomp.to_s
    if is_integer?(weight) == true || is_integer?(height) == true
      puts "Invalid argument given"
    else
      weight = weight.to_f
      height = height.to_f
      answer = (weight / (height * height)) * 703
      puts "#{answer}"
    end
  elsif measurement == "m"
    puts "Enter weight in kilograms"
    weight = gets.chomp.to_s
    puts "Enter height in meters"
    height = gets.chomp.to_s
    if is_integer?(weight) == true || is_integer?(height) == true
      puts "Invalid argument given"
    else
      weight = weight.to_f
      height = height.to_f
      answer = weight / (height * height)
      puts "#{answer}"
    end
  else
    puts "Invalid argument given"
  end
elsif setting == "t"
  puts "Enter distance in miles"
  dist = gets.chomp.to_s
  puts "Enter fuel efficiency (mpg)"
  mpg = gets.chomp.to_s
  puts "Enter cost per gallon"
  cpg = gets.chomp.to_s
  puts "Enter speed in mph"
  speed = gets.chomp.to_s
  if is_integer?(dist) == true || is_integer?(mpg) == true || is_integer?(cpg) == true || is_integer?(speed) == true
    puts "Invalid argument given"
  else
    dist = dist.to_f
    mpg = mpg.to_f
    cpg = cpg.to_f
    speed = speed.to_f
    time = dist / speed
    cost = (dist / mpg) * cpg
  puts "Your trip will take #{time} hours and cost £#{cost}"
  end
else
  puts "Invalid argument given"
end
