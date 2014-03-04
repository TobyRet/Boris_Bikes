
require 'garage'

describe Garage do 
  
  let(:garage) { Garage.new(:capacity => 500) }

  it "should allow setting default capacity on initialising" do
    expect(garage.capacity).to eq(500)
  end
end