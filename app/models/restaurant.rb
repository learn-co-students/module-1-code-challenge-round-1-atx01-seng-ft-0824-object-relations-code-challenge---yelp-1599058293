class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    self.class.all.push(self)
  end

  def self.all
    @@all
  end

  def restaurant_reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    restaurant_reviews.collect {|restaurant| restaurant.customer}.uniq
  end

  def average_rating
    rates = restaurant_reviews.sum {|review| review.rating}
    rates / (restaurant_reviews.count)
  end

end
