arr = []
size = 7
size -= 1

for index_arr in 0 .. size
  embedded_arr = []
  for index_embedded_arr in 0 .. size
    sum_index = index_arr + index_embedded_arr
    index_par = index_arr == index_embedded_arr
    if index_par || sum_index == size
      embedded_arr << "x"
    else
      embedded_arr << " "
    end
  end
  arr << embedded_arr
end

arr.each do |embedded_arr|
  puts embedded_arr.join(" ")
end

