--//     Variables     //--
local prefix = "."

local __o__orig -- original
local remote = Instance.new("RemoteEvent")

--//     Code     //--
__o__orig = hookmetamethod(remote, "__namecall", function(Self, ...)
    local args = {...}

    if not checkcaller() and getnamecallmethod() == "FireServer" and tostring(Self) == "SayMessageRequest" then
        if string.sub(args[1], 1, #prefix) == prefix then
        	game.StarterGui:SetCore("ChatMakeSystemMessage", { Text = "{System} Message has been hidden!" })
			return nil -- cancel
		end
    end

    return __o__orig(Self, ...)
end)
