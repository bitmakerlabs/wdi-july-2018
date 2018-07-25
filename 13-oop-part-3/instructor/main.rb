require_relative 'contact'

clark = Contact.new('Clark', 'Kent', 'clark@dailyplanet.com', 'Goes into the phone booth a lot')
bruce = Contact.new('Bruce', 'Wayne', 'bruce@wayneenterprises.com', 'Kind of a dark guy')
diana = Contact.new('Diana', 'Prince', 'diana@amazon.com')

puts diana.full_name

# p clark
# p bruce
# p diana
