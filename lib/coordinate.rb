class Coordinate

	attr_reader :row, :column

	def initialize(row, column)
		@targeted = false
		@row = (row.is_a? String) ? convert(row) : row
		@column = column.to_i
	end

	def convert(row)
		row.to_i(27) - 9
	end

	def targeted?
		@targeted
	end

	def hold(ship)
		@locations << ship
	end	

end