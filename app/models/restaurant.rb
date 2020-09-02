class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    self.class.all.push(self)
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select.uniq do | reviews |
      reviews.restaurant == self
    end
  end

  def customers
    self.reviews.collect do | reviews |
      reviews.customer
    end
  end

  def average_star_rating
    sum = self.reviews.sum do | review |
      review.rating
      # binding.pry
    end
      sum /= self.reviews.length
  end

end
