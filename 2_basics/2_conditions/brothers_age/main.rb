vasya_age = 11

victor_age = 15

misha_age = 37

min = nil

middle = nil

max = nil

if vasya_age > victor_age && victor_age > misha_age
  max = vasya_age
  middle = victor_age
  min = misha_age
elsif vasya_age > victor_age && victor_age < misha_age && vasya_age > misha_age
  max = vasya_age
  middle = misha_age
  min = victor_age
elsif victor_age > vasya_age && vasya_age > misha_age
  max = victor_age
  middle = vasya_age
  min = misha_age
elsif victor_age > vasya_age && vasya_age < misha_age && victor_age > misha_age
  max = victor_age
  middle = misha_age
  min = vasya_age
elsif misha_age > vasya_age && vasya_age > victor_age
  max = misha_age
  middle = vasya_age
  min = victor_age
else
  max = misha_age
  middle = victor_age
  min = vasya_age
end

puts "max #{max}"
puts "middle #{middle}"
puts "min #{min}"
