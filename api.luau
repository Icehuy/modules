local api = {maths = {}; functions = {} }
api.localplayer = game:GetService("Players").LocalPlayer


api.functions.create_circle = function(name, pos, radius, shitstorage) -- гарбаге ес
    if not api.localplayer then return end 

    local circle = Instance.new("Part", shitstorage)
    circle.Name = name
    circle.Size = Vector3.new(0, radius, radius)
    circle.Shape = 'Cylinder'
    circle.Massless = true
    circle.Position = pos
    circle.CanCollide = false
    circle.CastShadow = false
    circle.Transparency = 1
    circle.Orientation = Vector3.new(0, 0, -90)
    
    local decal = Instance.new("Decal", circle)
    decal.Texture = 'http://www.roblox.com/asset/?id=16492281043'
    decal.Face = 'Right'
    
    
    local wld = Instance.new("Weld", api.localplayer.Character.HumanoidRootPart)
    wld.Part0 = wld.Parent
    wld.Part1 = circle
    wld.C0 = CFrame.Angles(0,0,1.6)
    
end

return api -- later
