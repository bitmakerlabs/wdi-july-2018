require './pizzeria.rb'

chez_fred = Pizzeria.new('Fred')

p1 = chez_fred.order(['ham', 'pineapple'])

7.times { p1.eat }
