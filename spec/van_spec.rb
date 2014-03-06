require './lib/bike_container'
require './lib/bike'
require './lib/van'
require './lib/docking_station'


describe Van do 

  let(:van) { Van.new(:capacity => 12) }
  let(:station) { DockingStation.new }
  let(:garage) { Garage.new }

  it "should allow setting default capacity on initialising" do
    expect(van.capacity).to eq(12)
  end

  it "should collect broken bikes from the Station" do 
    #1. Prepare for the test
    station = DockingStation.new
    van = Van.new
    broken_bike = Bike.new
    broken_bike.break
    station.dock(broken_bike)
    #2. Perform the action (method) you are testing
    van.collect_broken_bikes_from(station)
    #3. You check the results (expectations)
    expect(van.bikes).to include(broken_bike)
    expect(station).to be_empty
    # 1 is optional. 2 an 3 are not.
  end

  
end