require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# review initialize initialize (customer, restaurant, rating)
# customer initialize (given_name, family_name)
# restaurant initialize (name)

c1 = Customer.new("Jake", "Jakey")
c2 = Customer.new("Juan", "Juanito")
c3 = Customer.new("Jacob", "Peralta")
c4 = Customer.new("Elon", "Musk")
c5 = Customer.new("Jake", "Jakeyson")

r1 = Restaurant.new("The French Laundry")
r2 = Restaurant.new("Alinea")
r3 = Restaurant.new("Fazolis")
r4 = Restaurant.new("Napa Rose")

rev1 = Review.new(c1, r1, 3)
rev2 = Review.new(c2, r2, 3)
rev3 = Review.new(c3, r3, 1)
rev4 = Review.new(c4, r4, 2)
rev5 = Review.new(c1, r2, 2)
rev6 = Review.new(c2, r1, 3)
rev7 = Review.new(c1, r1, 3)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line