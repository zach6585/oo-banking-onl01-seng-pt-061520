class Transfer
  attr_accessor :sender, :receiver, :transfer_amount, :status
  def initialize (sender, receiver, amount)
    @sender = sender 
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end 
end
