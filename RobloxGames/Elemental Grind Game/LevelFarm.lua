--//     Services     //--
local rs = game:GetService("ReplicatedStorage")
local vu = game:GetService("VirtualUser")
local plyrs = game:GetService("Players")

workspace.FallenPartsDestroyHeight = 0/0

--//     Services     //--
local Client = rs.Client

local Spawn = Client.Intro
local ToWorld = Client.Teleport

--//     Functions     //--
local function CastCurrentSpell()
	vu:CaptureController()
	vu:ClickButton1(Vector2.new(100, 100))
end

local function UnequipSpells()
	for i,v in ipairs(plyrs.LocalPlayer.Character:GetChildren()) do
		if v:IsA("Tool") then
			v.Parent = plyrs.LocalPlayer.Backpack
		end
	end
end

local function GetSpells()
	local spells = {}
	UnequipSpells()
	for i,v in ipairs(plyrs.LocalPlayer.Backpack:GetChildren()) do
		table.insert(spells, v)
	end
	return spells
end

local function EquipSpell(index)
	UnequipSpells()
	local spells = GetSpells()
	spells[index].Parent = plyrs.LocalPlayer.Character
end

local function SpawnIn()
	repeat task.wait() until plyrs.LocalPlayer.PlayerGui:FindFirstChild("IntroGui")
	if plyrs.LocalPlayer.PlayerGui.IntroGui.Enabled then
		local output = Spawn:InvokeServer()
		ToWorld:InvokeServer()
		
		plyrs.LocalPlayer.PlayerGui.IntroGui.Enabled = false
		plyrs.LocalPlayer.PlayerGui.StatsGui.Enabled = true
		
		workspace.Camera.CameraType = Enum.CameraType.Custom
		workspace.Camera.CameraSubject = game.Workspace[plyrs.LocalPlayer.Name]:WaitForChild("Humanoid")
		
		return output
	else
		return true
	end
end

brk = false
if _G.Dispose then _G.Dispose() end
function _G.Dispose()
	brk = true
	print("Ejected old copy")
end

--//     Code     //--
while task.wait() and not brk do
	if SpawnIn() then
		local function CastAllSpells()
			for i=1,#GetSpells() do
				EquipSpell(i)
				wait()
				CastCurrentSpell()
			end
		end
		
		pcall(function()
			while task.wait() do
				local mana = string.split(string.split(game.Players.LocalPlayer.PlayerGui.StatsGui.BarsFrame.Mana.TextLabel.Text, " ")[2], "/")
				CastAllSpells()
				if tonumber(mana[1]) <= tonumber(mana[2] / 3) then
					game.Players.LocalPlayer.Character:BreakJoints()
				end
			end
		end)
	end
end
return -- level farm script
