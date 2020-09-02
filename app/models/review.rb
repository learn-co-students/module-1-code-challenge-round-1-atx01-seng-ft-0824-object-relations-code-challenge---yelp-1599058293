class Review
    attr_accessor :rating
    attr_reader :customer, :restaurant
    @@all = []
    def initialize(customer, restaurant, rating = 0)
        @customer = customer
        @restaurant = restaurant
        @rating = rating.to_i
        self.class.all << self
    end

    def self.all
        @@all
    end
  
end