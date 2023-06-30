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

  def get_top_salary_staff(count)
    top_staff = @employes.sort_by {|employee| - employee.salary }
    top_staff.first(count).each {|employee| puts employee.salary }
  end

  def get_lowest_salary_staff(count)
    top_staff = @employes.sort_by {|employee| employee.salary }
    top_staff.first(count).each {|employee| puts employee.salary }
  end

  def hire(employee)
    if in_company?(employee)
      puts "#{employee.name} уже работает в нашей компании"
    elsif employee.company.nil?
      @employes << employee
      employee.company = self
    else
      puts "#{employee.name} уже работает в другой компании"
    end
  end

  def hire_all(employes)
    employes.each {|employee| hire(employee) }
  end

  def fire(employee)
    if in_company?(employee)
      @employes.delete(employee)
      employee.company = nil
    else
      puts "#{employee.name} не работает в компании #{name}"
    end
  end

  def get_employes
    @employes
  end

  def accrue_salary
    @employes.each {|employee| employee.take_salary }
  end

  def get_income
    @income
  end

  private

  def in_company?(employee)
    @employes.include?(employee)
  end
end
