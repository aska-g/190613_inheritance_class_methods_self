class House
  attr_reader :address, :owner

  def initialize(address)
    @address = address
    @dead = false
    @owner = Owner.new(self)
  end
end

class Owner
  attr_reader :house

  def initialize(house)
    @house = house
  end

  def in_debt?
    @in_debt = false
  end

  def take_a_new_loan
    @in_debt = true
  end
end

my_house = House.new('Oslo')

puts my_house.address
puts owner = my_house.owner # => #<Owner:0x00007fd9b68a5718> instance of the Owner class


puts owner.class # => Owner

puts owner.house # => #<House:0x00007fba8d0b9a88> instance of the House class

owner.house.class # => House

puts owner.house.address # => 'Oslo'
















