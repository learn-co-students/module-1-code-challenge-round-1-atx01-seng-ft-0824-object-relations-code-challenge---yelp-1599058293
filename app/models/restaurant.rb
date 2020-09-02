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
    Review.all.select {|reviews| reviews.restaurant == self}
  end

  def customers
    all_customers = Review.all.collect do |reviews|
      if reviews.restaurant == self
        reviews.customer
      end
    end
    all_customers.uniq
  end

  def average_star_rating
    all_ratings = Review.all.select do |reviews|
      if reviews.restaurant == self
        reviews.rating
      end
    end
    all_ratings.sum / all_ratings.size
  end

    #all_ratings = self.reviews.select {|review| review.rating} ??
    #all_ratings.sum / all_ratings.size
  #returns the average star rating for a restaurant based on its reviews
  #Reminder: you can calculate the average by adding up all
  #the ratings and dividing by the number of ratings
end
