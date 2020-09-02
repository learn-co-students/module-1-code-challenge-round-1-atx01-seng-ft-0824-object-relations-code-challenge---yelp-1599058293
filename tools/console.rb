require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

customer_1 = Customer.new("Mike", "Green")
customer_2 = Customer.new("Big", "Dick")
customer_3 = Customer.new("Mary", "Jane")

restaurant_1 = Restaurant.new("Outback")
restaurant_2 = Restaurant.new("Whataburger")


# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last linecust