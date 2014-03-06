require './lib/garage'

describe Garage do 

  let(:garage) { Garage.new(:capacity => 200) }

  it "should allow setting default capacity on initialising" do
    expect(garage.capacity).to eq(200)
  end
  
end