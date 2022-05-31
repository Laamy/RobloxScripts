local VelocitySkills = {
    { "Propel", 1.5 }, -- upgrade propel by 1.5 (STACKS)
    { "Impulsion", 1.1 },
}

local connections = {}

if _G._Dispose then _G._Dispose() end
function _G._Dispose()
    for i,c in ipairs(connections) do
        c:Disconnect()
    end
end

table.insert(connections, game.Workspace.SnowClan_8342.HumanoidRootPart.ChildAdded:Connect(function(obj)
    task.wait()
    if obj.Name == "BodyVelocity" and obj.Velocity.Y >= 35 then
        local holdingTool = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool")
        for i,v in ipairs(VelocitySkills) do
            if holdingTool and holdingTool.Name:sub(1, #v[1]) == v[1] then
                obj.Velocity = obj.Velocity * v[2]
            end
        end
    end
end))
