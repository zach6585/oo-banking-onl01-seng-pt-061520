class BankAccount
  attr_accessor :balance, :status
  attr_reader :name
  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end 
  
  def deposit(money)
    @balance += money 
  end 
  
  def display_balance
    "Your balance is $#{self.balance}."
  end 
  
  def valid?
    if @status == "open" && @balance > 0 
      return true 
    else 
      return false 
    end 
  end 
  
  def close_account 
    @status = "closed"
    @balance = 0 
end
