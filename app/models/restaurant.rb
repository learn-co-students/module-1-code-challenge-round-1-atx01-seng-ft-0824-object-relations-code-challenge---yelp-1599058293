class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select { |review| review.restaurant == self }
  end

  def customers 
    self.reviews.collect { |review| review.customer }.uniq 
  end

  def average_star_rating
    #idk why i couldn't figure out 
    #the curly brackets way on this one 
    rating = self.reviews.sum do |average| 
      average.rating 
    end 
    rating / self.reviews.length
  end 

end
