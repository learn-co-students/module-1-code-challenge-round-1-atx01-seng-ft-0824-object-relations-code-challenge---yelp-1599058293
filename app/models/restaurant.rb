class Restaurant
  attr_reader :name, :review
  

@@all = []

  def initialize(name)
    @name = name

@@all << self
  end

  def name
self.name
  end

end
