require_relative "company"

class Manager
  attr_reader :cash_for_company, :name, :position

  MIN_MONEY_AMOUNT_FOR_COMPANY = 115_000
  MAX_MONEY_AMOUNT_FOR_COMPANY = 140_000
  SALARY = 50_000
  BONUS_PER = 0.05
  WORKING_SHIFT = 30

  def initialize(name)
    @name = name
    @position = "manager"
  end

  def work(company, _amount=WORKING_SHIFT)
    if company.employes.include?(self)
    WORKING_SHIFT.times do
      @cash_for_company = rand(MIN_MONEY_AMOUNT_FOR_COMPANY..MAX_MONEY_AMOUNT_FOR_COMPANY)
      company.income += @cash_for_company
    end
    else
      puts "#{@name} не работает в компании"
    end
    company.get_income
  end

  def get_salary
    puts "зарплата менеджера: #{@salary}"
  end

  def take_salary(*_arg)
    @salary = SALARY + @cash_for_company * BONUS_PER
    get_salary
  end
end
