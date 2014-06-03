require 'coordinate'

describe Coordinate do 
	let(:coordinate) {Coordinate.new("a","1")}

	it "is untargeted when initialized" do 
		expect(coordinate.targeted?).to be_false
	end

	it "has a row and column when initialized" do
		expect(coordinate.row).to eq 1
		expect(coordinate.column).to eq 1
	end

	it "B1 has a row value of 2 and column 1" do
		coordinate = Coordinate.new("B", "1")
		expect(coordinate.row).to eq 2
		expect(coordinate.column).to eq 1
	end

	it "knows when it's been targeted" do 
		player = double :player, target_coordinate: coordinate.targeted = true
		expect {player.target_coordinate}.to change{coordinate.targeted?}.from(false).to(true)
	end
end