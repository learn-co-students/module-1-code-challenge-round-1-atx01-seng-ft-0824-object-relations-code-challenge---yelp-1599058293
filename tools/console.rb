require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
c1 = Customer.new("Bob", "Bobberson")
c2 = Customer.new("Hector", "Bellerin")
c3 = Customer.new("Diane", "Keaton")
c4 = Customer.new("Donna", "McDonovan")

r1 = Restaurant.new("Hyde Park")
r2 = Restaurant.new("Krusty Krab")

review1 = Review.new(c1, r1, 5)
review2 = Review.new(c3, r1, 3)
review3 = Review.new(c2, r2, 1)
review4 = Review.new(c4, r2, 2)
review5 = Review.new(c2, r2, 5)
review6 = Review.new(c1, r1, 3)
review7 = Review.new(c1, r2, 5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line