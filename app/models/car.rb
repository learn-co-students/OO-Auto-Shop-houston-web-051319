class Car
  @@all = []
  attr_reader :make, :model, :classification, :car_owner, :mechanic

  def initialize(car_owner, mechanic, make, model, classification)
    @car_owner = car_owner
    @mechanic = mechanic
    @make = make
    @model = model
    @classification = classification
    @@all << self
  end
  def self.all
    @@all
  end
  def self.classification
    Car.all.map do |car_object|
      car_object.classification
    end
  end
  def mechanics
    Mechanic.all.select do |mechanic_object|
      mechanic_object.specialty == self.classification
    end
  end


end

