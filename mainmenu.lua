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

	playButton = display.newImage("playButton.png")
	playButton.x = display.contentCenterX
	playButton.y = display.contentCenterY - 75
	playButton:scale( .3, .3 )


end


function mainmenu.play()
	print("mainmenu - tap registered, preparing to load game..")

	audio.stop(1)

	myScene.sayHello()
	myScene.drawScene()

	
	myHero.sayHello()
	myHero.drawHero() 


	myGoomba.hello()
	myGoomba.drawBadGuy()


	myButtons.sayHello()
	myButtons.drawButtons()


	myGoomba.move()


	gameTheme = audio.loadStream("Music/playTheme.ogg")
	gameThemeChannel = audio.play( gameTheme, { channel=2, loops=-1, fadein=0 } )


	jumpButton:addEventListener("tap", myButtons.jump)
	backButton:addEventListener("tap", myButtons.goBack)


end



function mainmenu.sayHello()
	print("mainmenu - Hello....")
end


return mainmenu