require_relative "manager"
require_relative "topmanager"
require_relative "operator"

class Company
  attr_accessor :income, :employes

  def initialize(name)
    @name = name
    @income = 0
    @employes = []
  end

  def hire(employee)
    if @employes.include?(employee)
      puts "#{employee.name} уже работает в нашей компании"
    else
      @employes << employee
      get_employes
    end
  end

  def hire_all(employes)
    employes.each {|employee| hire(employee) }
  end

  def fire(employee)
    @employes.delete(employee)
    get_employes
  end

  def get_employes
    puts @employes.inspect
  end

  def accrue_salary(name)
    @employes.each {|employee| employee.take_salary(name)}
  end

  def get_income
    puts "компания заработала #{@income}"
  end
end
