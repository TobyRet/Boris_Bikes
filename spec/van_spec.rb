require 'van'

describe Van do

  let(:van) { Van.new(:capacity => 20) }

  it "should allow setting default capacity on initialising" do
    expect(van.capacity).to eq(20)
  end

  it "should load broken bikes" do
    broken_bike, working_bike = Bike.new, Bike.new
    broken_bike.break
    van.dock(broken_bike)
    expect(van.bike_count).to eq(1)
  end
end