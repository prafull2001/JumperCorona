local scene = {}

local Physics = require("physics")
Physics.start()


function scene.drawScene()

	myScene.sayHello()


	background = display.newImage( "Background/City.png", 240, 150)
	background:scale( .35, .35 )

	grass1 = display.newImage( "grass.png", 197, 300)
	grass1.name = "grass1"
	grass2 = display.newImage("grass.png", 290, 300)
	grass2.name = "grass2"
	grass3 = display.newImage( "grass.png", 197, -30)
	grass3.name = "grass3"
	grass4 = display.newImage( "grass.png", 600, 300)
	grass4.name = "grass4"
	grass5 = display.newImage( "grass.png", 800, 300)
	grass5.name = "grass5"

	Physics.addBody(grass1, "static", {bounce = 0})
	Physics.addBody(grass2, "static", {bounce = 0})
	Physics.addBody(grass3, "static", {bounce = 0})
	Physics.addBody(grass4, "static", {bounce = 0})
	Physics.addBody(grass5, "static", {bounce = 0})


	myHero.drawHero() 

	myGoomba.drawBadGuy()
	myGoomba.move()

	myButtons.drawButtons()

	scoreText = display.newText(score, display.contentCenterX + 50, 90, native.systemFont, 30)
	thescoreText = display.newText("Score: ", display.contentCenterX -10 , 90, native.systemFont, 30)
	highscoreText = display.newText("Highscore: "..highScore, display.contentCenterX + 200, 30, native.systemFont, 30)



	gameTheme = audio.loadStream("Music/playTheme2.ogg")
	gameThemeChannel = audio.play( gameTheme, { channel=2, loops=-1, fadein= 0 } )

end



function scene.cleanUp()

	myHero.cleanUp()
	myGoomba.cleanUp()
	myButtons.cleanUp()
	--backButton:removeEventListener( "tap", myButtons.goBack )

	Physics.removeBody(grass1)
	Physics.removeBody(grass2)
	Physics.removeBody(grass3)
	Physics.removeBody(grass4)
	Physics.removeBody(grass5)

end



function scene.sayHello()
	print("scene - Hello....")
	-- you can insert splash screen that appears prior to game start here...
end


return scene