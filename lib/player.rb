class Player

	attr_accessor :ship_count, :tracking_grid, :home_grid

	def initialize(tracking_grid, home_grid)
		@tracking_grid = tracking_grid
		@home_grid = home_grid
		@ship_count = 5
	end

	def ship_count
		@ship_count
	end

	def place(ship, coordinate)
		ship.location = coordinate
		self.ship_count -= 1
	end

	# def target(coordinate)

	# end

end