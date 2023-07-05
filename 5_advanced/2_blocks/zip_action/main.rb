def zip(arr, another_arr)
  arr.each do |el|
    another_arr.each do |another_el|
      yield el , another_el if el.length == another_el.length
    end
  end
end

arr1 = ["Box", "Taxi", "Dictionary"]
arr2 = ["Test", "Frost", "Mark"]
# first и second должны иметь одинаковую длину и относиться к разным массивам
zip(arr1, arr2) do |first, second|
  puts "#{first} and #{second} have same length"
end