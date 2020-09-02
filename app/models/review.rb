class Review
  
    @@all = []

    attr_reader :customer, :restaurant, :rating

    def initialize(customer, restaurant, rating)
        @customer = customer
        @restaurant = restaurant
        @rating = rating.to_f  #I added the .to_f because the rounding bothered me in the #average_star_rating method

        self.class.all << self
    end

    def self.all
        @@all
    end
end