require './lib/garage'
require './lib/van'
require './lib/bike'

describe Garage do 

  let(:van) { Van.new }
  let(:garage) { Garage.new(:capacity => 200) }

  it "should allow setting default capacity on initialising" do
    expect(garage.capacity).to eq(200)
  end
 
  it "should fix broken bikes delivered by the van" do
    broken_bike = Bike.new
    broken_bike.break 
    van.dock(broken_bike)
    garage.fix_broken_bikes_delivered_by(van)
    expect(van).to be_empty
    expect(garage.available_bikes.length).to eq(1)
  end
end