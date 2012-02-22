class Player < Character
	def initialize
		@x = 400
		@y = 500
		@image = Image.load("images/haetataki.png")
		super
	end

	def move
		@x += Input.x * 10
	 	@y += Input.y * 10
	end

        def hit(obj)
#p "hit: #{obj}"
        end
end
