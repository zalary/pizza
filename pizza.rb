class Pizza

  attr_accessor :toppings, :delivery_time

  def initialize(toppings = nil)
      @delivery_time = Time.now + 30*60
    if toppings.nil?
      @toppings = [Topping.new("cheese", vegetarian: true)]
    else
    @toppings = toppings
  end
end

def vegetarian?
toppings.all? do |veg|
    "vegetarian: true"
   end
 end

def add_topping(name, vegetarian: false)
  x = Topping.new(name, vegetarian: false)
  @toppings << x
end

def deliver!
  puts "delivery time -- #{delivery_time}"

end

def late?
  now = Time.now
  puts "now -- #{now}"
    puts "delivery time -- #{delivery_time}"
  if  now  > @delivery_time
    true
  else
    false
  end
end

end

class Topping

  attr_accessor :name
  attr_accessor :vegetarian

  def initialize(name, vegetarian: false)
    @name = name
    @vegetarian = vegetarian
  end

end
