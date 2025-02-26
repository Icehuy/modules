local api = { shit_folder = Instance.new("Folder", workspace); maths = {}; functions = {} }
api.localplayer = game:GetService("Players").LocalPlayer


api.functions.create_circle = function(name, pos, radius) -- гарбаге ес
    if api.shit_folder and api.shit_folder:FindFirstChild(name) then 
        return 
    end
    if not api.localplayer then return end 

    local circle = Instance.new("Part", api.shit_folder)
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

api.functions.delete_circle = function(name)
    local folder = api.shit_folder 
    if not folder then return end 
    for i,v in pairs(folder:GetChildren()) do 
        if v.Name == name then 
            v:Destroy()
        end
    end
end

api.functions.clear_folder = function()
    local folder = api.shit_folder 
    if not folder then return end 
    for i,v in pairs(folder:GetChildren()) do 
        v:Destroy()
    end
end


return api -- late
