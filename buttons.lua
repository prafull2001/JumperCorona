local buttons = {}

local Physics = require("physics")
Physics.start()


function buttons.drawButtons()
	
	jumpButton = display.newImage( "button.png")
	jumpButton.x = 473
	jumpButton.y = 305
	jumpButton.name = "Jump Button"
	jumpButton:scale( .2, .7 )

	slideButton = display.newImage("button.png")
	slideButton.x = 5
	slideButton.y = 305
	slideButton.name = "Slide Button"
	slideButton:scale(.2, .7)

	backButton = display.newImage("backButton.png")
	backButton.x = display.contentCenterX - 245
	backButton.y = display.contentCenterY - 100
	backButton.name = "Back Button"
	backButton:scale(.11, .11)

end

function buttons.jump()

	--work on decreasing air time by increasing gravity...
	instance2:applyLinearImpulse(0, -0.2, instance2.x, instance2.y)
	--Applying 0 force in the X direction and -0.12 in the Y direction. Y is negative because 
	--down is considered positive by the physics engine.
	--Apply force to the center of the green guy, hence instance.x & instance.y
	

end


function buttons.goBack()
	print("buttons - loading main menu...")
	audio.stop(2)
	Physics.removeBody( instance2 )
	Physics.removeBody(obstacle[1])
	Physics.removeBody(obstacle[2])
	Physics.removeBody(obstacle[3])
	myMenu.drawMainMenu()
	jumpButton:removeEventListener( "tap", myButtons.jump )
	backButton:removeEventListener( "tap", myButtons.goBack )
	playButton:addEventListener( "tap", myMenu.play )
	--collectgarbage( "collect" )


end


function buttons.sayHello()
	print("buttons - Hello....")
end


return buttons