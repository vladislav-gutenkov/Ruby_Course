class Operator
  attr_reader :name
  attr_accessor :company

  SALARY = 30_000

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
    @salary = SALARY
    puts get_salary
    end
  end
end
