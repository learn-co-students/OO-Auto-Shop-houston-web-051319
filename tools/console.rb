require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Mechanics

raul = Mechanic.new("Raul Sánchez", "SUV")
hans = Mechanic.new("Hans Krohn", "Sports Car")
roy = Mechanic.new("Royson Easo", "Minivan")
maruf = Mechanic.new("Maruf Awal", "Economy")

# CarOwners

stefan = CarOwner.new("Stefan Stojanovic")
hermann = CarOwner.new("Hermann Krohn")
kurtis = CarOwner.new("Kurtis Leach")
feven = CarOwner.new("Feven Tsegay")

# Cars

car1 = Car.new("BMW", "M3", "Sports Car", hans, stefan)
car2 = Car.new("VW", "Toureg", "SUV", raul, hermann)
car3 = Car.new("Porsche", "GT2", "Sports Car", hans, kurtis)
car4 = Car.new("Audi", "Q5", "SUV", raul, feven)
car5 = Car.new("Honda", "Odyssey", "Minivan", roy, stefan)
car6 = Car.new("Audi", "RS5", "Sports Car", hans, hermann)
car7 = Car.new("Honda", "Civic", "Economy", maruf, hermann)





binding.pry
