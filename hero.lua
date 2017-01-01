local hero = {}

local Physics = require("physics")
Physics.start()


function hero.drawHero()
 
	myHero.sayHello()

	heroSheet = graphics.newImageSheet( "greenman.png", { width=128, height=128, numFrames=15 } )

	-- play 15 frames every 500 ms
	heroObject = display.newSprite( heroSheet, {start=1, count=15, time=500 } )
	heroObject.name = "greenGuy"
	Physics.addBody(heroObject, "dynamic", {radius = 20, bounce = 0})
	heroObject.x = 50
	heroObject.y = 260	
	heroObject.gravityScale = 2.75
	--heroObject:scale(.1,.1)
	-- call inbuilt play() function available to Sprite objects
	heroObject:play()

end



function hero.jump()

	--work on decreasing air time by increasing gravity...
	if (hero.canJump == true) then
		heroObject:applyLinearImpulse(0, -0.17, heroObject.x, heroObject.y)
		print("AFTER JUMP Hero Object.X = " .. heroObject.x .. "<<")
		hero.canJump = false
	end
	--Applying 0 force in the X direction and -0.12 in the Y direction. Y is negative because 
	--down is considered positive by the physics engine.
	--Apply force to the center of the green guy, hence instance.x & instance.y
	
end


function hero.sayHello()
	print("hero - Hello....")
end



function hero.cleanUp()

	Physics.removeBody(heroObject)

end


return hero
