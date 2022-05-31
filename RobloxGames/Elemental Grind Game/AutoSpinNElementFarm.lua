--//     Services     //--
local rs = game:GetService("ReplicatedStorage")
local vu = game:GetService("VirtualUser")
local plyrs = game:GetService("Players")

workspace.FallenPartsDestroyHeight = 0/0

local wantedSpells = {}
local wantedRarities = { "Legend", "Myth" }

local spinfailthreshold = 5 -- 3 second delay so we wanna wait until 5 seconds to make sure :)
-- I'll add the cooldown remote stuff later, for now please use the threshold stuff

--//     Data     //--
local spellDatabase = { 
	["Common"] = { "Common", "Wind", "Earth", "Wood", "Lightning", "Ice", "Light", "Dark", "Sand", "Poison", "Water", "Fire" },
	["Uncommon"] = { "Uncommon", "Explosion", "Blood", "Metal", "Nova" },
	["Rare"] = { "Rare", "Armament", "Plasma", "Radiation", "Chaos", "Sound", "Lava", "Mechanization" },
	["Legend"] = { "Legend", "Prism", "Illusion", "Lunar", "Hydra", "Cosmic", "Phoenix", "Solar" },
	["Myth"] = { "Myth", "Necromancer", "Telekinesis", "Destruction", "Time", "Ace of the Elements", "Acceleration", "Heaven's Wrath", "Dragon" }
}

--//     Services     //--
local Client = rs.Client

local Spawn = Client.Intro
local ToWorld = Client.Teleport
local Spin = Client.Spin

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

local function Roll()
	local attempt = 0
	
	local data = Spin:InvokeServer()
	if data[1] == nil then
		repeat wait(1)
			if attempt == spinfailthreshold then
				return nil
			end
			attempt = attempt + 1
			data = Spin:InvokeServer()
		until data[1]
	end
	return data[1]
end

local function getRarity(spell)
	for i,rarity in pairs(spellDatabase) do
		for i,__spell in pairs(rarity) do
			if spell == __spell then
				return rarity[1]
			end
		end
	end
	return "Unknown"
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
				if tonumber(mana[1]) <= tonumber(mana[2] / 3) or tonumber(mana[2]) >= 200 then
					game.Players.LocalPlayer.Character:BreakJoints()
					
					while task.wait() do
						local spell = Roll() -- waste all the spins
						if spell == nil then
							print("No more spins")
							break
						else
							local rarity = getRarity(spell)
							if table.find(wantedSpells, spell) then
								print("Rolled wanted spell " .. spell .. " with a rarity of " .. rarity)
								brk = true
							elseif table.find(wantedRarities, rarity) then
								print("Rolled spell " .. spell .. " with a wanted rarity of " .. rarity)
								brk = true
							else
								print("Rolled spell " .. spell .. " rarity of " .. rarity)
							end
						end
					end
					break
				end
			end
		end)
	end
end
return
