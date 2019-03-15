class Animal

  attr_accessor :kind

  def initialize kind
    @kind = kind
  end

  def eat food
    puts "#{@kind} is eating #{@food}"
    @hungry
  end

  def sleep
    @state = "asleep"
  end

  def wake
    @state = "awake"
  end

  def description
    puts "#{@kind} is #{@state}"
  end

end
