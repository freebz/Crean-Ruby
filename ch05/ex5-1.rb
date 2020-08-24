# Initialize Method

# Keep It Simple

class BankAccount
  def initialize(number)
    @number = number
    external_account = ExternalBankAccount.new
    external_account.load_balances(@number)
    external_account.sync_transactions
  end
end

bank_account = BankAccount.new("1234")



class BankAccount
  def initialize(number)
    @number = number
  end

  def load_bank_account
    external_account = ExternalBankAccount.new
    external_account.load_balances(@number)
    external_account.sync_transactions
  end
end

bank_account = BankAccount.new("1234")
bank_account.load_bank_account
