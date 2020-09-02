class Customer
  attr_accessor :given_name, :family_name
  @@all = []
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    self.class.all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  def restaurants
    self.reviews.map do |review|
      review.restaurant
    end.uniq
  end

  def add_review(restaurant, rating = 0)
    Review.new(self, restaurant, rating.to_i)
  end

  def num_reviews
    self.reviews.count
  end

  def self.find_by_name(name)
    self.all.find do |customer|
      customer.full_name == name
    end
  end

  def self.find_all_by_given_name(name)
    self.all.select do |customer|
      customer.given_name == name
    end
  end
end
