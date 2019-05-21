class Car

  attr_reader :make, :model, :classification, :mechanic, :car_owner

  @@all = []

  def initialize(make, model, classification, mechanic, car_owner)
    @make = make
    @model = model
    @classification = classification
    @mechanic = mechanic
    @car_owner = car_owner
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classifications
    all_classifications = Car.all.map do | car |
      car.classification
    end
    all_classifications.uniq
  end

  def mechanic_with_expertise
    Mechanic.all.select do | mechanic |
      mechanic.specialty.downcase == self.classification.downcase
    end
  end

end
