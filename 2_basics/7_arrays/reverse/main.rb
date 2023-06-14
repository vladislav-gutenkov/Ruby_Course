puts "Введите что либо"
user_input = gets.chomp.split
user_input.to_a
puts user_input.inspect

reverse_arr = []

index = user_input.length - 1

while index >= 0
  reverse_arr << user_input[index]
  index -= 1
end

puts reverse_arr.inspect
