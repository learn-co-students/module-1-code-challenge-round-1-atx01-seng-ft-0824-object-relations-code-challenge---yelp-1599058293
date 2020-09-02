require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
c1 = Customer.new("Jake", "Lira")
c2 = Customer.new("Jesse", "Rodriguez")
c3 = Customer.new("Patty", "Sandoval")
c4 = Customer.new("Jake", "two")
c5 = Customer.new("Jake", "two")

r1 = Restaurant.new("Dinos")
r2 = Restaurant.new("Ihop")
r3 = Restaurant.new("BWW")

rev1 = Review.new(c1, r1, 3.5)
rev2 = Review.new(c2, r1, 3.8)
rev7 = Review.new(c2, r1, 4)
rev3 = Review.new(c3, r2, 4)
rev4 = Review.new(c1, r3, 4)
rev5 = Review.new(c2, r3, 4.5)
rev6 = Review.new(c3, r1, 4.2)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line