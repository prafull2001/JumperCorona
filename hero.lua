local class = require("30logglobal")

local hero = class()

hero.__name = "hero"

function hero:__init(aName, anX, aY)
	self.name = aName
	self.x = anX
	self.y = aY



	
	
	--self.image = ninjaImage
	--Physics.addBody(ninjaImage, "dynamic", {radius = 50, bounce = .3})

	
	print("Printing Something" .. self.name .. "<<")
	print("Printing Something else" .. self.image.x .. "<<")

end


function hero:jump()

	--ninjaImage:applyLinearImpulse(0, -0.75, self.x, self.y)

end

return hero





