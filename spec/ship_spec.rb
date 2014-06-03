require 'ship'

describe Ship do 
	let(:ship) {Ship.new(3) }


	context "when initialized" do 

		it "has a set length" do 
			expect(ship.length).to eq 3
		end

		it "is not hit" do
			B1 = double :B1, targeted?: false
			ship.locations << B1
			expect(ship.hit_locations).to be_empty
		end

		it "is horizontal by default" do 
			expect(ship.horizontal?).to be_true
		end

	end

	context "when placed by player" do 

		it "has a start location" do
			player = double :player, place_ship: ship.locations << :A1 
			player.place_ship
			expect(ship.locations).to eq [:A1]
		end

		it "can be placed vertically" do
			# player = double :player, place_vertically: 
			ship.place_vertically!
			expect(ship).not_to be_horizontal
		end
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