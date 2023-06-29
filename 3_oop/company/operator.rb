require_relative "company"

class Operator
  attr_reader :name

  SALARY = 30_000

  def initialize(name)
    @name = name
    @position = "operator"
  end

  def get_salary
    puts "зарплата оператора :#{@salary}"
  end

  def take_salary(*_arg)
    @salary = SALARY
    get_salary
  end
end
