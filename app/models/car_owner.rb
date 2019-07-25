class CarOwner
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def cars
    Car.all.select do |car_objects|
      car_objects.car_owner==self
    end
  end
  def mechanics
    self.cars.map do |car_objects|
      car_objects.mechanic
    end
  end
  def self.average
    total_car_owners = @@all.length
    total_cars = 0
    returnthing = nil
    CarOwner.all.each do |carOwner_objects|
      total_cars = total_cars + carOwner_objects.cars.length
    end
    returnthing = (total_cars / total_car_owners.to_f)
  end
  

end
