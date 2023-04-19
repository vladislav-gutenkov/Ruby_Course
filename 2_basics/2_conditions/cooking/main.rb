milk_amount = 1400 # ml
powder_amount = 705 # g
eggs_count = 9 # items
sugar_amount = 10 # g
oil_amount = 30 # ml
apple_count = 3 # items

# powder - 400 g, sugar - 10 g, milk - 1 l, oil - 30 ml
if powder_amount >= 400 && sugar_amount >= 10 && milk_amount >= 1000 && oil_amount >= 30
  powder_amount -= 400
  sugar_amount -= 10
  milk_amount -= 1000
  oil_amount -= 30
  puts "Pancakes"
else
  puts "недостаточно ингрдиентов для приготовления Pancakes"
end

# milk - 300 ml, powder - 5 g, eggs - 5
if milk_amount >= 300 && powder_amount >= 5 && eggs_count >= 5
  milk_amount -= 300
  powder_amount -= 5
  eggs_count -= 5
  puts "Omelette"
else
  puts "недостаточно ингрдиентов для приготовления Omelette"
end

# apples - 3, milk - 100 ml, powder - 300 g, eggs - 4
if apple_count >= 3 && milk_amount >= 100 && powder_amount >= 300 && eggs_count >= 4
  apple_count -= 3
  milk_amount -= 100
  powder_amount -= 300
  eggs_count -= 4
  puts "Apple pie"
else
  puts "недостаточно ингрдиентов для приготовления Apple pie"
end

puts "У Вас осталось: "
puts "#{milk_amount}ml milk"
puts "#{powder_amount}g powder"
puts "#{eggs_count} eggs"
puts "#{sugar_amount}g sugar"
puts "#{oil_amount}ml oil"
puts "#{apple_count} apples"
