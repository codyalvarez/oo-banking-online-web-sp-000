class BankAccount
  attr_accessor :balance, :status
  attr_reader :name

  def initialize(name, balance = 1000, status = 'open')
    @name = name
    @balance = balance
    @status = status
  end

  def deposit(amount)
    self.balance += amount
  end

<<<<<<< HEAD
=======
  def withdrawal(amount)
    self.balance -= amount
  end

# >>>>>>> 113d5c8af93ec93b025344f87ad68eb16b14d10d
  def display_balance
    "Your balance is $#{balance}."
  end

  def valid?
    if @status == "open" && @balance > 0
      true
    else
      false
    end
  end

  def close_account
    @status = "closed"
  end

end
