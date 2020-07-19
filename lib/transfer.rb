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
end
