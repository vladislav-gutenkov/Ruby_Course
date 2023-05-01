volume = 1200

swimming_pool = 0

time = 0

filling_speed = 30 # 30 litres per minute
devastation_speed = 10 # 10 litres per minute

while swimming_pool < volume
  swimming_pool += filling_speed
  swimming_pool -= devastation_speed
  time += 1
  puts time
end
