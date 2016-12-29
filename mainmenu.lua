local mainmenu = {}

local Physics = require("physics")
Physics.start()


function mainmenu.drawMainMenu()

	print( "DRAW MAIN MENU =========================, MODE = " .. mode )

	menuTheme = audio.loadStream("Music/menuTheme.ogg")
	menuThemeChannel = audio.play( menuTheme, { channel=1, loops=-1, fadein=3000 } )

	background = display.newImage("menuBackground.png")
	background.x = display.contentCenterX
	background.y = display.contentCenterY
	background:scale(1.2, 1.2)

	-- create Global button variable - 'playButton'
	playButton = display.newImage("playButton.png")
	playButton.x = display.contentCenterX
	playButton.y = display.contentCenterY - 75
	playButton:scale( .3, .3 )

	instructionsButton = display.newImage("instructionsButton.png")
	instructionsButton.x = display.contentCenterX
	instructionsButton.y = display.contentCenterY + 5
	instructionsButton:scale(.3 , .3)

	-- add event listener to 'playButton' and 'instructionsButton' global variables that were created in drawMainMenu()
	playButton:addEventListener( "tap", myMenu.play )
	instructionsButton:addEventListener( "tap", myMenu.showInstructions )

end


function mainmenu.play()
	
	myMenu.removeAllListeners()

	mode = 0

	print("mainmenu - tap registered, preparing to load game..")

	

	audio.stop(1)

	myScene.drawScene()


end


function mainmenu.showInstructions()

	myMenu.removeAllListeners()

	mode = 1

	print("mainmenu - tap registered, preparing to load instructions page...")

	

	audio.stop(1)

	myInstructions.drawInstructions()


end


function mainmenu.removeAllListeners()

	playButton:removeEventListener( "tap", myMenu.play )
	instructionsButton:removeEventListener( "tap", myMenu.showInstructions )

end


function mainmenu.sayHello()
	print("mainmenu - Hello....")
end


return mainmenu