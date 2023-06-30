require_relative "cat"
require_relative "dog"

def over_voice(cat)
  cat.voice while cat.weigth > Cat::MIN_WEIGHT
end

def over_eat(cat)
  cat.eat(Cat::MAX_WEIGHT)
end

def food_count(cat)
  puts cat.name
  puts "съедено корма #{cat.korm} грамм"
  puts "выпито воды #{cat.water} мл"
end

cat1 = Cat.new("barsik")
cat2 = Cat.new("bobik")
# cat1.eat(20)
# cat1.drink(40)
# cat2.toilet
# cat2.status
# over_eat(cat2)
# food_count(cat1)
# food_count(cat2)
# Cat.counter
dog1 = Dog.new("lora")
# dog1.voice
dog2 = Dog.new("mura")
# over_eat(dog2)
# food_count(dog2)
# Cat.counter
# Dog.counter

p cat1 > dog1


