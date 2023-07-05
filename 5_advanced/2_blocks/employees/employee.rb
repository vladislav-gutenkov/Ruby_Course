class Employee
  attr_reader :name, :department

  def initialize(name, department)
    @department = department
    @name = name
  end
end
