class Customer
  attr_accessor :given_name, :family_name

  @@all = []

  def full_name
    "#{given_name} #{family_name}"
  end

  def initialize(given_name, family_name)
    @given_name= given_name
    @family_name= family_name

    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    Customer.all.find do |customer|
      customer.full_name == name
    end
  end

  def self.find_all_by_name(name)
    Customer.all.select do |customer|
      customer.full_name == name
    end
  end

  #This method isnt working come back and revisit
  def restaurants
    Review.all select do |review|
      review.given_name == self
    end
  end

  

  def add_review(restaurant,rating)
    Review.new(self, restaurant, rating)
  end

 #This method isn't working come back to it later
#   def num_reviews
#     Review.all.select do |review|
#      review.given_name == self.given_name
#   end
# end


end
#
