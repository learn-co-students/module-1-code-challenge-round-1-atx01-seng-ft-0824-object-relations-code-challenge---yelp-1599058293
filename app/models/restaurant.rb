class Restaurant
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    self.reviews.map do |review|
      review.customer
    end.uniq
  end

  def ratings
    self.reviews.map do |review|
      review.rating
    end
  end

  def average_star_rating
    self.ratings.sum / self.ratings.count
  end
end
