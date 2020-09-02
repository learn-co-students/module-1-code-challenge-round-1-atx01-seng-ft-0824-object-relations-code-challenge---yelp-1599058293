class Review
    attr_accessor :rating
    attr_reader :customer, :restaurant

    @@all = []
    def initialize(customer, restaurant, rating)
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        self.class.all.push(self)
    end

    def self.all
        @@all
    end

    def customer_review
        Customer.all.select {|person| person.name == self}
      end
  
end