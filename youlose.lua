local youlose = {}

local Physics = require("physics")
Physics.start()


function youlose.drawYouLose()

 	myLoseScreen.sayHello()

	youlosescreen = display.newImage( "gameover.png", 250, 168 )
	youlosescreen:scale( 2, 2 )

	restartButton = display.newImage("restartButton.png", 50, 230)
	restartButton:scale(.07,.07)

	restartButton:addEventListener( "tap", myLoseScreen.restart )
	--Runtime:removeEventListener( "colliison", onCollision )
	--backButton:removeEventListener( "tap", myButtons.goBack )
	--jumpButton:removeEventListener( "tap", myButtons.jump )

	audio.stop(2)

end



function youlose.restart()


	myScene.cleanUp()
	print("cleanup done")

	restartButton:removeEventListener( "tap", myLoseScreen.restart )
	--restartButton = nil

	myMenu.play()

end

--restartButton:addEventListener( "tap", myLoseScreen.restart )



function youlose.sayHello()
	print("youlose - Hello....")
end


return youlose
