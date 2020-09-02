require 'pry'
class Review
  
    attr_accessor :rating
    attr_reader :customer, :restaurant

    @@all = []

    def initialize (customer, restaurant, rating)
        @rating = rating
        @customer = customer
        @restaurant = restaurant
        @@all << self
    end

    def self.all
        @@all
    end

end