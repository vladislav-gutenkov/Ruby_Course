email_checker = Set.new

loop do
  puts "ADD - добавить email LIST - вывести список"
  puts "Введите email адресс"
  user_input = gets.chomp

  if user_input == "LIST"
    puts email_checker.inspect
  elsif user_input =~ (/ADD/)
    user_input = user_input.gsub(/ADD\s/, "")
    if user_input =~ (/^[A-Z0-9._%+-]+@[A-Z0-9-]+.+.[A-Z]{2,4}$/i)
      email_checker << user_input
      puts "Успешно добавлен"
    else
      puts "Неверный формат ввода"
    end
  else
    puts "Нет ввода команды"
  end
end
