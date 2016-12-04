

local Physics = require("physics")
Physics.start()


centerX = display.contentCenterX
centerY = display.contentCenterY



myScene = require("scene")
myHero = require("hero")
myGoomba = require("badguy")
myButtons = require("buttons")
myMenu = require("mainmenu")


myMenu.drawMainMenu()
playButton:addEventListener( "tap", myMenu.play )






function onCollision( event )
	if (event.phase == "began") then
		
		if (event.object1.name == "greenGuy" and event.object2.name == "Asteroid 1") then
			local youLose = display.newText("You Lose!", display.contentCenterX, 20, native.systemFont, 40)
			youLose:setFillColor(0, 0, 0)
		elseif (event.object1.name == "greenGuy" and event.object2.name == "Asteroid 2") then
			local youLose = display.newText("You Lose!", display.contentCenterX, 20, native.systemFont, 40)
			youLose:setFillColor(0, 233, 1)
		elseif (event.object1.name == "greenGuy" and event.object2.name == "Asteroid 3") then
			local youLose = display.newText("You Lose!", display.contentCenterX, 20, native.systemFont, 40)
			youLose:setFillColor(11, 324, 13)
		end

		--print("began: " .. "The " .. event.object1.name .. " hit the " .. event.object2.name .. ".")
		--local youLose = display.newText("You Lose!", display.contentCenterX, 20, native.systemFont, 40)
		--youLose:setFillColor(0, 0, 0)
	end
end
Runtime:addEventListener( "collision", onCollision )




