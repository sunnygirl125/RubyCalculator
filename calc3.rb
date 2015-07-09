# http://alfasin.com/a-simple-calculator-in-ruby/

# let the compiler evaluate everything
def calc(expression)
  # store it in a variable
  #answer = expression
  
  # add .0 to make the answer a floating point number
  answer = eval(expression + ".0").to_f
  return answer
end

# get expression from user
puts "Please enter an expression:"
expr = gets.chomp()
puts "\n"
puts calc(expr).to_s