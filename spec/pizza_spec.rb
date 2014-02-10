require './pizza'

describe Pizza do
  it "exists" do
    expect(Pizza).to be_a(Class)
  end

   describe '.initialize' do
    it 'defaults the toppings to cheese only, if the pizza has no toppings' do
      pizza = Pizza.new

      expect(pizza.toppings.size).to eq(1)
      expect(pizza.toppings.first.name).to eq('cheese')
  end

    it 'records all of the toppings' do
      toppings = [
        Topping.new('mushrooms', vegetarian: true),
        Topping.new('pepperoni')
      ]
      pizza = Pizza.new(toppings)

      expect(pizza.toppings).to eq(toppings)
    end

  it 'expects a vegetarian pizza' do

   toppings = [
        Topping.new('mushrooms', vegetarian: true),
        Topping.new('onions', vegetarian: true)
      ]
      pizza = Pizza.new
  expect(pizza.vegetarian?).to eq(true)
  end

end

describe '.add_topping' do
  it 'add topping to toppings array' do
    pizza = Pizza.new
    pizza.add_topping('mushrooms', vegetarian: true)

expect(pizza.toppings.last.name).to eq('mushrooms')
  end
 end
end

describe Topping do
  it "exists" do
    expect(Topping).to be_a(Class)
  end

  describe '.initialize' do

    it "it sets the name of the topping" do
      topping = Topping.new('olives')
      expect(topping.name).to eq("olives")
    end

    it 'sets whether or not the topping is vegetarian' do
      topping = Topping.new 'bell peppers', vegetarian: true

      expect(topping.vegetarian).to eq(true)
    end
  end
end
