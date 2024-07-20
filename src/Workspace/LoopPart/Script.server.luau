-- for number = 1, 10 do
    
--     -- 'Vector3.new()' means the size of the 3D Part
--     script.Parent.Size = Vector3.new(script.Parent.Size.X + 1, script.Parent.Size.Y, script.Parent.Size.Z)

-- end


-- for i, v in pairs(game:GetService("Players"):GetPlayers()) do
   
--     v.CharacterAdded:Connect(function(char)
--     v.Character:Destroy()
--     end)
-- end

local Debris = game:GetService("Debris")

local partCount = 0

while true do
    
    if partCount >= 400 then
        break
    end

    partCount = partCount +1
    
    local part = Instance.new("Part")
    part.Parent = game.Workspace

    local romdomX = math.random(-200, 200)
    local romdomZ = math.random(-200, 200)
    
    part.Position = Vector3.new(romdomX, 50, romdomZ)
    
    Debris:AddItem(part, 20)

    task.wait(0.1)
end