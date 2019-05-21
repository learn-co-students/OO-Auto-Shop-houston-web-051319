class Mechanic
  @@all = [] 
  attr_reader :name, :specialty

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end
  def self.all
    @@all
  end
  def car
    #all the car objects a mechanic takes care of
    Car.all.select do |car_object|
      car_object.mechanic == self
    end
  end
  def car_owner
    self.car.map do |car_object|
      car_object.car_owner
    end
  end
  def car_owner_name
    self.car_owner.map do |car_owner|
      car_owner.name
    end
  end


end
