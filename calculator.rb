def calc(operator, num1, num2)
  n1 = num1.to_f
  n2 = num2.to_f
  if operator == "+"
    return n1 + n2
  elsif operator == "-"
    return n1 - n2
  elsif operator == "*"
    return n1 * n2
  elsif operator == "/"
    return n1 / n2
  end
end

puts "What operation would you like to use?"
tempOperator = gets.chomp
puts "Enter the first number:"
x = gets.chomp
puts "Enter the second number:"
y = gets.chomp
puts "\n"
puts calc(tempOperator, x, y).to_s