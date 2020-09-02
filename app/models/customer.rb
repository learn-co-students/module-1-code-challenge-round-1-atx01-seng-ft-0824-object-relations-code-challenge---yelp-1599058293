class Customer
  attr_accessor :given_name, :family_name
  @@all = []
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    self.class.all << self
  end
#
  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all
    @@all
  end

  def restaurants
    all_rest = Review.all.select {|restaurants| restaurants.customer == self}
    all_rest.collect {|rest| rest.restaurant.name}.uniq
  end

  def new_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    total = Review.all.select {|reviews| reviews.customer == self}
    total.count
  end

  def self.find_by_name(name)
     first_last = name.split
     Customer.all.find {|i| i.given_name == first_last[0] && i.family_name == first_last[1]}
    
  end

  def self.find_by_given_name(name)
    Customer.all.select {|names| names.given_name == name}
  end

  
end
