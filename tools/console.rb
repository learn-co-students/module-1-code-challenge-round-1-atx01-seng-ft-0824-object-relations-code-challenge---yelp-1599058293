require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

c1 = Customer.new("Mika", "Jackson")
c2 = Customer.new("Lilo", "Anstich")
c3 = Customer.new("Roddie", "Rish")
c4 = Customer.new("Mika", "Jordan")

r1 = Restaurant.new("BBQ Joes")
r2 = Restaurant.new("Poke Queen")
r3 = Restaurant.new("El Alma")
r4 = Restaurant.new("Rosas")

re1 = Review.new(c1, r1, 3)
re2 = Review.new(c2, r2, 4)
re3 = Review.new(c3, r3, 3)
re4 = Review.new(c2, r4, 5)
re5 = Review.new(c3, r4, 5)
re6 = Review.new(c4, r1, 4)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line