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
    # binding.pry
  end

  def restaurants
    Review.all.select.uniq do | reviews |
      reviews.customer == self
    end
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    self.restaurants.length
  end

  def self.find_by_name(name)
    Customer.all.find do | customer |
      customer == name
    end
  end

  def self.find_all_by_given_name(name)
    Customer.all.select do | customer |
      customer.given_name == name.given_name
    end
  end

end
