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
end