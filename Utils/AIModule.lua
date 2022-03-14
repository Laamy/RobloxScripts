local AIModule = {} -- VERY ineffective (Please dont use)

local pf = game:GetService("PathfindingService")
local __endScriptB = false

function AIModule:StopAI()
	__endScriptB = true
end

function AIModule:StartAI(character, part)
	__endScriptB = false
	AIModule:Follow(character, part)
end

function AIModule:Follow(character, part)
	local canContinue = true
	while canContinue == true and not __endScriptB do wait(0.1)
		local path = pf:CreatePath()

		local startp = character.HumanoidRootPart.Position
		local endp = part.Position

		path:ComputeAsync(startp, endp)
		
		for i, wp in pairs(path:GetWaypoints()) do
			local cpos = character.HumanoidRootPart.Position
			spawn(function()
				wait(1)
				local magnitude = (character.HumanoidRootPart.Position - cpos).Magnitude
				--print(magnitude)
				if magnitude < 5 then
					canContinue = false
					AIModule:Follow(character, part)
				elseif magnitude > 24 then
					canContinue = false
				end
			end)
			
			if __endScriptB or not canContinue then
				canContinue = false
				break
			end
			
			character.Humanoid:MoveTo(wp.Position)

			if wp.Action == Enum.PathWaypointAction.Jump then
				character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
			end

			character.Humanoid.MoveToFinished:Wait()
		end
	end
end

return AIModule
