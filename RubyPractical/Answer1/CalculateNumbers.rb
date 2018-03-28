# Method defined in main program file

require_relative "EvaluateArithmetic"
require_relative "EvaluateSquareOfNumber"

def calculatenumbers
  puts("Enter first number")
  first_number=gets.to_i
  puts("Enter expression +,-,*,/,%,** to evaluate Addition, subtraction, multiplication, division, to calculate reminder by division and square of the first number")
  expression=gets.chomp
  puts("Enter second number")
  second_number=gets.to_i
  
  if(expression=="+")
    addition(first_number,second_number)
  elsif (expression=="-")
    subtraction(first_number,second_number)
  elsif(expression=="*")
    multiplication(first_number,second_number)
  elsif(expression=="/")
    division(first_number,second_number)
  elsif (expression=="%")
    reminder(first_number,second_number)
  elsif(expression=="**")
    evaluatesquare(first_number)
  else
    puts("Invalid expression :cannot evaluate this expression")
  end
  
end

puts ("Hi, Please enter your name: ")
name=gets.chomp
loop do
  puts("Hi "+name+" enter 1 to execute program and 2 to exit")
  choice=gets.to_i
  break if choice!=1
  calculatenumbers
end


  


	

  
    
  
  
  
  
