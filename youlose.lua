local youlose = {}

local Physics = require("physics")
Physics.start()


function youlose.drawYouLose()


 	
	print("youlose - loading youlose...")

	youlosescreen = display.newImage( "gameover.png", 250, 168 )
	youlosescreen:scale( 2, 2 )

	restartButton = display.newImage("restartButton.png", 50, 230)
	restartButton:scale(.07,.07)

	restartButton:addEventListener( "tap", myLoseScreen.restart )
	Runtime:removeEventListener( "colliison", onCollision )
	backButton:removeEventListener( "tap", myButtons.goBack )
	jumpButton:removeEventListener( "tap", myButtons.jump )

	audio.stop(2)

	

end



--[[


	physics.removeBody( instance2 )
	physics.removeBody(obstacle[1])
	physics.removeBody(obstacle[2])
	physics.removeBody(obstacle[3])
	jumpButton:removeEventListener( "tap", myButtons.jump )
	backButton:removeEventListener( "tap", myButtons.goBack )
	

]]




function youlose.restart()

--
	Physics.removeBody( instance2 )
	Physics.removeBody(obstacle[1])
	Physics.removeBody(obstacle[2])
	Physics.removeBody(obstacle[3])
	Physics.removeBody(grass1)
	Physics.removeBody(grass2)
	Physics.removeBody(grass3)
	jumpButton:removeEventListener( "tap", myButtons.jump )
	backButton:removeEventListener( "tap", myButtons.goBack )
	restartButton:removeEventListener( "tap", myLoseScreen.restart )
	

	
	print("cleanup done")


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
