local Physics = require("physics")
Physics.start()


score = 0
highScore = 0
mode = 100  -- 100 for Netutral, 0 for Play, 1 for Instructions, 2 for Credits

myScene = require("scene")
myHero = require("hero")
myGoomba = require("badguy")
myButtons = require("buttons")
myMenu = require("mainmenu")
myLoseScreen = require("youlose")
myInstructions = require("instructions")
myCredits = require("credits")

--collision event


function onCollision( event )
	-- event.phase is a Corona-provided global varible that provides information on what phase the event (in this case collision) is in
	if (event.phase == "began") then

		obj1 = event.object1.name
		obj2 = event.object2.name
		
		if (obj1 == "greenGuy") then
			if (obj2 == "Asteroid 1" or obj2 == "Asteroid 2" or obj2 == "Asteroid 3") then
				event.phase = "ended"
				myLoseScreen.drawYouLose()
			elseif (obj2 == "grass1" or obj2 == "grass2" or obj2 == "grass3" or obj2 == "grass4" or obj2 == "grass5") then
				myHero.canJump = true
			else
				print("Object 2 hitting hero is:" .. obj2 .. "<<")
			end
		elseif  (obj2 == "greenGuy") then
			if (obj1 == "Asteroid 1" or obj1 == "Asteroid 2" or obj1 == "Asteroid 3") then
				event.phase = "ended"
				myLoseScreen.drawYouLose()
			elseif (obj1 == "grass1" or obj1 == "grass2" or obj1 == "grass3" or obj1 == "grass4" or obj1 == "grass5") then
				myHero.canJump = true
			else
				print("Object 1 hitting hero is:" .. obj1 .. "<<")
			end
		end	
	end

end

-- code starts now





myMenu.drawMainMenu()
Runtime:addEventListener( "collision", onCollision )