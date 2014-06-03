class Ship

	attr_accessor :length

	def initialize(length)
		@length = length
		@horizontal = true
	end

	def horizontal?
		@horizontal
	end

	def place_vertically!
		@horizontal = false
		self
	end

	def locations
		@locations ||= []
	end

	def hit_locations
		locations.select {|location| location.targeted? }
	end

	def sunk?
		hit_locations.length == self.length
	end

end

