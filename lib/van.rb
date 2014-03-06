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

end