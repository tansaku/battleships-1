require 'player'

describe Player do  
	let(:player) {Player.new}

	it "has 5 ships when initialized" do 
		expect(player.ship_count).to eq 5
	end

	it "should place 5 ships on home grid" do 
		grid = double :grid
		ship = double :ship
		player.place ship 
		
	end

end