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
    @current_floor -= 1
    get_current_floor
  end

  def move_up
    @current_floor += 1
    get_current_floor
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
