local moduleTable = {
	["Players"] = game:GetService("Players");
	["Workspace"] = game:GetService("Workspace");
	["SwordName"] = "Sword";
} -- standard map

--local characterModel = ws[username]
--ws["SnowClan_8342"].Sword.Handle

function moduleTable.equipSword()
	local plrName = game.Players.LocalPlayer.Character.Name
	moduleTable["Players"][plrName].Backpack[moduleTable["SwordName"]].Parent = moduleTable["Workspace"][plrName]
end

function moduleTable.setSwordName(name)
	moduleTable["SwordName"] = name
end

function moduleTable.getSwordHandle()
	return moduleTable["Workspace"][game.Players.LocalPlayer.Name][moduleTable["SwordName"]].Handle
end

function moduleTable.FireTouch(handle, part)
	--print("Touch interest called with arguments of: ", handle.Name, ", ", part.Name)
	firetouchinterest(handle, part, 1)
	wait()
	firetouchinterest(handle, part, 0)
end

function moduleTable.AttackPlayer(username)
	local handle = moduleTable.getSwordHandle()
	
	for i,v in pairs(moduleTable["Workspace"][username]:GetChildren()) do -- fire sword's touch interest for every player part
		if v:IsA("Part") then
			moduleTable.FireTouch(handle, v)
		end
	end
end

function moduleTable.KillPlayer(username)
	local thread = coroutine.create(function()
		while moduleTable["Workspace"][username]["Humanoid"].Health ~= 0 do
			moduleTable.AttackPlayer(username)
			wait(0.25)
		end
	end)
	coroutine.resume(thread) -- this is around 3 times faster then wrapping a thread
end

function moduleTable.KillAll()
	for i,v in ipairs(moduleTable["Players"]:GetChildren()) do
		local plr = v.Character
		moduleTable.KillPlayer(plr.Name)
	end
end

return moduleTable
