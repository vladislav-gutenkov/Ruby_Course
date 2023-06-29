class TopManager
  attr_reader :name
  attr_accessor :company

  SALARY = 100_000
  BONUS_IF_INCOME = 10_000_000
  BONUS_PER = 1.5

  def initialize(name)
    @name = name
    @company = nil
  end

  def get_salary
    @salary
  end

  def take_salary
    if @company.nil?
      puts "#{@name} не работает в компании поэтому не получает зп"
    else
    if company.income > BONUS_IF_INCOME
      @salary = SALARY + SALARY * BONUS_PER
    else
      @salary = SALARY
    end
    puts get_salary
    end
  end
end