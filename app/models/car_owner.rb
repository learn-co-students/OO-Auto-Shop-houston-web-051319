class CarOwner

  @@all = []
  
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
      Car.all.select do |car|
        car.owner == self
    end
  end

  def cars_classification
      classes = self.cars.map do |car|
        car.classification
      end
      classes.uniq
    end


  def mechanics
    mechanics = []
    Mechanic.all.each do |mechanic|
      self.cars_classification.each do |car_classification|
        if car_classification == mechanic.specialty
          mechanics << mechanic
        end
      end
    end
    mechanics
  end

  def self.average_cars_owned
    cars_owned = []
    self.all.each do |name|
      cars_owned << name.cars.length
    end
    total_cars = cars_owned.sum
    owners = self.all.length
    average = total_cars / owners.to_f
  end



end
