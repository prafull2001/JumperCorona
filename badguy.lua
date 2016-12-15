local badguy = {}

local Physics = require("physics")
Physics.start()






function badguy.hello()
	print("badguy - hello...")
end


function badguy.drawBadGuy()

	myGoomba.hello()

	obstacle = {}

	obstacle[1] = display.newImage( "asteroid.png")
	obstacle[1].x = 300
	obstacle[1].y = 275 
	obstacle[1]:scale(.7, .7)
	obstacle[1].collType = "asteroid"
	obstacle[1].name = "Asteroid 1"
	Physics.addBody(obstacle[1], "dynamic", {radius = 20, bounce = 0})

	obstacle[2] = display.newImage( "asteroid.png")
	obstacle[2].x = 500
	obstacle[2].y = 275
	obstacle[2]:scale(.7, .7)
	obstacle[2].name = "Asteroid 2"
	Physics.addBody(obstacle[2], "dynamic", {radius = 20, bounce = 0})
--[[
	obstacle[3] = display.newImage( "asteroid.png")
	obstacle[3].x = 600
	obstacle[3].y = 275
	obstacle[3]:scale(.7, .7)
	obstacle[3].name = "Asteroid 3"
	Physics.addBody(obstacle[3], "dynamic", {radius = 20, bounce = 0})
]]
	Runtime:addEventListener("enterFrame", myGoomba.move)


end



function badguy.move()

--get badguy to spawn back at start after they cross a certain x value and
--game should restart upon contact	
	
	for i = 1, #obstacle, 1 do
		if obstacle[i].x < 0 then
			score = score + 1
			scoreText.text = score
			obstacle[i].x = 500
		else
			obstacle[i]:setLinearVelocity( -150, 0 )
		end

	end
	
end



function badguy.cleanUp()

	Runtime:removeEventListener("enterFrame", myGoomba.move)
	Physics.removeBody(obstacle[1])
	Physics.removeBody(obstacle[2])
	

end




function badguy.sayHello()
	print("badguy - Hello....")
end


return badguy