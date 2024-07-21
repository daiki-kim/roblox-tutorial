local Players = game:GetService("Players")

local CheckPointsFolder = game.Workspace.CheckPoints

Players.PlayerAdded:Connect(function(player)
    
    local leaderstats = Instance.new("Folder")
    leaderstats.Name = "leaderstats"
    leaderstats.Parent = player

    local Stage = Instance.new("IntValue")
    Stage.Name = "Stage"
    Stage.Parent = leaderstats

    player.CharacterAdded:Connect(function(char)
    
        local checkPoint = CheckPointsFolder:FindFirstChild(Stage.Value)

        player.Character.PrimaryPart.CFrame = checkPoint.CFrame
    end)
end)

for _, v in pairs(CheckPointsFolder:GetChildren()) do
    
    if v:isA("BasePart") then
        v.Touched:Connect(function(part)
            
            local player = Players:GetPlayerFromCharacter(part.Parent)
            local stageValue = player.leaderstats.Stage

            if player and stageValue.Value < tonumber(v.Name) then
                
                stageValue.Value = v.Name
            
            end
        end)
    end
end
