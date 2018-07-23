require_relative 'pizza'

class Pizzeria

  @@chain_name = 'Super Pizza'
  @@pizzas_sold = 0

  def initialize(owner)
    @owner = owner

    @open = false
    @pizzas_sold = 0
  end

  def open
    @open = true
  end

  def close
    @open = false
  end

  def pizzas_sold
    @pizzas_sold
  end

  def store_name
    return "#{ @owner }'s #{ @@chain_name }"
  end

  def sales_report
    return "#{ store_name } has sold #{ @pizzas_sold }"
  end

  def self.sales_report
    return "#{ @@chain_name } has sold #{ @@pizzas_sold }"
  end

  def order(toppings)
    if @open
      @pizzas_sold += 1
      @@pizzas_sold += 1
      pizza = Pizza.new(toppings)
      pizza.bake
      3.times { pizza.cut }
      return pizza
    else
      puts 'ERROR: Pizzeria is closed!'
    end
  end

end
