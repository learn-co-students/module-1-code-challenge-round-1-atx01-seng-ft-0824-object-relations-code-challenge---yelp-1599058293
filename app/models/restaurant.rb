class Restaurant

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name

    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select{|reviews| reviews.restaurant == self}
  end

  def customers
    customer_list = reviews.collect{|review| review.customer}
    customer_list.uniq
  end

  def average_star_rating
    total_rating = reviews.sum{|restaurant| restaurant.rating}
    num_reviews = reviews.count
    total_rating / num_reviews
  end
end
