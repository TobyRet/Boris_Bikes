require 'van'

describe Van do

  let(:van) { Van.new(:capacity => 20) }

  it "should allow setting default capacity on initialising" do
    expect(van.capacity).to eq(20)
  end

  it "should transport broken bikes to the garage" do
    working_bike, broken_bike = Bike.new, Bike.new
    broken_bike.break
    expect(van.bike_count).to eq(0)
    van.transport_to_garage(broken_bike)
    expect(van.bike_count).to eq(0)
  end

end