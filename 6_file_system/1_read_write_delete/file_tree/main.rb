def file_hierachy(path)
  Dir.glob("#{path}/**/*")
end

puts file_hierachy("/Users/vladislav/Ruby_Course")
