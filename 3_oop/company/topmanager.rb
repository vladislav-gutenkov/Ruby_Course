class TopManager
  attr_reader :name, :salary
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
      @salary = calculate_salary
    end
  end

  private

  def calculate_salary
    if company.income > BONUS_IF_INCOME
      SALARY + SALARY * BONUS_PER
    else
      SALARY
    end
  end
end
