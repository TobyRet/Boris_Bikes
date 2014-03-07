require_relative 'bike_container'

class Garage

  include BikeContainer

  def initialize(options ={})
    self.capacity = options.fetch(:capacity, capacity)
  end

  def fix_broken_bikes_delivered_by(van)
    van.broken_bikes.each do |bike|
      van.release(bike)
      self.dock(bike)
      bike.fix
    end
  end

end