require_relative 'contact'

#clark = Contact.new('Clark', 'Kent', 'clark@dailyplanet.com', 'Goes into the phone booth a lot')
#bruce = Contact.new('Bruce', 'Wayne', 'bruce@wayneenterprises.com', 'Kind of a dark guy')
#diana = Contact.new('Diana', 'Prince', 'diana@amazon.com')
#clark.save
#bruce.save
#diana.save

dave1 = Contact.new('Dave', 'Wong', 'N/A')
dave2 = Contact.new('Dave', 'Wong', 'N/A')
dave1.save
dave2.save

dave3 = Contact.create('Dave', 'Wong', 'N/A')

person_i_am_looking_for = Contact.find(1001)
