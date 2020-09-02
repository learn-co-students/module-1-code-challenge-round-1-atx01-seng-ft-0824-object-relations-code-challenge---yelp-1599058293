require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

res1 = Restaurant.new('Panera Bread')
res2 = Restaurant.new('Whataburger')
res3 = Restaurant.new('The Three Broomsticks')

cus1 = Customer.new('Devin', 'Sanford')
cus2 = Customer.new('Karley', 'Davis')
cus3 = Customer.new('Harry', 'Potter')
cus4 = Customer.new('Hermione', 'Granger')
cus5 = Customer.new('Devin', 'Davis')

review1 = Review.new(cus1, res3, 5)
review2 = Review.new(cus2, res1, 1)
review3 = Review.new(cus4, res3, 3)
review4 = Review.new(cus4, res2, 4)
review5 = Review.new(cus3, res2, 5)
review6 = Review.new(cus3, res3, 2)
review7 = Review.new(cus2, res1, 4)
review8 = Review.new(cus3, res3, 4)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line