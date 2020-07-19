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
      @status = "rejected"
      return "Transaction rejected. Please check your account balance."
    elsif @status == "pending"
      sender.balance -= @amount 
      receiver.balance += @amount 
      @status = "complete"
    end 
  end 
  
  def reverse_transfer
    if @status == "complete"
      
    else 
    end 
end 
end
