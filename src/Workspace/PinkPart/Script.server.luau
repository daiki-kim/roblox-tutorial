local PinkPart = script.Parent

local Part = Instance.new("Part")
Part.Parent = game.Workspace
Part.Transparency = 0.5
Part.CastShadow = false

task.wait(5)

Part.Anchored = true

-- 'print' is usually used for debugging purposes
print("part anchored")

