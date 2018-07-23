require_relative 'pizzeria'

chez_fred = Pizzeria.new('Fred')
chez_fred.open
puts chez_fred.store_name
puts chez_fred.pizzas_sold

chez_curtis = Pizzeria.new('Curtis')
chez_curtis.open
puts chez_curtis.store_name
puts chez_curtis.pizzas_sold

6.times { chez_fred.order(['cheese']) }
3.times { chez_curtis.order(['cheese']) }

puts chez_fred.sales_report
puts chez_curtis.sales_report
puts Pizzeria.sales_report
