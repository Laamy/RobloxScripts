-- stupid pastebin
local rs = game:GetService("ReplicatedStorage")
local plyrs = game:GetService("Players")

local lp = plyrs.LocalPlayer

local ClientStorage = rs[lp.UserId .. "Client"]

local StartMove = ClientStorage.StartMove -- :FireServer("Impulsion")
local EndMove = ClientStorage.EndMove

local function FireTimedSkill(type, delay)
    StartMove:FireServer(type)
    task.wait(delay)
    EndMove:FireServer(type)
end

local function FireSkill(type)
    FireTimedSkill(type, 0)
end

local function CreateMacro(name, tooltip, func)
    local tool = Instance.new("Tool", lp.Backpack)
    tool.Name = name
    tool.RequiresHandle = false
    tool.CanBeDropped = false
    tool.ToolTip = tooltip
    tool.Activated:Connect(func)
    
    local data = Instance.new("BoolValue", tool)
    data.Value = true
    data.Name = "IsMacro"
end

-- Start your scripting here!

local Spells = {
    Spell1 = "Downward Force",
    Spell2 = "Disruption",
    Spell3 = "Crush",
    Spell4 = "Propel",
    Spell5 = "Impulsion",
}

CreateMacro("Shockwave", "Creates a massive shockwave using impulsion and crush", function()
    FireSkill(Spells.Spell5)
    wait(0.7)
    FireSkill(Spells.Spell3)
end)

CreateMacro("Disruption Block", "Crushes down rocks and/or catches abilities then properly blocks them", function()
    FireSkill(Spells.Spell2)
    FireSkill(Spells.Spell3)
end)

CreateMacro("Boulder Throw", "Breaks massive chunks of land from the ground then propels them forwards at lightspeed", function()
    FireSkill(Spells.Spell2)
    wait(0.6)
    FireSkill(Spells.Spell4)
end)

CreateMacro("Final Strike", "Play all the moves in a set order at once", function()
    FireSkill(Spells.Spell2)
    FireSkill(Spells.Spell5)
    wait(0.7)
    FireSkill(Spells.Spell3)
    wait(0.5)
    FireSkill(Spells.Spell1)
    FireSkill(Spells.Spell4)
end)
