class Player

	attr_accessor :ship_count

	def initialize
		@ship_count = 5
	end

	def ship_count
		@ship_count
	end

	def place(ship, coordinate)
		ship.location = coordinate
		self.ship_count -= 1
	end

end