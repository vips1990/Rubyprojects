def inputemail(filename)
  data = ''
  f = File.open(filename, "r") 
  f.each_line do |line|
    data += line
  end
  return data
end

arrayofspamwords=[/lowest/, /price/, /cash/, /bonus/, /free/, /satisfaction/, /guaranteed/, /serious/, /cash/, /shopping/, /spree/, /income/, /vacation/, /offers/, /no/, /fees/, /cost/, /gambling/, /rich/, /affordable/, /exclusive/, /profit/, /profitable/]
##### MAIN #####

first_email = inputemail 'spamemail1.txt'

# print out the string
puts first_email

arrayofwords=first_email.split.each_slice(1).map{|a|a.join ' '}

#Prints array of multiple words taken from string
puts arrayofwords

#Initialize a variable called spamcounter which will count spam keywords in a given email
spamcounter=0



arrayofspamwords.each do |spamword|
  
    arrayofwords.each do |actualword|
	  
	    if ((actualword.downcase=~ spamword).nil? == false)
		  spamcounter=spamcounter+1
		end  
#	    if(spamword.downcase.eql?(actualword.downcase))
#		  spamcounter=spamcounter+1
#	    end
	  end
  end

#Prints the spam counter  
puts "Total number of spam keywords identified: "+spamcounter.to_s

#Evaluating the spam score out of 10
spamscoreresult=(spamcounter.to_f/arrayofspamwords.length)*10
puts "Spam score of this email is: "+spamscoreresult.to_s+" out of 10"

if (spamscoreresult>=4.0)
  puts "The email is most likely to be a spam. Beware!!"
end





