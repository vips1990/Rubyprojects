require_relative "book"
require_relative "user"
require_relative "library"

Book1 = Book.new("Harry Potter", "JK Rowling", 1, 0, 1000, "Fiction")
Book2 = Book.new("Jack Reacher", "Lee Child", 2, 0, 1100, "Fiction")
Book3 = Book.new("Michael Jackson", "Michael Jackson", 3, 0, 2000, "Autobiography")
Book4 = Book.new("500 days of summer", "Michael Weber", 4, 0, 3100, "Fiction")
Book5 = Book.new("Making the game", "Triple H", 5, 0, 1000, "Fiction")
Book6 = Book.new("Let us C", "Yashwant Kanitkar", 6, 0, 6100, "Education")
arrayofbooks=[Book1,Book2,Book3,Book4,Book5,Book6]

User1 = User.new("Mike", "Proby square", 1720, ['Harry Potter'])
User2 = User.new("Max", "Cork", 1721, ['Michael Jackson'])
User3 = User.new("Michael", "City Center Dublin", 1722, ['Michael Jackson'])


Library1=Library.new(6,0,6)
Library1.outputtotalnoofbooksborrowed
Library1.outputtotalnoofbooksavailable

def borrowbook(user1,booknumber,arrayofbooks)
  
  
  for i in 0..arrayofbooks.length-1
    if(booknumber==arrayofbooks[i].bookid)
      arrayofbooks[i].isborrowed=1
	    puts "You have borrowed a book from library!!"
      puts user1.name+" has borrowed a book title :"+arrayofbooks[i].title
	end
  end

  Library1.totalnoofbooksborrowed=Library1.totalnoofbooksborrowed+1
  Library1.totalnoofbooksavailable=Library1.totalnoofbooksavailable-1
  
  Library1.outputtotalnoofbooksborrowed
  Library1.outputtotalnoofbooksavailable 
  for i in 0..arrayofbooks.length-1
    arrayofbooks[i].providestatus
  	end 
  
  
end

borrowbook(User1,1,arrayofbooks)
  
  
