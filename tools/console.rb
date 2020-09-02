require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

restaurant1 = Restaurant.new("Plow Burger")
restaurant2 = Restaurant.new("Sassy's Vegetarian")
restaurant3 = Restaurant.new("Wasota's Vegan")
restaurant4 = Restaurant.new("Beer Plant")
restaurant5 = Restaurant.new("Mr. Natural's")

c1 = Customer.new("Darth", "Vader")
c2 = Customer.new("Luke", "Skywalker")
c3 = Customer.new("Hans", "Solo")
c4 = Customer.new("Master", "Yoda")
c5 = Customer.new("Padmé", "Naberrie")
c6 = Customer.new("Master", "Roshi")
c7 = Customer.new("King", "T'Challa")
c8 = Customer.new("King", "Bach")

r1 = Review.new(c1, restaurant1, 7)
r2 = Review.new(c2, restaurant2, 5)
r3 = Review.new(c3, restaurant3, 8)
r4 = Review.new(c4, restaurant4, 9)
r5 = Review.new(c5, restaurant5, 10)
r6 = Review.new(c2, restaurant1, 9)


# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line