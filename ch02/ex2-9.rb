# Methods

# Use Verbs

class Account
  def initialize(customer)
    @customer = customer
  end

  # Bad method
  def money(amount)
    @customer.balance -= amount
  end
end



class Account
  def initialize(customer)
    @customer = customer
  end

  # Good method
  def pay_bill(amount)
    @customer.balance -= amount
  end
end



# Bad Example
account = Account.new(current_user)
account.money(100)

# Good Example
account = Account.new(current_user)
account.pay_bill(100)
