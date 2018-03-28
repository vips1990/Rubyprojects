class Animals
  attr_accessor :group, :legs, :type, :eats
  def initialize()
    @group="Dogs"
    @legs=4
    @type="landanimal"
    @eats="nonveg"
  end

  def outputlegs
    puts "Legs= "+legs.to_s
  end

  def typeofanimal
    puts "Its a land animal"
  end

  def foodsource
    puts "Eats non veg food"
  end

end

class Dog < Animals
  attr_accessor :group, :legs, :type, :eats
  def initialize(group, legs, type, eats)
    @group=group
	@legs=legs
	@type=type
	@eats=eats
  end
  
  def definegroup
    puts "The Dog belongs to this group- "+group.to_s
  end
  
  def typeofanimal
    puts "Its a dog which is a land animal"
  end
  
  def foodsource
    puts "It usually eats non veg but likes to chew bones"
  end
  
end

class Bulldog < Dog
  attr_accessor :group, :legs, :type, :eats
  def initialize(group, legs, type, eats)
    @group=group
	@legs=legs
	@type=type
	@eats=eats
  end
  
  def definegroup
    puts "Its a dog who is a Bulldog"
  end
  
end


newdog=Bulldog.new("Dogs",4,"landanimal","nonveg")
#This will print the function from Bulldog class and overrides what is defined in class Dogs
newdog.definegroup
newdog.foodsource
# This function is not defines in base class Bulldog so when i call this method it looks for same method in super class Dog. Its not defined in Dog class which inherits Animal class so it will search in Animal class for this method and executes the same.
newdog.outputlegs

#Now I will call the same method outputlegs with different value of parameters which is different from what is hardcoded in Animal superclass
puts "Now I will call the same method outputlegs with different value of parameters which is different from what is hardcoded in Animal superclass"
newdog1=Bulldog.new("Dogs",6,"landanimal","nonveg")
newdog1.outputlegs

#Creating instance of Dog class
puts "Creating instance of Dog class"
Rottweilerdog=Dog.new("Rottweiler",4,"landanimal","nonveg")
#Overrides method definegroup and executes its own method rather than executing code of superclass Animal
Rottweilerdog.definegroup
#outputlegs is not defined in Dog class so it executes the method defined in superclass Animal
Rottweilerdog.outputlegs



