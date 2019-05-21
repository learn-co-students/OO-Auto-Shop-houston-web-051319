class Car

  attr_reader :make, :model, :classification, :owner
  attr_accessor :mechanic
  @@all = []

  def initialize(owner, mechanic, make, model, classification)
    @owner = owner
    @mechanic = mechanic
    @make = make
    @model = model
    @classification = classification
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.classifications
    self.all.map do |each_car|
      each_car.classification
    end.uniq
  end

  def best_mechanics
    Mechanic.all.select do |each_mechanic|
      each_mechanic.specialty == self.classification
    end
  end

end
