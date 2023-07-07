arr = [1, -2, 3, -4, 5]
# result = arr.select { |x| x >= 0 }
result = arr.select(&:positive?)
puts result

arr = %w[a b c]
# puts arr.map { |x| x.upcase }
puts arr.map(&:upcase)

hash = {name: "John", age: 30}
# result = []
# hash.each { |k, v| result << "#{k}: #{v}" }
result = hash.map {|k, v| "#{k}: #{v}" }
puts result
