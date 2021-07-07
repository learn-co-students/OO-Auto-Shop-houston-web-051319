require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


bill = CarOwner.new("Bill")
sally = CarOwner.new("Sally")
sam = CarOwner.new("Sam")

robert = Mechanic.new("Robert", "Sedan")
shelly = Mechanic.new("Shelly", "Sedan")
jim = Mechanic.new("Jim", "Truck")

prius = Car.new("Toyota,", "Prius", "Sedan", bill, robert)
corolla = Car.new("Toyota", "Corolla", "Sedan", sally, robert)
honda = Car.new("Honda", "Accord", "Sedan", sam, shelly)
raptor = Car.new("Ford", "Raptor", "Truck", sam, jim)
tundra = Car.new("Toyota", "Tundra", "Truck", sam, jim) 















binding.pry


puts "I'm pry"


