-----------------------------------------------------------------------------------------
--
-- main.lua



require("30logglobal")

local hero = require("hero") 
local obstacle = require("obstacle")
local environment = require("environment")


local Jumper = hero:new("Jumper", "Ninja.JPG", 50, 250)
local Block = obstacle:new("Block", 50, 250)
local Ground = environment:new("Ground", 50, 250)
-- load Box2D physics engine 
local Physics = require("physics")

print(Jumper.height)

-- start engine
Physics.start()



--ninja:scale(.08, .08)




