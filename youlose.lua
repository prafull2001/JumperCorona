local youlose = {}

local Physics = require("physics")
Physics.start()


local function listener ( event )
    print( "listener called" )
end


function youlose.drawYouLose()


 	myLoseScreen.sayHello()


 	myButtons.cleanUp()
--[[
 	for i = 1, 3000000, 1 do
 		x=0
 	end
]]
-- 	print( "DELAY done!" )

	--timer.performWithDelay( 10000, listener )

	youlosescreen = display.newImage( "gameover.png", 250, 168 )
	youlosescreen:scale( 2, 2 )

	restartButton = display.newImage("restartButton.png", 50, 230)
	restartButton:scale(.07,.07)

	--tmr = timer.performWithDelay( 3000, myLoseScreen.restart)


	
	restartButton:addEventListener( "tap", myLoseScreen.restart)	
	--restartButton:addEventListener( "tap", timer.performWithDelay( 3000, myLoseScreen.restart)	 )	
	--timer.cancel()
	

	
	--timer.performWithDelay( 3000, myLoseScreen.restart)
	--Runtime:removeEventListener( "colliison", onCollision )
	--backButton:removeEventListener( "tap", myButtons.goBack )
	--jumpButton:removeEventListener( "tap", myButtons.jump )

	audio.stop(2)

end



function youlose.restart()




	--timer.cancel( tmr )

	restartButton:removeEventListener( "tap", myLoseScreen.restart )
	--restartButton = nil



	if score > highScore then
		highScore = score 
	end
	score = 0

	myScene.cleanUp()
	print("cleanup done")

	

	myMenu.play()

	

	--timer.performWithDelay( 3000, myLoseScreen.restart )

end



--restartButton:addEventListener( "tap", myLoseScreen.restart )



function youlose.sayHello()
	print("youlose - Hello....")
end


return youlose
