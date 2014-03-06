require_relative 'bike_container'

class Van

  include BikeContainer

  def initialize(options ={})
    self.capacity = options.fetch(:capacity, capacity)
  end

  def collect_broken_bikes_from(station)
    station.broken_bikes.each do |bike|
      station.release(bike)
      self.dock(bike)
    end
  end

  def deliver_broken_bikes_to(garage)
    self.broken_bikes.each do |bike|
      self.release(bike)
      garage.dock(bike)
    end
  end

  def collect_fixed_bikes_from(garage)
    garage.available_bikes.each do |bike|
      garage.release(bike)
      self.dock(bike)
    end
  end
end