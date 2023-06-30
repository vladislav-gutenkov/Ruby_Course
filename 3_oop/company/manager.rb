class Manager
  attr_reader :cash_for_company, :name, :position, :salary
  attr_accessor :company

  MIN_MONEY_AMOUNT_FOR_COMPANY = 115_000
  MAX_MONEY_AMOUNT_FOR_COMPANY = 140_000
  SALARY = 50_000
  BONUS_PER = 0.05
  WORKING_SHIFT = 30

  def initialize(name)
    @name = name
    @company = nil
  end

  def work
    @cash_for_company = 0
    if @company.nil?
      puts "#{@name} не работает в компании"
    else
      WORKING_SHIFT.times do
        @cash_for_company += rand(MIN_MONEY_AMOUNT_FOR_COMPANY..MAX_MONEY_AMOUNT_FOR_COMPANY)
      end
      company.income += @cash_for_company
    end
  end

  def get_salary
    @salary.round
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
    SALARY + @cash_for_company * BONUS_PER
  end
end
