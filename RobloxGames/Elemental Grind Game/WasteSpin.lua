--//     Services     //--
local rs = game:GetService("ReplicatedStorage")

--//     Config     //--
local wantedSpells = {} -- if you dont want a rarity and want purely a single targeted spell(or multiple) then use this
local wantedRarities = { "Legend", "Myth" } -- wanted rarity category
--[[

Rarities:
Unknown - New ones which I have not listed yet
Common
Uncommon
Myth
Rare
Legend

Spells:
Common ; Wind, Earth, Wood, Lightning, Ice, Light, Dark, Sand, Poison, Water, Fire
Uncommon ; Explosion, Blood, Metal, Nova
Rare ; Armament, Plasma, Radiation, Chaos, Sound, Lava, Mechanization
Legend ; Prism, Illusion, Lunar, Hydra, Cosmic, Phoenix, Solar
Myth ; Necromancer, Telekinesis, Destruction, Time, Ace of the Elements, Acceleration, Heaven's Wrath, Dragon

]]

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

--//     Variables     //--
local Client = rs.Client

local Spin = Client.Spin

--//     Functions     //--
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

--//     Code     //--
while task.wait() do
	local spell = Roll()
	if spell == nil then
		print("No more spins")
		break
	else
		local rarity = getRarity(spell)
		if table.find(wantedSpells, spell) then
			print("Rolled wanted spell " .. spell .. " with a rarity of " .. rarity)
			break
		elseif table.find(wantedRarities, rarity) then
			print("Rolled spell " .. spell .. " with a wanted rarity of " .. rarity)
			break
		else
			print("Rolled spell " .. spell .. " rarity of " .. rarity)
		end
	end
end
return
