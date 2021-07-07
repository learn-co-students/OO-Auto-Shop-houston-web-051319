require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#Car_Classifications
good = "good"
very_good = "very_good"
okay = "okay"

#Owners
bob = CarOwner.new("Bob")
dave = CarOwner.new("Dave")
jill = CarOwner.new("Jill")

#Cars
car1 = Car.new("Audi", "A4", very_good, bob)
car2 = Car.new("BMW", "300", very_good, bob)
car3 = Car.new("VW", "Jetta", good, dave)
car4 = Car.new("Toyota", "Yaris", okay, jill)
car5 = Car.new("Tesla", "Model 3", good, bob)
car6 = Car.new("Audi", "A5", very_good, bob)

#Mechanics
mechanic1 = Mechanic.new("Mechanic1", good)
mechanic2 = Mechanic.new("Mechanic2", very_good)
mechanic3 = Mechanic.new("Mechanic3", okay)
mechanic4 = Mechanic.new("Mechanic4", very_good)


binding.pry
