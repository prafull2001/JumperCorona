local hero = {}

local Physics = require("physics")
Physics.start()


function hero.drawHero()
 
	print("hero - loading hero...")

	greenGuysheet = graphics.newImageSheet( "greenman.png", { width=128, height=128, numFrames=15 } )

	-- play 15 frames every 500 ms
	instance2 = display.newSprite( greenGuysheet, {start=1, count=15, time=500 } )
	instance2.name = "greenGuy"
	Physics.addBody(instance2, "dynamic", {radius = 20, bounce = 0})
	instance2.x =100
	instance2.y = 260	
	instance2.gravityScale = 2.5

	instance2:play()

end





function hero.sayHello()
	print("hero - Hello....")
end


return hero
