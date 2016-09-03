local environment = {}
local environment_mt = {_index = environment}


function environment.new(name, positionX, positionY, length, width)
	local newEnvironment = {
		name = name
		positionX = positionX or 0
		positionY = positionY of 0
		width = width or 0
		length =length or 0
	}

	return setmetatable(newEnvironment, environment_mt)


	local function animate()

	end


	