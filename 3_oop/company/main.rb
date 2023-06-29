require_relative "company"

company = Company.new("tinkon")
vova = Manager.new("Vova")
oleg = TopManager.new("Oleg")
slava = Operator.new("Slava")
viktor = Manager.new("Viktor")
pit = Operator.new("Pitter")

company.hire(vova)
company.hire_all([vova, oleg, slava])
vova.work
company.accrue_salary
viktor.work
puts vova.company.name
pit.take_salary