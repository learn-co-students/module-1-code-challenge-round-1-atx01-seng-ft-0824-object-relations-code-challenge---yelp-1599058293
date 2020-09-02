class Customer
  attr_accessor :given_name, :family_name, :review


@@all =[]

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name

    @@all << self
  end

  
  
  def full_name
    full_name = "#{given_name}" " +" "#{family_name}"
    puts full_name
    #biding.pry
  end

  def self.all
    @@all
  end



end
