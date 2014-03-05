require 'van'

describe Van do

  let(:van) { Van.new(:capacity => 20) }

  it "should allow setting default capacity on initialising" do
    expect(van.capacity).to eq(20)
  end

  it "should accept broken bikes from station" do
    bike1 = Bike.new
    bike1.break
    station = DockingStation.new
    station.dock(bike1)
    van.collect_broken_bikes_from(station) # take all broken bikes, release them from the station and dock into the van
    expect(van.bike_count).to eq(1)
    expect(station.empty?).to be_true   
  end


end