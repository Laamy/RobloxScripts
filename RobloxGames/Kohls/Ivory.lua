--//     Services     //--
local rns = game:GetService("RunService")
local plyrs = game:GetService("Players")
local ws = game:GetService("Workspace")

--//     Variables     //--
local object = ws.Terrain["_Game"].Workspace.Baseplate

local lp = plyrs.LocalPlayer
local backpack = lp.Backpack
local chra = lp.Character
local cf = chra:FindFirstChild("HumanoidRootPart")

local org = ws.Gravity -- store gravity

--//     Function     //--
local function PushChat(msg)
	game.StarterGui:SetCore("ChatMakeSystemMessage", { Text = "{Ivory.lua} " .. msg, Color = Color3.fromRGB(0, 0, 255) })
end

function EqupidIvory()
	plyrs:Chat("gear me 108158379")
	repeat rns.Heartbeat:Wait() until backpack:FindFirstChild("IvoryPeriastron") ~= nil
	backpack:FindFirstChild("IvoryPeriastron").Parent = chra
end

function IvoryEventE()
	chra:FindFirstChild("IvoryPeriastron").Remote:FireServer(Enum.KeyCode.E)
end


function AttachAsync(mobj)
	spawn(function()
		while ws.Gravity == 0 do
			rns.Heartbeat:Wait()
			chra["Humanoid"]:ChangeState(11) -- phase state
			local tmpCf = CFrame.new(-1 * (object.Size.X / 2) - (chra['Torso'].Size.X / 2), 0, (object.Size.Z / 2))
			cf.CFrame = object.CFrame * tmpCf
		end
	end)
	spawn(function()
		function _wait() wait(0.1) plyrs:Chat("unpunish me") end
		repeat _wait() until ws.Gravity ~= 0
	end)
	spawn(function() wait(1) ws.Gravity = org return end)
	local weld = ws[chra.Name].Torso:WaitForChild("Weld")
end

function MovePart(mobj, pos)
	ws.Gravity = 0
	wait()
	EqupidIvory()
	cf.CFrame = CFrame.new(pos)
	wait(0.2)
	IvoryEventE()
	repeat wait() until ws.Camera:FindFirstChild("FakeCharacter") ~= nil
	wait(0.1)
	AttachAsync(mobj)
	ws.Gravity = org
	wait(1) -- this wait could be improved but im not fucked enough to add the timer shit (you could probably change this to 0.7 btw)
	IvoryEventE()
end

--//     Code     //--
PushChat("Moving baseplate to '-500, 0, 500'")

MovePart(object, Vector3.new(-500, 0, 500))

PushChat("Ivory.lua finished!")
