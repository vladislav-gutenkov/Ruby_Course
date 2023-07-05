require_relative "employee"
require_relative "company"

def generate_companies
  def generate_employee
    names = ["John", "Emma", "Michael", "Jackson"]
    surnames = ["Smith", "Johnson", "Williams"]
    departments = ["Sales", "Marketing", "Finance"]
    employee_full_name = "#{names.sample} #{surnames.sample}"
    Employee.new(employee_full_name, departments.sample)
  end

  companies = []
  company_names = ["Apple", "Amazon", "Google", "Facebook"]
  for company_name in company_names
    employees = []
    15.times { employees << generate_employee }
    companies << Company.new(company_name, employees)
  end
  companies
end

companies = generate_companies


company_workers = companies.flat_map {|company| company.workers}

puts company_workers.inspect
puts "------------------------------------"

name_j = company_workers.select {|workers| workers.name =~ (/^J.*/)}

puts name_j.inspect
puts "------------------------------------"

dep = name_j.group_by {|el| el.department}

puts dep.inspect

