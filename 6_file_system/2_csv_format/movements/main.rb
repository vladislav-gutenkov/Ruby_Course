require_relative "movement"

file = Movements.new("/Users/vladislav/Ruby_Course/6_file_system/2_csv_format/movements/example.csv")
file.get_expense_sum
file.get_income_sum
file.get_expense_company

puts "Сумма расходов: #{file.expense_sum} руб"
puts "Сумма доходов: #{file.income_sum} руб"
puts "Суммы расходов по организациям:"
file.sum.each {|key, value| puts "#{key}: #{value}руб" }
