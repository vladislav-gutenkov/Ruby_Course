def find_max(array)
  max = 0
  max_index = 0
  for i in 0..(array.length - 1)
    if array[i] > max
      max = array[i]
      max_index = i
    end
  end
  [max, max_index]
end

array = [15, 10, -3, 7, 2, 1]
value, index = find_max(array)
puts "Max value: #{value}, index: #{index}"
