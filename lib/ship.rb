class Ship

	attr_accessor :length

	def initialize(length)
		@length = length
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

