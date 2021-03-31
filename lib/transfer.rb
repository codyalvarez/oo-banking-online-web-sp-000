class Transfer

<<<<<<< HEAD
  attr_accessor :amount, :sender, :receiver, :status, :amount


  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = 'pending'
    @amount = amount
=======
  attr_accessor :transfer, :sender, :receiver, :status, :amount


  def initialize(sender, receiver, transfer)
    @sender = sender
    @receiver = receiver
    @transfer = transfer
    @status = 'pending'
    @amount = 50
>>>>>>> 113d5c8af93ec93b025344f87ad68eb16b14d10d
  end

  def valid?
    if @sender.valid? && @receiver.valid?
      true
    else
      false
    end
  end

  def execute_transaction
<<<<<<< HEAD
    if valid? && @sender.balance >= @amount && @status == "pending"
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
    else
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end

  def reverse_transfer
    if @status == "complete"
     @sender.balance += @amount
     @receiver.balance -= @amount
     @status = "reversed"
=======
    if valid? && sender.balance > amount && self.status == "pending"
      sender.withdrawal(self.amount)
      receiver.deposit(self.amount)
      self.status = "complete"


>>>>>>> 113d5c8af93ec93b025344f87ad68eb16b14d10d
    end
  end

end
