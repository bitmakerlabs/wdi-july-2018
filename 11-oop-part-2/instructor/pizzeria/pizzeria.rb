require_relative 'pizza'

class Pizzeria

  def initialize(owner)
    @owner = owner

    @open = false
  end

  def open
    @open = true
  end

  def close
    @open = false
  end

  def order(toppings)
    if @open
      pizza = Pizza.new(toppings)
      pizza.bake
      3.times { pizza.cut }
      return pizza
    else
      puts 'ERROR: Pizzeria is closed!'
    end
  end

end
