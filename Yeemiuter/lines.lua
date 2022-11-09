-- configuration
local colour = Drawing.color(255, 255, 0, 0) -- new instance of solid red
local lines = 200

-- script

local labels = {}

for i=2,lines + 2 do
    local objId = Drawing.new("Line", 0, (i*9), 6000, (i*9), colour, 2)
    Drawing.visible(objId, true)
    table.insert(labels, objId)
end

wait(5)

for i,v in ipairs(labels) do
    Drawing.visible(v, false)
end
