local souncId = 3118721479

local plrs = game:GetService("Players")
local lp = plrs.LocalPlayer
local chr = lp.Character
local backpack = lp.Backpack

for i,v in pairs(backpack:GetDescendants()) do
    coroutine.wrap(function()
        if v:IsA("Tool") then
            v.Parent = chr
            -- repeat wait() until v.Parent == chr end
            wait(0.25)
            v.Remote:FireServer("PlaySong", souncId)
        end
    end)()
end
