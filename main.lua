---------------------------------s--------------------------------------------------------
--
-- main.lua





local Physics = require("physics")


Physics.start()


local ninja = display.newImageRect("Ninja.JPG", 56, 80)
ninja.x = 75
ninja.y = 250


Physics.addBody(ninja, "dynamic", {radius = 50, bounce = 0.3})

local function jump()
	ninja:applyLinearImpulse(0, -0.75, ninja.x, ninja.y)
	--Applying 0 force in the X direction and -0.75 in the Y direction. Y is negative bc down is considered positive by the physics engine.
	--Apply force to the center of the balloon, hence balloonX & balloonY.
	--Modifies only the TEXT PROPERTY of tapText object (increases counter)
end



ninja:addEventListener("tap", jump)









