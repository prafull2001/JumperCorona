local obstacle = {}
local obstacle_mt = {_index = obstacle}


function obstacle.new(name, positionX, positionY, length, width, speed)
	local newObstacle = {
		name = name
		positionX = positionX or 0
		positionY = positionY of 0
		width = width or 0
		length =length or 0
		speed = speed or 0
	}

	return setmetatable(newObstacle, obstacle_mt)


	function obstacle:Collision()

	end

	


	