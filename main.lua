---------------------------------s--------------------------------------------------------
--
-- main.lua





local Physics = require("physics")


Physics.start()




local sky = display.newImage( "sky.jpg", 250, 75 )
sky:scale( 1.5, 1.5 )


local grass = display.newImage( "grass.png", 197, 300)
grass.name = "grass"
local grass2 = display.newImage("grass.png", 290, 300)


Physics.addBody(grass, "static", {bounce = 0})




local greenGuysheet = graphics.newImageSheet( "greenman.png", { width=128, height=128, numFrames=15 } )

-- play 15 frames every 500 ms
local instance2 = display.newSprite( greenGuysheet, {start=1, count=15, time=500 } )
instance2.name = "greenGuy"
Physics.addBody(instance2, "dynamic", {radius = 20, bounce = 0})
instance2.x = 50
instance2.y = 260
instance2:play()


Physics.addBody(instance2, "dynamic", {radius = 20, bounce = 0})


local function Jump()

	--work on decreasing air time by increasing gravity...
	instance2:applyLinearImpulse(0, -0.075, instance2.x, instance2.y)
	--Applying 0 force in the X direction and -0.75 in the Y direction. Y is negative because 
	--down is considered positive by the physics engine.
	--Apply force to the center of the ninja, hence instance.x & instance.y

end


local function onCollision( event )
	if (event.phase == "began") then
		print("began: " .. "The " .. event.object1.name .. " hit the " .. event.object2.name .. ".")
	end
end


Runtime:addEventListener( "collision", onCollision )

 
instance2:addEventListener("tap", Jump)













