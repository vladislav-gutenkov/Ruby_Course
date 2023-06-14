todo_list = []
loop do
  puts "введите команду"
  user_input = gets.strip

  if user_input =~ (/LIST/)
    todo_list.each_with_index {|value, index| puts "#{index + 1}: #{value}" }
  elsif user_input =~ (/ADD/)
    user_input = user_input.gsub(/ADD\s/, "")
    if user_input =~ (/^[^\d]$/)
      todo_list << user_input
    else
      index = user_input[(/^\d/)]
      index = index.to_i
      todo_list.insert(index - 1, user_input.sub(/^\d\s/, ""))
    end
  elsif user_input =~ (/(EDIT)/)
    user_input = user_input.gsub(/EDIT\s/, "")
    index = user_input[(/^\d/)]
    index = index.to_i
    todo_list[index - 1] = user_input.gsub(/^\d\s/, "")
  elsif user_input =~ (/DELETE/)
    index = user_input[(/\d/)]
    index = index.to_i
    todo_list.delete_at(index - 1)
  else
    puts "неверный формат ввода"
  end
end
