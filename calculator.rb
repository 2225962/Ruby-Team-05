class Calculator
  def initialize
    @history = []
  end

  def add(a, b)
    result = a + b
    store_in_history(result)
    result
  end

  def subtract(a, b)
    result = a - b
    store_in_history(result)
    result
  end

  def multiply(a, b)
    result = a * b
    store_in_history(result)
    result
  end

  def divide(a, b)
    return nil if b == 0
    result = a / b
    store_in_history(result)
    result
  end

  def store_in_history(result)
    @history.push(result)
  end

  def show_history
    puts "History of calculations:"
    @history.each { |entry| puts entry }
  end
end

calculator = Calculator.new
puts calculator.add(10, 5)
puts calculator.subtract(20, 5)
puts calculator.multiply(4, 5)
puts calculator.divide(10, 0)  # Dividing by zero
calculator.show_history
