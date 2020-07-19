class Transfer
  attr_accessor :sender, :receiver, :amount, :status
  def initialize (sender, receiver, amount)
    @sender = sender 
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end 
  
  def valid?
    if sender.valid? && receiver.valid? 
      return true 
    else 
      return false 
    end 
  end 
  
  def execute_transaction
    if sender.balance < @amount || !valid? 
      return "Transaction rejected. Please check your account balance."
    else 
      sender.balance -= @amount 
      receiver.balance += @amount 
    end 
  end 
end
