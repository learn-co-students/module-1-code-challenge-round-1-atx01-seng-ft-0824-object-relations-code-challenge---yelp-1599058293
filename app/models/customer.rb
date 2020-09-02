class Customer
  attr_accessor :given_name, :family_name

  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all
    @@all
  end

  def restaurants
    customer_restaurants = Review.all.collect do |reviews|
      if reviews.customer == self
        reviews.restaurant
      end
    end
    customer_restaurants.uniq
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    num_view = Review.all.select do |reviews|
      reviews.customer == self
    end
    num_view.count
  end

  def self.find_by_name(name)
    self.all.select do |customers|
      customers.full_name == name
    end
  end

  def self.find_by_all_given_name(name)
    self.all.select do |customers|
      customers.given_name == name
    end
  end

end
