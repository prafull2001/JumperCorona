local hero = {}
local hero_mt = {_index = hero}



local function animate()

end


function hero.new (name, positionX, positionY)
	local newHero = {
		name = name
		positionX = positionX or 0
		positionY = positionY or 0
	}

	return setmetatable( newHero, herp_mt )

function hero:Jump(amount)

end

