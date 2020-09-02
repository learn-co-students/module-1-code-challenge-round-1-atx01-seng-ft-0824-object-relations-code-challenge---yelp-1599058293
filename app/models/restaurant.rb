class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << name
  end
  
  def self.all
    @@all
  end
 
  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end




  def customers
    Review.all.select do|review|
      review.customer
    end
  end
  

  def average_star_rating
    total_array = reviews.map do |review|
      review.rating
    end
    total_array.sum / (self.reviews.length)
 
  end

end
#