Gamestate 	=	require( "frameworks.hump.gamestate" )
-- Setting up Gamestates
local state_mainmenu 	= 	{}
local state_optionsmenu	= 	{}
local state_confirmquit	= 	{}
local state_game 		= 	{}
local state_pause 		= 	{}
local state_gameover	= 	{}

function state_mainmenu:enter()
	mainmenu 	= 	{}
	mainmenu.res 	= 	require( "resources.mainmenu" )
end

function state_mainmenu:update( dt )
	-- if requirement met then
	Gamestate.switch( state_game )
	Gamestate.switch( state_optionsmenu )
end

function state_mainmenu:draw()
	
end

function state_mainmenu:keyreleased( key, code )
	if key == "x" then 			-- placeholder -> import global control settings
		Gamestate.switch( state_confirmquit )
	end
end

function state_mainmenu:mousereleased( x, y, button )
	-- Check if mouse is placed where the gamebutton is
	-- Game button
	Gamestate.switch( state_mainmenu )
	-- Options button
	Gamestate.switch( state_optionsmenu )
	-- Quit button
	Gamestate.switch( state_confirmquit )
end

function state_optionsmenu:enter()
	optionsmenu 	= 	{}
	optionsmenu.res 	= 	require( "resources.optionsmenu" )
end

function state_optionsmenu:update( dt )
	
end

function state_optionsmenu:draw()
	
end

function state_optionsmenu:keyreleased( key, code )
	
end

function state_optionsmenu:mousereleased( x, y, button )
	
end

function state_confirmquit:enter()
	confirmquit 	= 	{}
	confirmquit.res 	= 	require( "resources.confirmquit" )
end

function state_confirmquit:update( dt )
	
end

function state_confirmquit:draw()
	
end

function state_confirmquit:keyreleased( key, code )
	
end

function state_confirmquit:mousereleased( x, y, button )
	
end

function state_game:enter()
	game 	=	{}
	game.res 	= 	require( "resources.game" )
end

function state_game:update( dt )
	
end

function state_game:draw()
	
end

function state_game:keypressed( key, code )
	
end

function state_game:keyreleased( key, code )
	
end
	
function state_game:mousepressed( x, y, button )
	
end

function state_game:mousereleased( x, y, button )
	
end

function state_pause:enter()
	pause 	= 	{}
	pause.res 	= 	require( "resources.pause" )
end

function state_pause:update( dt )
	
end

function state_pause:draw()
	
end

function state_gameover:enter()
	gameover 	= 	{}
	gameover.res	= 	require( "resources.gameover" )
end

function state_gameover:update( dt )
	
end

function state_gameover:draw()
	
end

function love.load()
	Gamestate.registerEvents()
	Gamestate.switch( state_mainmenu )
end

function love.update( dt )
	
end

function love.draw()
	
end

function love.keypressed( key, code )
	
end

function love.keyreleased( key, code )
	
end

function love.mousepressed( x, y, button )
	
end

function love.mousereleased( x, y, button )
	
end

function love.focus( f )
	
end

function love.quit()
	
end
