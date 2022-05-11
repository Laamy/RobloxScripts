function cht(i) game.Players:Chat(i) end

for i,v in pairs(workspace:GetDescendants()) do
    if v:IsA("Tool") and v.Name == "BanHammer V1.1" then
        v:FindFirstChild("Handle").Touched:Connect(function(touchedPart)
            local plr = touchedPart.Parent.Parent
            for i,v in pairs(game.Players:GetPlayers()) do
                pcall(function()
                    if touchedPart.Parent:FindFirstChild("Humanoid") then
                        plr = touchedPart.Parent
                    end
                end)
            end
            if plr ~= nil and plr.Name ~= v.Parent.Name and plr.name ~= "Workspace" then
                cht("fling "..plr.Name)
            end
        end)
    end
end
