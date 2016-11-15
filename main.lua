-----------------------------------------------------------------------------------------
--
-- main.lua



local Physics = require("physics")
Physics.start()


myScene = require("scene")
myHero = require("hero")
myButtons = require("buttons")
myMenu = require("mainmenu")

myMenu.drawMainMenu()
playButton:addEventListener( "tap", myMenu.play )

--[[
if MODE == 0 then
	myMenu.sayHello()
	myMenu.drawMainMenu()


	playButton:addEventListener( "tap", myMenu.play )
end



if MODE == 1 then

	print("main - preparing to draw game...")
	myScene.sayHello()
	myScene.drawScene()

	
	myHero.sayHello()
	myHero.drawHero()

	
	myButtons.sayHello()
	myButtons.drawButtons()

	jumpButton:addEventListener("tap", myButtons.jump)
	backButton:addEventListener("tap", myButtons.goBack)
end

]]


function onCollision( event )
	if (event.phase == "began") then
		print("began: " .. "The " .. event.object1.name .. " hit the " .. event.object2.name .. ".")
	end
end


Runtime:addEventListener( "collision", onCollision )

--jumpButton:addEventListener( "tap", myButtons.jump)










