-- libraries
local AIModule = loadstring(game:HttpGet("https://raw.githubusercontent.com/Laamy/RobloxScripts/main/Utils/AIModule.lua"))()

-- services
local plyrs = game:GetService("Players")
local ws = game:GetService("Workspace")

-- variables
local lp = plyrs.LocalPlayer
local chra = lp.Character

-- functions
local function randomPlr()
    return plyrs:GetPlayers()[math.random(1, #plyrs:GetChildren())]
end

-- code
AIModule:StartAI(chra, randomPlr().Character.HumanoidRootPart, 10) -- move to random player ofc
-- <NPCModel, Part2WalkTo, CanStopWhenXStudsFrom>

-- AIModule:StopAI()
