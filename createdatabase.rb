require 'active_record'



ActiveRecord::Base.establish_connection(

	:adapter => "sqlite3",

	:database => "memory"



)



class LibraryBook < ActiveRecord::Base

#	set_primary_key "borrower_id"

	belongs_to :library_users

end





class LibraryUser < ActiveRecord::Base

#	add_foreign_key :library_users, :library_books, column: :user_id, primary_key: :borrower_id

	has_many :library_books

end



if (LibraryUser.table_exists? || LibraryBook.table_exists?)

	puts "table exists"

	else ActiveRecord::Schema.define do

			create_table :library_users do |table|

			table.column :user_id, :integer

			table.column :name, :string

			table.column :age, :integer

		end



		create_table :library_books do |table|

			table.column :library_user_id, :integer

			table.column :borrower, :string

			table.column :title, :string

			table.column :borrowedwhen, :string

			table.column :dueback, :string

		end

	end

end









user = LibraryUser.create(:user_id => 1,:name => 'Mike',:age => 27)

user.library_books.create(:borrower => 'Mike', :title => 'Harry Potter', :borrowedwhen => '16 Nov 2017', :dueback => '20 Nov 2017')

user.library_books.create(:borrower => 'Mark', :title => 'Harry Potter 2', :borrowedwhen => '18 Nov 2017', :dueback => '22 Nov 2017')



user = LibraryUser.create(:user_id => 2,:name => 'Mikessss',:age => 21)

user.library_books.create(:borrower => 'Max', :title => 'Making the game', :borrowedwhen => '10 Nov 2017', :dueback => '18 Nov 2017')

user.library_books.create(:borrower => 'Justin', :title => 'Orphan', :borrowedwhen => '20 Nov 2017', :dueback => '28 Nov 2017')



p LibraryUser.all.each { |u| puts 'User name '+ u.name + 'borrowed books age is ' + u.age.to_s }

p LibraryBook.all
puts "Diaplying books using sql where clause"
p LibraryBook.where("borrower = 'Max' AND title = 'Harry Potter'")

puts "Diaplying records using find function"
p LibraryBook.find(1)
puts "Diaplying records using find by function"
p LibraryBook.find_by_title("Harry Potter 2")
p LibraryBook.find_by_title("Making the game")
p LibraryBook.find_by_borrowedwhen("20 Nov 2017")



















