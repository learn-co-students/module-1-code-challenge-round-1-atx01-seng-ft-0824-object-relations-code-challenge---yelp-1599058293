class Review
    attr_accessor :restaurant, :customer
    
    @@all = []

    def initialize(customer, restaurant, rating)
        @review = review
        @restaurant = restaurant
        @customer = customer 

        @@all << self
    end

    def rating
        Review.all.select{| review | review.restaurant == self}
    end
    
     def self.all
        @@all
    end
  
# def customer

# end

end