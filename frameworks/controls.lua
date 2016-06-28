-- Initializing Controls

local controls  =   {}
local controlStrings	= 	{}
local path_to_controls  =   "settings/controls.txt"

for line in love.filesystem.lines( path_to_controls ) do
 	for action, key, expl in line:gmatch( "(.*)\t(.*)\t(.*)" ) do
 		controls[ action ] 	= 	key
 		controlStrings[ action ] 	= 	expl
 	end
end

return controls, controlStrings