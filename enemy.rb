class Enemy < Character
	def initialize
		@x = rand(Window.width)
		@y = rand(Window.height)
		@image_normal = Image.load("images/ka.png")
                @image_tubusu = Image.load("images/tubusu.png")
@image = @image_normal		
@image_flag = false
super
	end

	def move
		if @image_flag == false
			@x += rand(3) - 1
			@y += rand(3) - 1
                end
	end

def shot(obj)
end

	def hit(obj)
if Input.keyPush?(K_SPACE)

		if obj.is_a?(Player)
                  
		  if @image != @image_tubusu
                    @image = @image_tubusu
@image_flag = true
                  end
                end
end
	end
end
