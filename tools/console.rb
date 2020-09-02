require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

c1 = Customer.new("John", "Smith")
c2 = Customer.new("Jane", "Doe")
c3 = Customer.new("Alec", "Jasik")
c4 = Customer.new("Alec", "Baldwin")

r1 = Restaurant.new("Chili's")
r2 = Restaurant.new("China Garden")
r3 = Restaurant.new("Thai Pepper")

rev1 = Review.new(c1, r1, 1)
rev2 = Review.new(c2, r2, 3)
rev3 = Review.new(c3, r3, 4)
rev4 = Review.new(c3, r2, 5)
rev5 = Review.new(c1, r1, 2)
rev6 = Review.new(c2, r3, 4)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line