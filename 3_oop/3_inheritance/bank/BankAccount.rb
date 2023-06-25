class BankAccount
  def get_amount
    puts "баланс счета: #{@balance}"
  end

  def put(amount)
    if amount > 0
      @balance += amount
      puts "баланс счета пополнен на: #{amount}"
      get_amount
    else
      puts "сумма отрицательная"
    end
  end

  def take(amount)
    if amount < 0
      puts "сумма отрицательная"
    elsif amount > @balance
      puts "такой суммы нет на балансе"
    else
      @balance -= amount
      puts "#{amount} списано с баланса счета"
    end
    get_amount
  end
end
