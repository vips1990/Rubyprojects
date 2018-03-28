class FamilyMember
attr_accessor :name, :sex, :status, :age ,:children, :animal
 
end

  def parent?(instance)
    if(instance.status != "underage" and instance.children>0)
	  if(instance.sex=="Male")
	  puts (instance.name+" is a father")
	  elsif (instance.sex=="Female")
	  puts (instance.name+" is a mother")
	  end
	else
	  puts (instance.name+" is not a parent")
	end
  end
  
  def child?(instance)
    if(instance.status != "married" and instance.children==0)
	  if(instance.sex=="Male")
	  puts (instance.name+" is a son")
	  elsif (instance.sex=="Female")
	  puts (instance.name+" is a daughter")
	  elsif(instance.animal=="Yes")
	  puts (instance.name+" is an animal")
	  end
	else
	  puts (instance.name+" is not a child")
	end
  end
  
fm1 = FamilyMember.new
fm2 = FamilyMember.new
fm3 = FamilyMember.new
fm4 = FamilyMember.new
fm5 = FamilyMember.new

fm1.name="Mike"
fm1.sex="Male"
fm1.status="married"
fm1.age=27
fm1.children=2

fm2.name="Jennifer"
fm2.sex="Female"
fm2.status="Married"
fm2.age=34
fm2.children=1

fm3.name="Michael"
fm3.sex="Male"
fm3.status="single"
fm3.age=18
fm3.children=0

fm4.name="Jessica"
fm4.sex="Female"
fm4.status="married"
fm4.age=24
fm4.children=2

fm5.name="Paul"
fm5.sex="Male"
fm5.status="underage"
fm5.age=10
fm5.children=0


puts("Checking if the members of the class are parent or child")
parent?(fm1)
parent?(fm2)
parent?(fm3)
parent?(fm4)
parent?(fm5)
child?(fm1)
child?(fm2)
child?(fm3)
child?(fm4)
child?(fm5)

puts("Answer 3")

members=[fm1,fm2,fm3,fm4,fm5]
members.each do |fm|
	print(fm.name+" status = "+ fm.status+"\n")
end

puts("Answer 4")
members.each do |fm|
	print("Name: "+fm.name+" status: " + fm.status+" age: "+ fm.age.to_s+" sex: "+fm.sex+" children: "+fm.children.to_s+"\n")
end




  
	  
	
	
	
    