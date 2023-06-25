require_relative "cat"

class Dog < Cat
  @@dogs = 0
  def initialize(name)
    @name = name
    @weigth = rand(MIN_WEIGHT..MAX_WEIGHT)
    puts "Появилась собака по имени #{@name} с весом #{@weigth} грамм"
    @@dogs += 1
    @korm = 0
    @water = 0
  end

  def voice
    puts "#{@name} - Woof"
    @weigth -= 1
    dead?
  end

  def dead?
    return unless @weigth >= MAX_WEIGHT || @weigth <= MIN_WEIGHT

    puts "#{@name} - DEAD"
    @@dogs -= 1
  end

  def status
    if @weigth >= MAX_WEIGHT || @weigth <= MIN_WEIGHT
      puts "#{@name} - DEAD"
    else
      puts "#{@name} - LIVE вес собаки #{@weigth}"
    end
  end

  def self.counter
    puts "Всего собак: #{@@dogs}"
  end
end
