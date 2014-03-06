

class Van

  include BikeContainer

  def initialize(options ={})
    self.capacity = options.fetch(:capacity, capacity)
  end

  def collect_available_bikes_from(station)
    station.available_bikes.each do |bike|
      # "self" refers to the van
      self.dock(bike)
      station.release(bike)
    end
  end

  #def pickup(station)
  #  take.(station.broken_bikes)
  #  station.give(broken_bikes)
  #end

end