require './pizza.rb'

class Pizzeria

  def initialize(owner)
    @owner = owner
  end

  def order(toppings)
    pizza = Pizza.new(toppings)
    pizza.bake
    3.times { pizza.cut }
    return pizza
  end

end
