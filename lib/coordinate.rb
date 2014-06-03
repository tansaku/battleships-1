class Coordinate

	# attr_reader :row, :column

	def initialize(row, column)
		@targeted = false
		@row = convert(row)
		@column = column.to_i
	end

	def convert(row)
		row.to_i(27) - 9
	end

	def targeted?
		@targeted
	end

	def row
		@row
	end

	def column
		@column
	end


end