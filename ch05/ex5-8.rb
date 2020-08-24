# Moving Methods to a Module

class BankAccount
  def initialize(balance, interest_rate)
    @balance = balance
    @interest = interest_rate
  end

  def add_to_balance(amount)
    @balance = add(@balance, amount)
  end

  def calculate_interest
    multiply(@balance, @interest_rate)
  end

  private
  def add(a, b)
    a + b
  end

  def multiply(a, b)
    a * b
  end
end



class BankAccount
  include Math

  def initialize(balance, interest_rate)
    @balance = balance
    @interest = interest_rate
  end

  def add_to_balance(amount)
    @balance = add(@balance, amount)
  end

  def calculate_interest
    multiply(@balance, @interest_rate)
  end
end



class Accountant
  def file_taxes
  end
end

class SuperMarket
  def initialize(accountant)
    @accountant = accountant
  end
end

class ToyStore
  def initialize(accountant)
    @accountant = accountant
  end
end

accountant = Accountant.new
toy_store = ToyStore.new(accountant)
super_market = SuperMarket.new(accountant)
