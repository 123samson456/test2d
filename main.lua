-- Initializing Vars
gameActive 		= 	nil
gamePaused 		=	nil
controls  		=   nil
keyString		= 	nil
player 			= 	nil

function love.load()
	-- Global Vars
	gameActive 	= 	true
	gamePaused 	= 	false
	-- Setting up ingame controls
	controls 		= 	{}
	controls.up    	=   "w"
	controls.left   =   "a"
	controls.down   =   "s"
	controls.right  =   "d"
	controls.pause 	=	"escape"
	keyString		= 	{}
	keyString[ "w" ] 	= 	"[W]"
	keyString[ "a" ] 	= 	"[A]"
	keystring[ "s" ] 	= 	"[S]"
	keystring[ "d" ] 	= 	"[D]"
	keyString[ "escape" ] 	= 	"[ESC]"
	
	-- Creating player
	player 	=	{}
	player.x 	= 	900
	player.y 	= 	450
	player.running 	= 	false
	player.sneaking	= 	false
	player.shooting = 	false
	player.angle 	= 	nil
	player.dir 		=	nil
	
	-- Setting up physical vars the player is influenced by
	pSet 	= 	{}
	pSet.maxSpeed 	= 	100
	pSet.friction 	= 	nil
	pSet.acceleration 	= 	nil
	pSet.mass 		= 	80
end

function love.update( dt )
	if not gameActive then return end
	if not gamePaused then return end
end

function love.draw()
	if gamePaused then
		love.graphics.print( "The game is currently paused. Unpause with" .. keyString[ controls.pause ], 300, 450 )	
	end
end

function love.keypressed( key )
	if gameActive then
		if key == controls.pause then
			gamePaused 	= 	not gamePaused
		end
	end
end
