calculatesquareofnumber=lambda{|x| puts x*x}
calculatesquareofnumber.call(100)

a=/Hell/
str="Hello world"
comparestring=lambda{|a,str| 
if((str=~a) !=nil) 
	puts "The regular expression matches the string.." 
elsif 
	puts "Its not the part of string" 
end
}
comparestring.call(a,str)




