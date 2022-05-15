--[[

WARNING: You need VIP to use this!

]]

local rs = game:GetService("ReplicatedStorage")

local SayMessageRequest = rs.DefaultChatSystemChatEvents.SayMessageRequest

local function Fart()
	SayMessageRequest:FireServer(":fart", "All")
end

if not _G.FartDisabler then
	_G.FartDisabler = true
	game.Players.LocalPlayer.Character.HumanoidRootPart.ChildAdded:Connect(function(obj)
		repeat task.wait() until obj:FindFirstChild("ParticleEmitter")
		local particle = obj:FindFirstChild("ParticleEmitter")
		particle.Enabled = false -- client sidedly disable particle emitter
	end)
end

for i=1,1000 do
	spawn(function()
		Fart()
	end)
end
