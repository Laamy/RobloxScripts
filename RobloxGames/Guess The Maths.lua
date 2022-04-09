--//     Services     //--
local ws = game:GetService("Workspace")
local rs = game:GetService("ReplicatedStorage")

--//     Functions     //--
function SubmitAnswer(value)
	rs.Events.SubmitAnswer:FireServer(value)
end

--//     Code     //--
for i,v in ipairs(ws.Doors:GetDescendants()) do
	if v:FindFirstChild("Answers") then
		SubmitAnswer(v.Answers:FindFirstChild("Answer").value)
	end
end
