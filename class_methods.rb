class Building
  attr_reader :area

  def initialize(name, length, width)
    @name, @length, @width = name, length, width
  end

  def area # instance methods
    @area = @width * @length
  end

  def has_servants?
    true
  end

  def self.categories
    ['mansion', 'skyscraper', 'house']
  end
end

my_house = Building.new('Mansion', 20, 20)

# Calling an instance method
puts my_house.area # 400

# Calling an class method
p Building.categories # => ["mansion", "skyscraper", "house"]



# Class methods we've used before:
# Date.today
# Time.now
# JSON.parse
