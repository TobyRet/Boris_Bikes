require './lib/bike_container'
require './lib/van'
require './lib/docking_station'
require './lib/garage'
require './lib/bike'


describe Van do 

  let(:van) { Van.new(:capacity => 12) }
  let(:station) { DockingStation.new }
  let(:garage) { Garage.new }

  it "should allow setting default capacity on initialising" do
    expect(van.capacity).to eq(12)
  end

  it "should collect broken bikes from the Station" do 
    #1. Prepare for the test
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

  it "should deliver broken bikes to the garage" do
    broken_bike = Bike.new
    broken_bike.break
    van.dock(broken_bike)
    van.deliver_broken_bikes_to(garage)
    expect(garage.bikes).to include(broken_bike)
    expect(van).to be_empty
  end

  it "should collect fixed bikes from the Garage" do
    fixed_bike = Bike.new
    garage.dock(fixed_bike)
    van.collect_fixed_bikes_from(garage)
    expect(van.bikes).to include(fixed_bike)
    expect(garage).to be_empty
  end

  it "should deliver fixed bikes to the Docking Station" do
    fixed_bike = Bike.new
    van.dock(fixed_bike)
    van.deliver_fixed_bikes_to(station)
    expect(station.bikes).to include(fixed_bike)
    expect(van).to be_empty
  end
end