#defining book class and its attributes

class Book
  attr_accessor :title, :author, :bookid, :isborrowed, :price, :category
  def initialize(title, author, bookid, isborrowed, price, category)
    @title     = title
    @author   = author
    @bookid = bookid
	@isborrowed=isborrowed
	@price=price
	@category=category
  end
  
  def providestatus
    if(@isborrowed==1)
	  @isborrowed="yes"
	else
	  @isborrowed="no"
	end
	
    puts "The status of Book is :"
	puts "Title :"+@title+" Author :"+@author+" Bookid :"+@bookid.to_s+" Borrowed :"+@isborrowed.to_s+" Price :"+@price.to_s+" Category :"+@category
	end
	
	

end



  
  
  