local scene = {}

local Physics = require("physics")
Physics.start()


function scene.drawScene()
	sky = display.newImage( "sky.jpg", 250, 75 )
	sky:scale( 1.5, 1.5 )

	grass1 = display.newImage( "grass.png", 197, 300)
	grass1.name = "grass1"
	grass2 = display.newImage("grass.png", 290, 300)
	grass2.name = "grass2"

	Physics.addBody(grass1, "static", {bounce = 0})
	Physics.addBody(grass2, "static", {bounce = 0})
end


function scene.sayHello()
	print("scene - Hello....")
end


return scene