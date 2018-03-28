class Library
  
  attr_accessor :totalnoofbooks, :totalnoofbooksborrowed, :totalnoofbooksavailable
  def initialize(totalnoofbooks, totalnoofbooksborrowed, totalnoofbooksavailable)
    @totalnoofbooks     = totalnoofbooks
    @totalnoofbooksborrowed   = totalnoofbooksborrowed
    @totalnoofbooksavailable = totalnoofbooksavailable
	@listofbooks=['Harry Potter','Jack Reacher','Michael Jackson','500 days of summer','Making the game','Let us C']
	@bookidlist=[1,2,3,4,5,6]
	@authornames=['JK Rowling','Lee Child','Michael Jackson','Michael Weber','Triple H','Yashwant Kanitkar']
  end
  
  
  def outputtotalnoofbooksborrowed
    puts "Total no of books borrowed are :"+@totalnoofbooksborrowed.to_s
	
  end
  
  def outputtotalnoofbooksavailable
    puts "Total no of books available are :"+@totalnoofbooksavailable.to_s
	
  end
  
  def librarystatus
    
	
  end	
  
end



  