require 'pry'

class Transfer

  attr_accessor :receiver, :sender, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    sender.valid? && receiver.valid?
  end

  def execute_transaction

    if status = "pending" && valid?
      #binding.pry
      sender.balance -= amount
      receiver.balance += amount
      self.status = "complete"
    else
      "Transaction rejected. Please check your account balance."
end
  end
end
