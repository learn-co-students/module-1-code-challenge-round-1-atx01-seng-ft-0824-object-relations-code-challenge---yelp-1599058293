class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select {|reviews| reviews.restaurant == self}
  end

  def customers
    self.reviews.collect {|customers| customers.customer.given_name}.uniq
  end

  def average_star_rating
   all_rating = Review.all.select {|rev| rev.restaurant == self}
   all_rating.sum {|ratings| ratings.rating} / all_rating.count
  end

end
