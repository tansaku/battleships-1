require 'player'

describe Player do  
	let(:player) {Player.new(:tracking_grid, :home_grid)}
	let(:tracking_grid) {double :tracking_grid}
	let(:home_grid) {double :home_grid}

	context "when initialized" do 

		it "has a tracking grid" do
			expect(player.tracking_grid).not_to be_nil
		end

		it "has a home grid" do 
			expect(player.home_grid).not_to be_nil
		end

		it "has 5 ships" do 
			expect(player.ship_count).to eq 5
		end

		# it "has an aircraft carrier, battleship, submarine, destroyer and tug" do
		# 	ships = [:aircraft_carrier, :battleship, :submarine, :destroyer, :tug]
		# 	expect(player.ships).to eq ships
		# end
	end

		it "can assign a ship a location" do 
			ship = double :ship, :location= => nil
			player.place ship,:A1
			expect(ship.location = :A1).to be_true
		end
	# it "can choose for the ship to lie horizontally from starting point" do 
	# 	ship = double :ship, :horizontal false
	# 	player.player ship,:A1,true
	# 	expect(ship).to be_horizontal
	# end

	it "has one fewer ships after placing a ship" do
		tug = double :tug, :location= => nil
		player.place tug, :A1
		expect(player.ship_count).to eq 4
	end

	# it "can call out shots on its tracking grid" do 
	# 	tracking_grid = double :tracking_grid, :hit? => @hit
	# 	player.target(tgrid(:A1)
	# 	expect(tracking_grid).to receive(:hit?)
	# end

end