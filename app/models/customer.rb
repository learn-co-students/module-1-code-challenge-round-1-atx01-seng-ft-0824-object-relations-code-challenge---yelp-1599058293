class Customer
  attr_accessor :given_name, :family_name
  @@all = []
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name

    self.class.all.push(self)
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def reviews 
    Review.all.select { |rest| rest.customer == self }
  end 

  def restaurants
    self.reviews.collect { |rest| rest.restaurant.name }.uniq
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end 

  def num_reviews
    self.reviews.length
  end 

  def self.find_by_name(name)  
    self.all.find do |cust|
      cust.given_name && cust.family_name == name.full_name
    end
  end 

  def self.find_all_by_given_name(name)
    self.all.select { |n| n.given_name == name }
  end

  def self.all
    @@all 
  end 

end
