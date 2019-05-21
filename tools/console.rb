require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

mechanic = Mechanic.new("Mechanic","Sport Car")
mechanic2 = Mechanic.new("Mechanic2","Trucks")
mechanic3 = Mechanic.new("Mechanic3","Simple")
mechanic4 = Mechanic.new("Mechanic4","Sport Car")

car_owner = CarOwner.new("Owner")
car_owner2 = CarOwner.new("Owner2")
car_owner3 = CarOwner.new("Owner3")

sport_car = Car.new(car_owner, mechanic, "1","1","Sport Car")
sport_car2 = Car.new(car_owner2, mechanic, "1","1","Truck")
sport_car3 = Car.new(car_owner2, mechanic2, "2","2","Simple")
sport_car4 = Car.new(car_owner2, mechanic2, "2","2","Simple")

binding.pry
0
# CarOwner

# Get a list of all owners

# Get a list of all the cars that a specific owner has

# Get a list of all the mechanics that a specific owner goes to

# Get the average amount of cars owned for all owners

# Car

# Get a list of all cars

# Get a list of all car classifications

# Get a list of mechanics that have an expertise that matches the car classification

# Mechanic

# Get a list of all mechanics

# Get a list of all cars that a mechanic services

# Get a list of all the car owners that go to a specific mechanic

# Get a list of the names of all car owners who go to a specific mechanic