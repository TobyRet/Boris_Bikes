require 'bike_container'
require '../lib/van'
require '../lib/dockingstation'
require '../lib/bike'

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
    available_bike = Bike.new
    available_bike.break
    station.dock(available_bike)
    #2. Perform the action (method) you are testing
    van.collect_available_bikes_from(station)
    #3. You check the results (expectations)
    expect(van.bikes).to include(available_bike)
    expect(station).to be_empty
    # 1 is optional. 2 an 3 are not.
  end
  
end