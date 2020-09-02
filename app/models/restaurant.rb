class Restaurant
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
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
    c = []
    Review.all.select do |review|
      if review.restaurant == self
        c << review.customer
      end
    end
    c.uniq
  end

  def average_star_rating
    sum = self.reviews.sum do |review|
      review.rating
    end
    total = sum/ self.reviews.count
    total
  end


end
