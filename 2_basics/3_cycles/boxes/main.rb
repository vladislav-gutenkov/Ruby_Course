user_input = gets.to_i

x = 0

container = 0

trail = 0
while x < user_input
  for box in 1..27

    if (box - 1) % 27 == 0

      if container % 12 == 0
        trail += 1
        puts "trail: #{trail}"
      end

      container += 1
      puts " container: #{container}"
    end
    x += 1
    puts "\tbox #{box}"

    break if x == user_input
  end
end
