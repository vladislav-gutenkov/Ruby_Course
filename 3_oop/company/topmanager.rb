require_relative "company"

class TopManager
  attr_reader :name
  SALARY = 100_000
  BONUS_IF_INCOME = 10_000_000
  BONUS_PER = 1.5

  def initialize(name)
    @name = name
    @position = "topmanager"
  end

  def get_salary
    puts "зарплата топ-менеджера :#{@salary}"
  end

  def take_salary(arg)
    if arg.income > BONUS_IF_INCOME
      @salary = SALARY + SALARY * BONUS_PER
    else
      @salary = SALARY
    end
    get_salary
  end
end