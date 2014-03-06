require_relative 'bike_container'

class Van

  include BikeContainer

  def initialize(options ={})
    self.capacity = options.fetch(:capacity, capacity)
  end

  def collect_broken_bikes_from(station)
    station.broken_bikes.each do |bike|
      # "self" refers to the van
      station.release(bike)
      self.dock(bike)
    end
  end

  def deliver_broken_bikes_to(garage)
    self.broken_bikes.each do |bike|
      # "self" refers to the van
      self.release(bike)
      garage.dock(bike)
    end
  end

end