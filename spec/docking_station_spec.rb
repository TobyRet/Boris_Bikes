require './lib/docking_station'

describe DockingStation do
    
  let(:station) { DockingStation.new(:capacity => 100) }

  it "should allow setting default capacity on initialising" do
    expect(station.capacity).to eq(100)
  end

end