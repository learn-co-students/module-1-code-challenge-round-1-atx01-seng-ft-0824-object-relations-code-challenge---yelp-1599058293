require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

john = Customer.new("John", "Lonetree")
karen = Customer.new("Evil", "Karen")
daren = Customer.new("Evil", "Daren")
wick = Customer.new("John", "Wick")

gus = Restaurant.new("Gus's World Famous Friend Chicken")
caulk = Restaurant.new("The Caulk Factory")
gpd = Restaurant.new("Gotham City Police Dept.")
hobo = Restaurant.new("Under the Overpass")

great = Review.new(john, gus, 5)
disgusted = Review.new(karen, gpd, 1)
dignified = Review.new(daren, caulk, 3)
better = Review.new(wick, hobo, 4)
poor = Review.new(karen, caulk, 2)
ok = Review.new(daren, caulk, 4)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line