require_relative 'bike_container'

class Van

  include BikeContainer

  def initialize(options ={})
    self.capacity = options.fetch(:capacity, capacity)
  end

  def transport_to_garage(broken_bikes)
      dock(broken_bikes)
      release(broken_bikes)
  end

end