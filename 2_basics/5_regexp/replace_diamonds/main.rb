def search_and_replace_diamonds(text, key, value)
  text.gsub(/<#{key}>/, value.to_s)
  text.gsub(/<#{key}>/, value.to_s)
end

text = "Hello <name> ! Your name is <name>. Cost of your order is <cost>"

user_orders = {Evgenii: 200, Vlad: 1000}

name = gets.chomp
cost = user_orders[name.to_sym]

text_with_user = search_and_replace_diamonds(text, "name", name)
text_with_cost = search_and_replace_diamonds(text_with_user, "cost", cost)

puts text_with_user
puts text_with_cost
