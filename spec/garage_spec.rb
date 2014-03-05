
require 'garage'

describe Garage do 
  
  let(:garage) { Garage.new(:capacity => 500) }

  it "should allow setting default capacity on initialising" do
    expect(garage.capacity).to eq(500)
  end

  it "should fix broken bikes" do
    broken_bike = Bike.new
    broken_bike.break
    garage.repair(broken_bike)
    expect(broken_bike).not_to be_broken
  end

end