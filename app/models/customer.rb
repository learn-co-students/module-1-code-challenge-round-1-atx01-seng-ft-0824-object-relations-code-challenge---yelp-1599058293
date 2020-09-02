class Customer
  attr_accessor :given_name, :family_name

  @@all = []
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    self.class.all.push(self)
  end

  def self.all
    @@all
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def restaurants
    Review.all.select {|review| review.customer == self}.uniq
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    num_ratings = Review.all.select {|review| review.customer == self}
    num_ratings.count
  end

  def self.find_by_name(name)
    Customer.all.find {|names| names.full_name == name}
  end

  def self.find_all_by_given_name(name)
    Customer.all.select {|names| names.given_name == name}
  end



end
