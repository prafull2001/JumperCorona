local youlose = {}

local Physics = require("physics")
Physics.start()


function youlose.drawYouLose()
 
	print("youlose - loading youlose...")

	youlosescreen = display.newImage( "gameover.png", 250, 168 )
	youlosescreen:scale( 2, 2 )

	restartButton = display.newImage("restartButton.png", 50, 230)
	restartButton:scale(.07,.07)



	audio.stop(2)
	physics.removeBody( instance2 )
	physics.removeBody(obstacle[1])
	physics.removeBody(obstacle[2])
	physics.removeBody(obstacle[3])
	jumpButton:removeEventListener( "tap", myButtons.jump )
	backButton:removeEventListener( "tap", myButtons.goBack )
	--collectgarbage( "collect" )
	

end



function youlose.restart()
	myScene.sayHello()
	myScene.drawScene()

	
	myHero.sayHello()
	myHero.drawHero() 


	myGoomba.hello()
	myGoomba.drawBadGuy()


	myButtons.sayHello()
	myButtons.drawButtons()


	myGoomba.move()
	--myGoomba.detectCollision()


	gameTheme = audio.loadStream("Music/playTheme.ogg")
	gameThemeChannel = audio.play( gameTheme, { channel=2, loops=-1, fadein=0 } )


	jumpButton:addEventListener("tap", myButtons.jump)
	backButton:addEventListener("tap", myButtons.goBack)

end

--restartButton:addEventListener( "tap", myLoseScreen.restart )




function youlose.sayHello()
	print("youlose - Hello....")
end


return youlose
