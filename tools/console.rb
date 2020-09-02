require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
c1= Customer.new("Ciara", "Picou")
c2= Customer.new("James", "Picou")
c3= Customer.new("Tina", "Picou")

r1= Restaurant.new("Cracker Barrel")
r2= Restaurant.new("Bistro")
rv1= Review.new(c1, r1, 8)
rv2= Review.new(c2, r1, 10)
rv3= Review.new(c3, r1, 4)
rv4= Review.new(c1, r2, 10)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
puts "You've got this!"