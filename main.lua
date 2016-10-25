-----------------------------------------------------------------------------------------
--
-- main.lua


-- we'll be working from 'main.lua' for now, research to be done on using classes...


--creating instances of each class, ignore for now
local hero = require("hero")
local obstacle = require("obstacle")
local environment = require("environment")

local ninja = display.newImage("Ninja.JPG", 50, 250)
ninja:scale(.08, .08)


-- load Box2D physics engine 
local Physics = require("physics")

-- start engine
Physics.start()


-- give ninja physical body 
Physics.addBody(ninja, "dynamic", {radius = 50, bounce = 0.3})