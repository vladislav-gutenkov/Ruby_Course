class Cat
  include Comparable
  attr_reader :name, :cats, :weigth, :korm, :water

  MIN_WEIGHT = 1000
  MAX_WEIGHT = 9000
  @@cats = 0

  def initialize(name)
    @name = name
    @weigth = rand(MIN_WEIGHT..MAX_WEIGHT)
    puts "Появился кот по имени #{@name} с весом #{@weigth} грамм"
    @@cats += 1
    @korm = 0
    @water = 0
  end

  def <=>(another_cat)
    self.weigth <=> another_cat.weigth
  end

  def toilet
    @weigth -= 1
    dead?
  end

  def voice
    puts "#{@name} - Meow"
    @weigth -= 1
    dead?
  end

  def eat(food_grams)
    @weigth += food_grams
    @korm += food_grams
    dead?
  end

  def drink(water_ml)
    @weigth += (water_ml / 2)
    @water += water_ml
    dead?
  end

  def dead?
    return unless @weigth >= MAX_WEIGHT || @weigth <= MIN_WEIGHT

    puts "#{@name} - DEAD"
    @@cats -= 1
  end

  def status
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
