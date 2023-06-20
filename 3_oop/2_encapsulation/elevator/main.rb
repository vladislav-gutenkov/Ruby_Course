require_relative "elevator"

elevator = Elevator.new(-3, 36)

loop do
  puts "Введите номер этажа: "
  floor = gets.chomp.to_i
  elevator.move(floor)
end
