local Pumpkins = workspace.Pumpkins or workspace.pumpkins -- should work in void & overworld (THIS IS MOSTLY UNTESTED CUZ I DONT WANNA GET BANNED BUT STILL WANTED TO MAKE THIS)

function initEspBox(obj)
	local espbox = Instance.new('BoxHandleAdornment',obj)
	espbox.Adornee = obj
	espbox.Size = obj.Size
	espbox.Color3 = Color3.new(1,0,0)
	espbox.Transparency = .5
	espbox.ZIndex = 1
	espbox.AlwaysOnTop=true
end

for _,v in ipairs(Pumpkins:GetChildren()) do
	pcall(function()
		initEspBox(v.Reference)
	end)
end
