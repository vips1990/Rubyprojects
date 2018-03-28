class User
  
  attr_accessor :name, :address, :uniqueid, :booksborrowed
  def initialize(name, address, uniqueid, booksborrowed)
    @name     = name
    @address   = address
    @uniqueid = uniqueid
	@booksborrowed=booksborrowed
  end
  
  def borrowedbooks()
    puts "User :"+@name+" borrowed these books "+@booksborrowed.to_s
  
  end
  
end



