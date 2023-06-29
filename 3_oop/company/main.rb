require_relative "company"

company = Company.new("tinkon")
vova = Manager.new("Vova")
oleg = TopManager.new("Oleg")
slava = Operator.new("Slava")
viktor = Manager.new("Viktor")

company.hire(vova)
company.hire_all([vova, oleg, slava])
vova.work(company)
company.accrue_salary(company)
viktor.work(company)