# Class Methods vs. Instance Methods

class Car
  def initialize(year, make, model)
    @year = year
    @make = make
    @model = model
  end
end

def create_car(make, model)
  current_year = Time.now.year
  Car.new(current_year, make, model)
end

car = create_car('Nissan', 'Altima')



class Car
  def initialize(year, make, model)
    @year = year
    @make = make
    @model = model
  end

  def self.create(make, model)
    current_year = Time.now.year
    new(current_year, make, model)
  end
end

car = Car.create('Nissan', 'Altima')
