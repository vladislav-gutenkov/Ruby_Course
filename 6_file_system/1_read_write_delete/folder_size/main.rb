class MyError < StandardError
  def initialize(message)
    super(message)
  end
end

def calculate_folder_size(path)
  size = 0.0
  if Dir.exist?("#{path}") == false
    raise MyError, "введен невенрый путь до директории"
  else
    Dir.glob("#{path}/**/*").each do |el|
      size += File.size(el) if File.file?(el)
    end
    size_to_kb(size)
  end
end

def size_to_kb(size)
  size /= 1024
  size.round(2)
end

begin

puts calculate_folder_size("/Users/vladislav/Ruby_Course")

rescue MyError => error
  puts "ошибка: #{error.message}"
end