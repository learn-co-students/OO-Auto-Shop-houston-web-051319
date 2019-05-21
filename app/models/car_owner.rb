class CarOwner

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select do |each_car|
      each_car.owner == self
    end
  end

  def mechanics
    self.cars.map do |each_car|
      each_car.mechanic
    end.uniq
  end

  def self.average
    # Car.all.count.to_f / self.all.count
    car_count_total = self.all.map do |each_owner|
      each_owner.cars.count
    end.reduce(0,:+)
    car_count_total.to_f / self.all.count
  end

end
