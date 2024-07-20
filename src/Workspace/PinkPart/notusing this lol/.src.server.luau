--disable
function Add10(x)
    local y = x + 10
    print(y)
    return y
end

local number = Add10(2)

local Part = script.Parent
if Part.Anchored == true then
    Part.Color = Color3.fromRGB(255, 0, 0)
elseif Part.Anchored == false then
    print("Part is not anchored")
end

if Part.BrickColor == BrickColor.new("Medium stone grey") then
    print("This is a grey part")
elseif Part.BrickColor == BrickColor.new("Really red") then
    print("This is a red part")
else
    print("This is not a red or grey part")
end