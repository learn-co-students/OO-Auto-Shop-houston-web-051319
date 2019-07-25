class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select do | car |
      car.car_owner == self
    end
  end

  def car_strings
    self.cars.map do | car |
      "#{car.make} #{car.model} (#{car.classification})"
    end
  end

  def mechanics
    self.cars.map do | car |
      car.mechanic
    end
  end

  def self.average_amount_of_cars
    amt_of_cars = 0
    CarOwner.all.each do | car_owner |
      amt_of_cars += car_owner.cars.length
    end
    amt_of_cars
    total_car_owners = CarOwner.all.length
    amt_of_cars/(total_car_owners).to_f
  end

end
