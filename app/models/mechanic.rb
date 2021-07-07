class Mechanic

  @@all = []

  attr_accessor :name, :specialty

def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self
end

def self.all
  @@all
end

  def car_owners
      mechanic_specialty = self.specialty
      matching_car = Car.all.select do |car|
        car.classification == mechanic_specialty
      end
      list_of_owners = matching_car.map do |car|
        car.owner
      end
      list_of_owners.uniq
    end


  def car_owners_names
      self.car_owners.map do |car_owner|
        car_owner.name
      end
    end
    



end
