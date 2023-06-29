require_relative "manager"
require_relative "topmanager"
require_relative "operator"

class Company
  attr_accessor :income
  attr_reader :employes, :name

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
      employee.company = self
      puts @employes.inspect
    end
  end

  def hire_all(employes)
    employes.each {|employee| hire(employee) }
  end

  def fire(employee)
    @employes.delete(employee)
    employee.company = nil
  end

  def get_employes
    @employes
  end

  def accrue_salary
    @employes.each {|employee| employee.take_salary}
  end

  def get_income
    @income
  end
end
