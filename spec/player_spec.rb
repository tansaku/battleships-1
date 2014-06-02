require 'player'

describe Player do  
	let(:player) {Player.new}

	it "has 5 ships when initialized" do 
		expect(player.ship_count).to eq 5
	end

	it "should assign a ship a location" do 
		ship = double :ship, :location= => nil
		player.place ship,:A1
		expect(ship.location = :A1).to be_true
	end

	it "has one fewer ships after placing a ship" do
		ship = double :ship, :location= => nil
		player.place ship,:A1
		expect(player.ship_count).to eq 4
	end
end