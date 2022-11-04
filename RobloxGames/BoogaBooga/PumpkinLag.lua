--[[

press k once it stops toggling it on and off u can then abuse it
it spawns around 10k particles on ur humanoidrootpart server sidedly

]]

local keep = 50 -- keep 100 out of 10k particles visibile visually

local plyrs = game:GetService("Players")
local lp = plyrs.LocalPlayer

local count = 0
function CheckHide(v)
	task.wait()
	if v.Name == "Pumpkins" then
		if v.Enabled == true and count > keep then
			v.Enabled = false
		elseif v.Enabled == true then
			count = count + 1
		end
	end
end

for i,v in ipairs(lp.Character.HumanoidRootPart:GetChildren()) do
	CheckHide(v)
end

lp.Character.HumanoidRootPart.ChildAdded:Connect(CheckHide)

for i=1,20000 do
	coroutine.wrap(function()
		game:GetService("ReplicatedStorage").Events.ToggleMojo:FireServer("Pumpkins")
	end)()
end
