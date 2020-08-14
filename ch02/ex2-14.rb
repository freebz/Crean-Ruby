# Modules

class Math
  def add(a, b)
    a + b
  end

  def subtract(a, b)
    a - b
  end
end

math = Math.new
sum = math.add(2, 2)



module Math
  def add(a, b)
    a + b
  end

  def subtract(a, b)
    a - b
  end
end

class CashRegister
  include Math

  def calculate_change(total_cost, amount_paid)
    subtract(amount_paid, total_cost)
  end
end
