class PlaywithNumbers

  def initialize
    @x = 10
	@y = 30
  end
  def Addition
    puts "Addition of numbers is: "+(@x+@y).to_s
	Multiplication()	
  end
  def Subtraction
    puts "Subtraction of numbers is: "+(@x-@y).to_s
  end
  def Multiplication
    puts "Multiplication of numbers is: "+(@x*@y).to_s
  end
  
  def Anotherpublicmethod
    puts "Calling Subtraction method here as its an implicit call"
	Subtraction()
  end

  public :Addition
  protected :Subtraction
  private :Multiplication
end

class Inheritedclass < PlaywithNumbers
  def first_method
    Subtraction()
	Multiplication()
	
	
  end
end


#creating new instance of PlaywithNumbers class
test2=PlaywithNumbers.new()
puts "Creating another instance of class now and this time calling private method snooty from inside of class method-Addition"
p test2.Addition

test = PlaywithNumbers.new()
puts "Calling private method explicitly from outside of class using objects instance method"

p test.Addition

#We call protected method immplicitly.
p test.Anotherpublicmethod

#Testing from sub class
puts "Calling function from sub class"
subclass1=Inheritedclass.new()
subclass1.first_method

#We call private method Multiplication using instance of a class.
puts "Calling protected function Multiplication using instance method of the class"
p test.Multiplication

=begin
Running the above code will give the below error 
Answer3.rb:26:in `<main>': private method `Multiplication' called for #<Testo:0x00000002c83910 @foo="heeeee"> (NoMethodError)
=end






