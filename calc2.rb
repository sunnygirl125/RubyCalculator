numArray = []

def calc(operator, array)
  
  floatArray = []
  
  array.each do
    |num|
    floatArray << num.to_f
  end
  
  #puts floatArray
  
  totalNum = floatArray[0]
  floatArray.shift()
  
  if operator == "+"
    
    floatArray.each do
      |currentNum|
      totalNum += currentNum
    end
    
  elsif operator == "-"
    
    floatArray.each do
      |currentNum|
      totalNum -= currentNum
    end
    
  elsif operator == "*"
    
    floatArray.each do
      |currentNum|
      totalNum *= currentNum
    end
   # puts totalNum
    
  elsif operator == "/"
    
    floatArray.each do
      |currentNum|
      totalNum /= currentNum
    end
    
  end
  
  return totalNum
  
end

puts "What operation would you like to use?"
tempOperator = gets.chomp
puts "How many numbers would you like to use?"
numberOfNumbers = gets.chomp


i = 1

while (i <= numberOfNumbers.to_i)
  puts "Enter number #{i}:"
  numArray << gets.chomp
  i += 1
end

puts "\n"
puts calc(tempOperator, numArray).to_s