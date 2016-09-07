local environment = {}
local environment_mt = {_index = environment}

local function animate()

end

function environment.new(name, positionX, positionY, length, width)
	local newEnvironment = {
		name = name,
		positionX = positionX or 0,
		positionY = positionY or 0,
		width = width or 0,
		length =length or 0
	}

	return setmetatable(newEnvironment, environment_mt)
end

return environment





	