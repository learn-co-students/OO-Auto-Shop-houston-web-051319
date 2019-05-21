require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#Car Owners
roy = CarOwner.new("Roy")
bob = CarOwner.new("Bob")
jacob = CarOwner.new("Jacob")
raul = CarOwner.new("Raul")

#Mechanics
george = Mechanic.new("George","Cool")
johnny = Mechanic.new("Johnny","Trash")

#Cars
tc = Car.new(raul, george, "Scion", "TC", "Cool")
corolla = Car.new(roy, george, "Toyota", "Corolla", "Cool")
focus = Car.new(bob, johnny, "Ford", "Focus", "Trash")
ia = Car.new(roy, george, "Scion", "iA", "Cool")
rav = Car.new(jacob, george, "Toyota", "Rav4", "Cool")

#no offense if there is someone names Bob or Johnny

binding.pry
"Done"
