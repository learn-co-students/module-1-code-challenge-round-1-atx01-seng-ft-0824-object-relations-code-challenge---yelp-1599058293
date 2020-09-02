class Review
  attr_reader :customer, :restaurant
  attr_accessor :rating
  # I chose attr_accessor because a 
  # a customer might change their mind about
  # the rating and need to overwrite it

  @@all = []

  def self.all
    @@all
  end

  def initialize(customer, restaurant, rating)
    @customer= customer
    @restaurant= restaurant
    @rating= rating
    @@all << self
  end
end
#