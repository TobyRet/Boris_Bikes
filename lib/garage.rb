require_relative 'bike_container'

class Garage

  include BikeContainer

  def initialize(options ={})
    self.capacity = options.fetch(:capacity, capacity)
  end

  def accept(broken_bike)
    broken_bike.dock
  end
  
  def repair(broken_bike)
    broken_bike.fix
  end

end