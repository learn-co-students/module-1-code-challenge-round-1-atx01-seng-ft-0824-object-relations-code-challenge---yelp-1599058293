require 'pry'
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
    c = []
    Review.all.select do |review|
      if review.customer == self
        c << review.restaurant
      end
    end
    c.uniq
  end

  # review initialize initialize (customer, restaurant, rating)
  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    rev = Review.all.select do |review|
      review.customer == self
    end
    rev.count
  end

  def self.find_by_name(name)
    self.all.select do |review|
      # binding.pry
      "#{review.given_name} #{review.family_name}" == name
    end
  end

  def self.find_all_by_given_name(name)
    self.all.select do |review|
      review.given_name == name
    end
  end





end
