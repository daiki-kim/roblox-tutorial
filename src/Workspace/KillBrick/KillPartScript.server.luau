local KillBrick = script.Parent -- 'script.Parent' means the Part that the Script is attached to

KillBrick.Touched:Connect(function(touchPart)
    local humanoid = touchPart.Parent:FindFirstChild("Humanoid")
    
    task.wait(math.random(1, 10))

    if humanoid then
        humanoid.Health = 0
    end
end)
