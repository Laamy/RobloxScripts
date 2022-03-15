-- configuration
local speed = 50

-- services
local ws = game:GetService("Workspace")
local plyrs = game:GetService("Players")
local uis = game:GetService("UserInputService")
local rns = game:GetService("RunService")

-- tables
local connections = {}

-- game variables
local lp = plyrs.LocalPlayer
local chra = lp.Character
local pr = chra.HumanoidRootPart
local cam = ws.CurrentCamera

-- sub player
local splr = {
	isFlying = false,
	movementOrigin = Vector2.new(0, 0) -- { forwards, sidewards } - Movement origin
}

-- functions
function changeVec(vec, a1, a2)
	return vec + Vector3.new(a1, a2)
end

function IsMoving()
	return not (splr.mg.X == 0 and splr.mg.Y == 0)
end

function RecalculateOrigin()
	local output  = Vector3.new(0, 0)
	
	if uis:IsKeyDown(Enum.KeyCode.W) then
		output = changeVec(output, 1, 0)
	end
	if uis:IsKeyDown(Enum.KeyCode.S) then
		output = changeVec(output, -1, 0)
	end
	if uis:IsKeyDown(Enum.KeyCode.A) then
		output = changeVec(output, 0, 1)
	end
	if uis:IsKeyDown(Enum.KeyCode.D) then
		output = changeVec(output, 0, -1)
	end
	
	return output
end

-- code
local connection1 = uis.InputBegan:Connect(function(__i)
    if __i.UserInputType == Enum.UserInputType.Keyboard then
        if __i.KeyCode == Enum.KeyCode.E then
            splr.isFlying = not splr.isFlying
            pr.Anchored = splr.isFlying
        end
    end
end)
table.insert(connections, connection1)

local connection2 = cam:GetPropertyChangedSignal("CFrame"):Connect(function()
    if splr.isFlying then
        pr.CFrame = CFrame.new(pr.CFrame.Position, pr.CFrame.Position + cam.CFrame.LookVector)
    end
end)
table.insert(connections, connection2)

while true do
    local delta = rns.RenderStepped:Wait()
	
	splr.mg = RecalculateOrigin()
	
    if splr.isFlying and IsMoving() then
        if splr.mg.X == 1 then
            pr.CFrame = pr.CFrame + (cam.CFrame.LookVector * (delta * speed))
        end
        if splr.mg.X == -1 then
            pr.CFrame = pr.CFrame + (-cam.CFrame.LookVector * (delta * speed))
        end
        if splr.mg.Y == 1 then
            pr.CFrame = pr.CFrame + (-cam.CFrame.RightVector * (delta * speed))
        end
        if splr.mg.Y == -1 then
            pr.CFrame = pr.CFrame + (cam.CFrame.RightVector * (delta * speed))
        end
    end
end

for i,c in pairs(connections) do
	c:Disconnect()
end
return
