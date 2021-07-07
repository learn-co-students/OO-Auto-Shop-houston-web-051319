class Car

  @@all = []

  attr_accessor :make, :model, :classification, :owner

  def initialize(make, model, classification, owner)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.classification
      all_classifications = self.all.map do |car|
        car.classification
      end
      all_classifications.uniq
    end

  def mechanics
      Mechanic.all.select do |mechanic|
        mechanic.specialty == self.classification
      end
    end

    
end
