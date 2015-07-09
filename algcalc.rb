# This solves for a 1-variable equation
# http://stackoverflow.com/questions/19893861/how-can-i-solve-a-dynamic-algebraic-equation-in-ruby

# Uses the "dentaku" gem (gem install dentaku)
require 'dentaku'



# Can't do decimals
$solved = 0

def solveEquation(varName, alg_side1, alg_side2)
  alg_calc = Dentaku::Calculator.new
  current_num = 0
  while($solved == 0)
    if alg_side1.include? "#{varName}"
      alg_side1.gsub("#{varName}", "#{current_num.to_s}")
      guess = eval(alg_side1.to_s)
      #puts guess
      if(guess == alg_side2.to_i)
        # It has been solved! :D
        puts "The answer is " + guess
        $solved = 1
      end
    elsif alg_side2.include? "#{varName}"
      alg_side2.gsub("#{varName}", "#{current_num.to_s}")
      guess = eval(alg_side2.to_s)
      
      if(guess == alg_side1.to_i)
        # It has been solved! :D
        puts "The answer is " + guess
        $solved = 1
      end
    else
      puts "Invalid variable name."
    end
    
    current_num += 1
    #puts current_num
  end
end



# test equation
# it works!! :D
#puts alg_calc.evaluate("10*2")

# algebraic equation prompt
puts "Please enter your algebraic equation. (Use x for the variable)"
alg_equation = gets.chomp()

# x + 3 = 10
#puts alg_calc.evaluate("x+3=10")

alg_array = alg_equation.split("=")
#puts alg_array

# Do it the hard way! (Iterations)
alg_side1 = alg_array[0].to_s
alg_side2 = alg_array[1].to_s

solveEquation("x", alg_side1, alg_side2)