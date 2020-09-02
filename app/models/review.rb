class Review
    attr_reader :customer, :restaurant, :rating

    @@all = []

    def initialize(customer, restaurant, rating=0)
        @customer = customer
        @restaurant = restaurant
        @rating = rating

        self.class.all.push(self)
    end
    
    def self.all
        @@all
    end
    
end