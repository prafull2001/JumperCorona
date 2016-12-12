local mainmenu = {}

local Physics = require("physics")
Physics.start()


function mainmenu.drawMainMenu()


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

	-- add event listener to 'playButton' global variable that was created in drawMainMenu()
	playButton:addEventListener( "tap", myMenu.play )

end


function mainmenu.play()
	

	print("mainmenu - tap registered, preparing to load game..")

	playButton:removeEventListener( "tap", myMenu.play )

	audio.stop(1)

	myScene.drawScene()

end



function mainmenu.sayHello()
	print("mainmenu - Hello....")
end


return mainmenu