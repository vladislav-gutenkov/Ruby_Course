def convert_string_symbol(str)
  str = str.to_sym
end

def convert_symbol_string(sym)
  sym.to_s
end
variable = gets.chomp

variable = convert_string_symbol(variable)
p variable

variable = convert_symbol_string(variable)
p variable
