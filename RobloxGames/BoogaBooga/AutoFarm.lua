local rs = game:GetService("ReplicatedStorage")
local plyrs = game:GetService("Players")
local ui = game:GetService("StarterGui")

local function GetLP()
	return plyrs.LocalPlayer
end

local Events = rs.Events

spawn(function()
	while _G.hi == nil do wait(1)
		coroutine.wrap(function()
			for _,v in ipairs(workspace.Deployables:GetChildren()) do
				spawn(function()
					if v.Name == "Plant Box" and v:FindFirstChild("Bloodfruit") == nil then
						local pcf = v.Reference.CFrame
						local prtPos = Vector3.new(pcf.X, pcf.Y, pcf.Z)
						
						local lpcf = GetLP().Character.UpperTorso.CFrame
						local myPos = Vector3.new(lpcf.X, lpcf.Y, lpcf.Z)
						local distance = (prtPos - myPos).Magnitude
						
						if distance < 24 then
							Events.lnteractStructure:FireServer(v, "Bloodfruit")
						end
					end
				end)
			end
		end)()
	end
end)

while _G.hi == nil do wait(1)
	coroutine.wrap(function()
		for _,v in ipairs(workspace:GetChildren()) do
			spawn(function()
				if v.Name == "Bloodfruit Bush" then
					local pcf = v.Leaves.CFrame
					local prtPos = Vector3.new(pcf.X, pcf.Y, pcf.Z)
					
					local lpcf = GetLP().Character.UpperTorso.CFrame
					local myPos = Vector3.new(lpcf.X, lpcf.Y, lpcf.Z)
					local distance = (prtPos - myPos).Magnitude
					
					if distance < 24 then
						Events.Pickup:FireServer(v)
					end
				end
			end)
		end
	end)()
end
