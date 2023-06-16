phone_book = {}

loop do
  puts "Введите номер телефона(в формате 8ХХХХХХХХХХ), имя абонената"
  puts "Для вывода списка контактов введите: LIST"
  user_input = gets.chomp

  if user_input == "LIST"
    puts phone_book.inspect
  elsif user_input =~ (/^[A-Za-zА-Яа-я]+\s?[A-Za-zА-Яа-я]*?$/)
    if phone_book.value?(user_input)
      puts "Такое имя уже есть в списке контактов"
      puts phone_book.select {|_key, value| value == user_input }
    else
      puts "Введите номер(в формате 8ХХХХХХХХХХ) для контакта #{user_input}"
      number = gets.chomp
      if number =~ (/^8\d{10}$/)
        if phone_book.key?(number)
          puts "Такой номер уже есть в телефонной книге"
          puts phone_book.select {|key, _value| key == number }
        else
          phone_book[number] = user_input
          puts "Успешно"
        end
      else
        puts "Неверный ввод номера, контакт не сохранен"
      end
    end
  elsif user_input =~ (/^8\d{10}$/)
    if phone_book.key?(user_input)
      puts "Такой номер уже есть в телефонной книге"
      puts phone_book.select {|key, _value| key == user_input }
    else
      puts "Введите имя для контакта с номером #{user_input}"
      name = gets.chomp
      if name =~ (/^[A-Za-zА-Яа-я]+\s?[A-Za-zА-Яа-я]*?$/)
        if phone_book.value?(name)
          puts "Такое имя уже есть в списке контактов"
          puts phone_book.select {|_key, value| value == name }
        else
          phone_book[user_input] = name
          puts "Успешно"
        end
      else

        puts "Неверный формат ввода"

      end
    end
  else
    puts "Неверный формат ввода"
  end
end
