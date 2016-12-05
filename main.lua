

local Physics = require("physics")
Physics.start()



myScene = require("scene")
myHero = require("hero")
myGoomba = require("badguy")
myButtons = require("buttons")
myMenu = require("mainmenu")
myLoseScreen = require("youlose")


myMenu.drawMainMenu()
playButton:addEventListener( "tap", myMenu.play )






function onCollision( event )
	if (event.phase == "began") then
		
		if (event.object1.name == "greenGuy" and event.object2.name == "Asteroid 1") then
			myLoseScreen.drawYouLose()
			
		elseif (event.object1.name == "greenGuy" and event.object2.name == "Asteroid 2") then
			myLoseScreen.drawYouLose()
			
		elseif (event.object1.name == "greenGuy" and event.object2.name == "Asteroid 3") then
			myLoseScreen.drawYouLose()
			
		end

		
	end

end
Runtime:addEventListener( "collision", onCollision )




