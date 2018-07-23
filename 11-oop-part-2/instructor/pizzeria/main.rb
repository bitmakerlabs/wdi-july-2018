require_relative 'pizzeria'

chez_fred = Pizzeria.new('Fred')
chez_fred.open

p1 = chez_fred.order(['ham', 'pineapple'])

7.times { p1.eat }

chez_fred.close

p2 = chez_fred.order(['ham', 'pineapple'])
