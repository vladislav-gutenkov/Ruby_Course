class Cat
  attr_accessor :weigth
  attr_reader :name, :cats

  MIN_WEIGHT = 1000
  MAX_WEIGHT = 9000
  @@cats = 0

  def initialize(name)
    @name = name
    @weigth = rand(MIN_WEIGHT..MAX_WEIGHT)
    puts "Появился кот по имени #{@name} с весом #{@weigth} грамм"
    @@cats += 1
  end

  def toilet
    @weigth -= 1
    status
  end

  def voice
    puts "#{@name} - Meow"
    @weigth -= 1
    status
  end

  def eat(food_grams)
    @weigth += food_grams
    status
  end

  def drink(water_ml)
    @weigth += (water_ml / 2)
    status
  end

  def status
    return unless @weigth >= MAX_WEIGHT || @weigth <= MIN_WEIGHT

    puts "#{@name} - DEAD"
    @@cats -= 1
  end

  def status_cat
    if @weigth >= MAX_WEIGHT || @weigth <= MIN_WEIGHT
      puts "#{@name} - DEAD"
    else
      puts "#{@name} - LIVE вес кота #{@weigth}"
    end
  end

  def self.counter
    puts "Всего котов: #{@@cats}"
  end
end

cat1 = Cat.new("barsik")
cat2 = Cat.new("bobik")
cat1.eat(10_000)
cat2.toilet
cat2.status_cat
Cat.counter
