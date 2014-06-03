require 'ship'

describe Ship do 
	let(:ship) {Ship.new(3) }


	it "has a set length" do 
		expect(ship.length).to eq 3
	end

	it "when initialized, is not hit" do
		B1 = double :B1, targeted?: false
		ship.locations << B1
		expect(ship.hit_locations).to be_empty
	end


	it 'has a start location after player being placed' do
		player = double :player, place_ship: ship.locations << :A1 
		player.place_ship
		expect(ship.locations).to eq [:A1]
	end

	context "knows" do 

		before {A1 = double :A1, targeted?: true}

		it "where it's been hit" do
			ship.locations << A1
			expect(ship.hit_locations).to eq [A1]
		end

		it "when it's been sunk" do 
			A2 = double :A2, targeted?: true
			A3 = double :A3, targeted?: true
			ship.locations << A1 ; ship.locations << A2 ; ship.locations << A3
			expect(ship.sunk?).to be_true
		end
	end
end