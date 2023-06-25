require "date"
require_relative "BankAccount"

class DepositAccount < BankAccount
  def initialize
    @balance = 0
    @last_income = nil
  end

  def put(amount)
    super
    @last_income = DateTime.now
  end

  def take(amount)
    if DateTime.now >= @last_income.next_month
      super
    else
      puts "операция невозможна"
    end
  end
end
