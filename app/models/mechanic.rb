class Mechanic

attr_reader :name, :specialty

@@all = []

def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self
end

def self.all
  @@all
end

def cars
  Car.all.select do | car |
    car.classification.downcase == self.specialty.downcase
  end
end

def car_owners
  self.cars.map do | car |
    car.car_owner
  end
end

def car_owner_names
  self.car_owners.map do | car_owners |
    car_owners.name
  end
end


end
