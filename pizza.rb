class Pizza

  attr_accessor :toppings

  def initialize(toppings = nil)
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

end

class Topping

  attr_accessor :name
  attr_accessor :vegetarian

  def initialize(name, vegetarian: false)
    @name = name
    @vegetarian = vegetarian
  end

end
