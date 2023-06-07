puts "Введите номер телефона"
number = gets.strip

if number.match(/(^(\+7?|7?|8?)\d{10}$)/)
  if number.match(/^\+7|^7|^8/)
    num = number.sub(/\+7|7|8/, "")
    num = "7" + num
  else
    num = "7" + number
  end
  puts num
else
  puts "Неверный формат номера"
end
