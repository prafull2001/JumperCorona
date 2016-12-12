local buttons = {}

local Physics = require("physics")
Physics.start()


function buttons.drawButtons()
	
	myButtons.sayHello()

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

end

function buttons.jump()

	myHero.jump()

end


function buttons.goBack()
	print("buttons - loading main menu...")
	audio.stop(2)

	myScene.cleanUp()

	myMenu.drawMainMenu()

end



function buttons.sayHello()
	print("buttons - Hello....")
end



function buttons.cleanUp()

	jumpButton:removeEventListener( "tap", myButtons.jump )
	backButton:removeEventListener( "tap", myButtons.goBack )

	--jumpButton = nil
	--backButton = nil

end



return buttons