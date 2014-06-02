require 'player'

describe Player do  
	let(:player) {Player.new}

	it "has 10 ships when initialized" do 
		expect(player.ship_count).to eq 5
	end

end