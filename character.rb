class Character
 	attr_accessor :collision
	def initialize
		@collision = CollisionBox.new(self, 0, 0, @image.width, @image.height)
	end

	def draw
		Window.draw(@x, @y, @image)
		@collision.set(@x, @y)
	end
end
