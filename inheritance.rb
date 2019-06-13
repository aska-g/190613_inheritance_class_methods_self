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
end

class Castle < Building
  # attr_reader :area
  # def initialize(name, length, width)
  #   @name, @length, @width = name, length, width
  # end

  def area
    super + 150
  end
end


class Skyscraper < Building
  # attr_reader :area
  # def initialize(name, length, width)
  #   @name, @length, @width = name, length, width
  # end

  # def area
  #   @area = @width * @length
  # end

  def has_servants?
    false
  end
end

disney_castle = Castle.new('Disney Castle', 100, 300)

puts disney_castle.area # => 30150
puts disney_castle.has_servants? # => true

burj_khalifa = Skyscraper.new('Burj Khalifa', 200, 50)

puts burj_khalifa.area # => 10000
puts burj_khalifa.has_servants? # => false
