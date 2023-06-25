require_relative "BankAccount"

COMMISSION = 0.01

class CardAccount < BankAccount
  def initialize
    @balance = 0
  end

  def take(amount)
    amount += amount * COMMISSION
    super
  end
end

card = CardAccount.new
card.put(1000)
card.take(100)