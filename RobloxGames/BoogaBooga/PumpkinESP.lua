local Pumpkins = game.Workspace.Pumpkins -- should work in void & overworld

local localPlayer=game.Players.LocalPlayer

function highlightModel(objObject)
	local espbox=Instance.new('BoxHandleAdornment',objObject)
	espbox.Adornee = objObject
	espbox.Size = objObject.Size
	espbox.Color3 = Color3.new(1,0,0)
	espbox.Transparency = .5
	espbox.ZIndex = 1
	espbox.AlwaysOnTop=true
end

for _,v in ipairs(Pumpkins:GetChildren()) do
	pcall(function()
		highlightModel(v.Reference)
	end)
end
