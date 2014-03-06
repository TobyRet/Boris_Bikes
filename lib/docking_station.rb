require_relative 'bike_container'

class DockingStation

  include BikeContainer

  def initialize(options ={}) 
    self.capacity = options.fetch(:capacity, capacity) #capacity = calls the capacity=(value)
    # fetch the :capacity value out of the options hash. If it does not exist use the capacity (other value)
  end
end