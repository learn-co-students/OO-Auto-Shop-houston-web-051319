class Mechanic

  attr_reader :name, :specialty
  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    self.class.all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select do |each_car|
      each_car.mechanic == self
    end
  end

  def car_owners
    self.cars.map do |each_car|
      each_car.owner
    end.uniq
  end

  def car_owner_names
    self.car_owners.map do |each_owner|
      each_owner.name
    end
  end
  
end
