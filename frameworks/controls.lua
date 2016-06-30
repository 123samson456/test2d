-- Initializing Controls

local input  =  require( "frameworks.input" )()
local explanation	= 	{}
local path_to_controls  =  "settings/controls.txt"

for line in love.filesystem.load( path_to_controls ) do
	for action, key, expl in line:gmatch( "(.+)\t(.*)\t(.*)" ) do
		input:bind( key, action )
		explanation[ action ]	= 	expl
	end
end

return explanation

--[[
		If you want to check whether an input is being used or not use this:
		
		function love.update(dt)
			if input:pressed('print') then print(1) end
			if input:released('print') then print(2) end
			if input:down('left_click') then print('left click down') end
		end
		
		To completely unbind an action / key use this:
		
		input:unbind('1')
		input:unbind('s')
		input:unbind('mouse1')
]]--
