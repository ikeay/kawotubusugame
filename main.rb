#encoding: Shift_JIS
require 'dxruby'
require 'dxrubyex'

require_relative 'character'
require_relative 'player'
require_relative 'enemy'

Window.width = 800
Window.height =600
Window.bgcolor = [255, 255, 255]

player = Player.new
enemies = []
10.times {enemies << Enemy.new}
draw_items =enemies + [player]

collisions = draw_items.map{|i| i.collision }

Window.loop do
	break if Input.keyPush?(K_ESCAPE)
	#bullets.draw if Input.keyPush?(K_SPECE)
	
	draw_items.each do |item|
		item.move
		item.draw
	end
#if Input.keyPush?(K_SPECE)
	Collision.check(collisions, collisions)
#end
end

