local buttons = {}

local Physics = require("physics")
Physics.start()

function buttons.drawButtons()
	
	myButtons.sayHello()

	if (mode == 0) then
		jumpButton = display.newImage( "button.png")
		jumpButton.x = 473
		jumpButton.y = 305
		jumpButton.name = "Jump Button"
		jumpButton:scale( .2, .7 )

		backButton = display.newImage("backButton.png")
		backButton.x = display.contentCenterX - 245
		backButton.y = display.contentCenterY - 100
		backButton.name = "Back Button"
		backButton:scale(.11, .11)

		-- add event listeners for created buttons
		jumpButton:addEventListener("tap", myButtons.jump)
		backButton:addEventListener("tap", myButtons.goBack)
	elseif (mode == 1) then

		backButton2 = display.newImage("backButton.png")
		backButton2.x = display.contentCenterX - 245
		backButton2.y = display.contentCenterY - 100
		backButton2.name = "Back Button 2"
		backButton2:scale(.11, .11)

		backButton2:addEventListener("tap", myButtons.goBack)

	elseif (mode == 2) then

		backButton3 = display.newImage("backButton.png")
		backButton3.x = display.contentCenterX - 245
		backButton3.y = display.contentCenterY - 100
		backButton3.name = "Back Button 3"
		backButton3:scale(.11, .11)

		backButton3:addEventListener("tap", myButtons.goBack)

	end

end

function buttons.jump()

	myHero.jump()

end


function buttons.goBack()
	
	if (mode == 0) then

		print("buttons - exiting PLAY SCENE...")
		audio.stop(2)
		myScene.cleanUp()

		if score > highScore then
			highScore = score 
		end
		score = 0

		mode = 100

		myMenu.drawMainMenu()

	elseif (mode == 1) then
		print ("buttons - exiting INSTRUCTIONS...")
		myInstructions.cleanUp()

		mode = 100

		myMenu.drawMainMenu()

	elseif (mode == 2) then
		print("buttons - exiting CREDITS...")

		myCredits.cleanUp()

		mode = 100

		myMenu.drawMainMenu()

	end	

end



function buttons.sayHello()
	print("buttons - Hello....")
end



function buttons.cleanUp()

	jumpButton:removeEventListener( "tap", myButtons.jump )
	print( "REMOVED jump Button" )
	backButton:removeEventListener( "tap", myButtons.goBack )
	print( "REMOVED back Button" )
	--jumpButton = nil
	--backButton = nil

end



return buttons