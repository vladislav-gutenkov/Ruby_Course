def add_key(arg)
  for x in 1..10_000_000
    arg[x] = x
  end
end

hash = {}

add_key(hash)

start = Time.now
hash.key?(9_153_452)
finish = Time.now

puts "время на поиск ключа '9153452' в секундах #{finish - start}" 

start = Time.now
hash.value?(9_153_452)
finish = Time.now

puts "время на поиск значения '9153452' в секундах #{finish - start}"

# поиск по ключу происходит быстрее, чем поиск по значению, за счет того что программа знавет адреса конкретного ключа,
# а при поиске значений перебирает ключи в поиске значения
