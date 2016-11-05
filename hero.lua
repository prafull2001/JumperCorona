local hero = class()

hero._name = "hero"

function hero:_init(aName, anImage, aHeight, aWidth)
	self.name = AaNme
	self.image = anImage
	self.height = aHeight
	self.width = aWidth
end


function hero:jump()

end

return hero



--[[

Physics.addBody(ninja, "dynamic", {radius = 50, bounce = .3})

function ninjaJump()
	ninja:applyLinearImpulse(0, -0.75, ninja.x, ninja.y)
end

ninja:addEventListener("tap", ninjaJump)

]]