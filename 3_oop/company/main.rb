require_relative "company"

tinkon = Company.new("tinkon")

vova = Manager.new("Vova")
oleg = TopManager.new("Oleg")
slava = Operator.new("Slava")
viktor = Manager.new("Viktor")
pit = Manager.new("Pitter")


tinkon.hire(vova)
tinkon.hire_all([vova, oleg, slava, viktor, pit])
vova.work
viktor.work
pit.work
tinkon.accrue_salary


tinkon.get_top_salary_staff(5)
tinkon.get_lowest_salary_staff(5)

