local res   =   {}
res.cursor    =       -- path to custom cursor

local button1 	= 	gui.Create( "button" )
button1:SetState( "state_mainmenu" )
button1:SetSize( 100, 100 )
button1:SetText( "Play" )

local button2 	= 	gui.Create( "button" )
button2:SetState( "state_mainmenu" )
button2:SetSize( 100, 100 )
button2:SetText( "Settings" )

local button3	= 	gui.Create( "button" )
button3:SetState( "state_mainmenu" )
button3:SetSize( 100, 100 )
button3:SetText( "Credits" )

local button4 =   gui.Create( "button" )
button4:SetState( "state_mainmenu" )
button4:SetSize( 100, 100 )
button4:SetText( "Quit" )

res.buttons   =   {
	{ obj = button1, target = "" },
	{ obj = button2, target = "" },
	{ obj = button3, target = "" },
	{ obj = button4, target = "" }
}

return res
