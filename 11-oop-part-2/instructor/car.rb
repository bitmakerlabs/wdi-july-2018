class Car

  @@default_colour = 'brown'

  def initialize(owner)
    @owner = owner
    @colour = @@default_colour
  end

  def self.default_colour=(new_default_colour)
    @@default_colour = new_default_colour
  end

  def colour=(colour)
    @colour = colour
  end

end

# robs_car = Car.new('Rob')
# vals_car = Car.new('Val')
# grahams_car = Car.new('Graham')
#
# p robs_car
# p vals_car
# p grahams_car
#
# grahams_car.colour = 'red'
# p grahams_car
