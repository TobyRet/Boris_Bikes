module BikeContainer

  DEFAULT_CAPACITY = 10

  def bikes 
    @bikes ||= []
  end

  def capacity
    @capacity ||= DEFAULT_CAPACITY
  end

  def capacity=(value)
    @capacity = value
  end

  def bike_count
    bikes.count
  end

  def dock(bike)
    raise "There is no more room for bikes" if full?
    bikes << bike if bike.instance_of?(Bike)
  end

  def release(bike)
    raise "There are no bikes left" if empty?
    bikes.delete(bike) if bike.instance_of?(Bike)
  end

  def full?
    bike_count == capacity
  end

  def empty?
    bike_count == 0
  end

  def available_bikes
    bikes.reject {|bike| bike.broken?}
  end

  def broken_bikes
    bikes.select {|bike| bike.broken?}
  end

end