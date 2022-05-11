function hasGamepass(plrId, id) -- Get game pass (For perm display)
    local plrData = game:HttpGet("https://inventory.roblox.com/v1/users/"
    ..plrId.."/items/GamePass/"..id)
    local hasPerm = false
    if string.match(plrData, tostring(id)) then
        hasPerm = true
    end
    return hasPerm
end
