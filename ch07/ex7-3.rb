# More Tests

# This method should be added to our CalculatorTest class
def should_add_two_nil_values
  # We need to decide what we expect the result of nil + nil is expected = 0

  calc = Calculator.new
  result = calc.add(nil, nil)

  equal?(result, expected)
end
...
tests.should_add_two_nil_values



# undefined method '+' for nil:NilClass (NoMethodError)



class Calculator
  def add(a, b)
    a.to_i + b.to_i
  end
end
