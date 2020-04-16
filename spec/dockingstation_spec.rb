require "./lib/docking_station"

describe DockingStation do
  it "releases bike" do
    bike = Bike.new
    station = DockingStation.new
    station.dock_bike(bike)
    expect((station.release_bike).class).to eq (Bike)
  end

  it "expects bike to be working" do
    bike = Bike.new
    expect(bike.is_working?).to eq (true)
  end

  it "docks bike" do
    expect(DockingStation.new).to respond_to(:dock_bike)
  end

  it "sees docked bikes" do
    bike = Bike.new
    station = DockingStation.new

    station.dock_bike(bike)
    expect(station.bikes.count).to eq (1)
  end

  it "returns an error" do
    station = DockingStation.new
    #puts station.release_bike
    expect { station.release_bike }.to raise_error("No bikes available")
  end

  it "can't dock bike if dock is at full capacity" do
    bike = Bike.new
    station = DockingStation.new
    station.dock_bike(bike)
    expect{ station.dock_bike(bike) }.to raise_error("Docking Station at full capacity!")
  end
end


  #expect { raise StandardError }.to raise_error
