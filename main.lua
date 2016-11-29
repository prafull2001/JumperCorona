-----------------------------------------------------------------------------------------
--
-- main.lua



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





--[[
function onCollision( event )
	if (event.phase == "began") then
		print("began: " .. "The " .. event.object1.name .. " hit the " .. event.object2.name .. ".")
		local youLose = display.newText("You Lose!", display.contentCenterX, 20, native.systemFont, 40)
		youLose:setFillColor(0, 0, 0)
	end
end
Runtime:addEventListener( "collision", onCollision )
]]













