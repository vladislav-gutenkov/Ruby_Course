class Elevator
  def initialize(min_floor, max_floor)
    @min_floor = min_floor
    @max_floor = max_floor
    @current_floor = 1
  end

  def get_current_floor
    puts "Текущий этаж: #{@current_floor}"
  end

  def move_down
    if @current_floor > @min_floor
      @current_floor -= 1
      get_current_floor
    else
      puts "ниже некуда"
    end
  end

  def move_up
    if @current_floor < @max_floor
      @current_floor += 1
      get_current_floor
    else
      puts "выше некуда"
    end
  end

  def move(floor)
    if floor > @max_floor || floor < @min_floor
      puts "Ошибка, такого этажа нет."
    elsif floor < @current_floor
      move_down while @current_floor > floor
    elsif floor > @current_floor
      move_up while @current_floor < floor
    else
      get_current_floor
    end
  end
end
