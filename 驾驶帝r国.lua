-- ts file was generated at discord.gg/25ms

money = 0

warn('Anti afk running')
game:GetService('Players').LocalPlayer.Idled:connect(function()
    warn('Anti afk ran')
    game:GetService('VirtualUser'):CaptureController()
    game:GetService('VirtualUser'):ClickButton2(Vector2.new())
end)

local function vu5(p1)
    if p1 ~= nil then
        local v2 = game.Players.LocalPlayer.Character
        local v3 = v2.Humanoid.SeatPart.Parent
        local v4 = RaycastParams.new()

        v4.FilterDescendantsInstances = {
            v2,
            v2,
            p1.Parent,
            v3,
            workspace.Camera,
        }
        v4.FilterType = Enum.RaycastFilterType.Exclude
        v4.IgnoreWater = true
        part = workspace:Raycast(p1.Position + Vector3.new(0, 50, 0), Vector3.new(0, -100, 0), v4).Instance.Position.Y + 5 or p1.Position.Y
    end

    return part
end

if getrawmetatable == nil then
    warn('Executor does not support some stuff')
else
    local v6 = getrawmetatable(game)

    setreadonly(v6, false)

    local vu7 = v6.__namecall

    v6.__namecall = newcclosure(function(p8, ...)
        local v9 = getnamecallmethod()
        local v10 = {...}

        if v9 == 'FireServer' and p8.Name == 'RaceStartTimeTrial' then
            getfenv().args = ...
        elseif v9 == 'FireServer' and p8.Name == 'RaceQueue' then
            if v10[3] ~= 'Leave' then
                if v10[3] == 'Join' then
                    getfenv().args1 = false
                    getfenv().args3 = ...
                end
            else
                getfenv().args1 = true
            end
        elseif v9 == 'FireServer' and (p8.Name == 'Teleport' and string.find(tostring(v10[6]), 'Teleport To Last Race')) then
            getfenv().args2 = ...
        end

        return vu7(p8, ...)
    end)
end

local v11 = loadstring(game:HttpGet("https://pastebin.com/raw/tAfx6nem"))()


local v12 = v11:CreateWindow({
    text = '驾驶帝国',
})

v12:AddBox('车辆驾驶速度', function(p13, p14)
    if p14 then
        getfenv().speed = tonumber(p13.Text)
    end
end)
v12:AddToggle('自动刷钱[平滑移动]', function(p15)
    _G.testers = p15 and true or false

    local vu16 = game:GetService('Players').LocalPlayer.leaderstats.Cash.Value

    if _G.testers ~= true or getfenv().run1 ~= nil then
        if _G.testers == false then
            getfenv().run1:Disconnect()

            getfenv().run1 = nil
        end
    else
        getfenv().run1 = game:GetService('Players').LocalPlayer.leaderstats.Cash:GetPropertyChangedSignal('Value'):Connect(function()
            money = money + game:GetService('Players').LocalPlayer.leaderstats.Cash.Value - vu16
            moneystat.Text = 'Money Earned: $' .. money
            vu16 = game:GetService('Players').LocalPlayer.leaderstats.Cash.Value
        end)
    end

    while _G.testers do
        task.wait()

        local vu17 = game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent
        local vu18 = vu17

        vu17.PrimaryPart = vu17.Weight
        vu18.PrimaryPart.Velocity = Vector3.new(0, 0, 0)

        vu17:PivotTo(CFrame.new(7070.45752, 67.1893463, -3611.52612, -0.54669404, -0.000947717752, 0.837331891, 0.0000972345515, 0.999999285, 0.00119531411, -0.837332428, 0.000734888657, -0.546693563))

        local _ = getfenv().speed

        getfenv().location = Vector3.new(5045.46582, 67.2066345, -2130.47485)

        local vu19 = getfenv().speed or 500
        local v20 = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - getfenv().location).magnitude
        local v21 = game:GetService('TweenService')
        local v22 = TweenInfo.new(v20 / vu19, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0)
        local vu23 = Instance.new('CFrameValue')

        vu23.Value = vu18:GetPrimaryPartCFrame()

        vu23.Changed:Connect(function()
            vu18:PivotTo(vu23.Value)

            vu18.PrimaryPart.AssemblyLinearVelocity = vu17.PrimaryPart.CFrame.LookVector * vu19
            vu18.PrimaryPart.AssemblyLinearVelocity = Vector3.new(vu18.PrimaryPart.Velocity.X, 0, vu18.PrimaryPart.Velocity.Z)
        end)

        getfenv().tween = v21:Create(vu23, v22, {
            Value = CFrame.new(5045.46582, 67.2066345, -2130.47485, -0.452984422, 0.0000170447438, 0.891518414, -0.000357317331, 0.99999994, -0.000200673283, -0.891518354, -0.000409456872, -0.452984363),
        })

        getfenv().tween:Play()
        getfenv().tween.Completed:Wait()

        getfenv().location = Vector3.new(2387.7470703125, 67.17958068847656, -1045.3726806640625)

        local v24 = getfenv().speed

        if v24 then
            vu19 = v24
        else
            vu19 = 500
        end

        local v25 = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - getfenv().location).magnitude
        local v26 = game:GetService('TweenService')
        local v27 = TweenInfo.new(v25 / vu19, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0)
        local vu28 = Instance.new('CFrameValue')

        vu28.Value = vu18:GetPrimaryPartCFrame()

        vu28.Changed:Connect(function()
            vu18:PivotTo(vu28.Value)

            vu18.PrimaryPart.AssemblyLinearVelocity = vu17.PrimaryPart.CFrame.LookVector * vu19
            vu18.PrimaryPart.AssemblyLinearVelocity = Vector3.new(vu18.PrimaryPart.Velocity.X, 0, vu18.PrimaryPart.Velocity.Z)
        end)

        getfenv().tween = v26:Create(vu28, v27, {
            Value = CFrame.new(Vector3.new(2387.7470703125, 67.17958068847656, -1045.3726806640625), Vector3.new(-12.801154136657715, 67.2125244140625, 142.8090362548828)),
        })

        getfenv().tween:Play()
        getfenv().tween.Completed:Wait()

        getfenv().location = Vector3.new(-12.801154136657715, 67.2125244140625, 142.8090362548828)

        local v29 = getfenv().speed

        if v29 then
            vu19 = v29
        else
            vu19 = 500
        end

        local v30 = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - getfenv().location).magnitude
        local v31 = game:GetService('TweenService')
        local v32 = TweenInfo.new(v30 / vu19, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0)
        local vu33 = Instance.new('CFrameValue')

        vu33.Value = vu18:GetPrimaryPartCFrame()

        vu33.Changed:Connect(function()
            vu18:PivotTo(vu33.Value)

            vu18.PrimaryPart.AssemblyLinearVelocity = vu17.PrimaryPart.CFrame.LookVector * vu19
            vu18.PrimaryPart.AssemblyLinearVelocity = Vector3.new(vu18.PrimaryPart.Velocity.X, 0, vu18.PrimaryPart.Velocity.Z)
        end)

        getfenv().tween = v31:Create(vu33, v32, {
            Value = CFrame.new(62.4249001, 67.1923523, 128.437637, -0.442196488, -0.00112122623, 0.896917522, 0.000648372399, 0.999998569, 0.00156974583, -0.896917999, 0.00127567269, -0.442195117),
        })

        getfenv().tween:Play()
        getfenv().tween.Completed:Wait()
    end
end)
v12:AddToggle('自动刷钱[速度驱动]', function(p34)
    _G.testers = p34 and true or false

    spawn(function()
        local _ = getfenv().location

        while _G.testers do
            task.wait()

            local v35 = game.Players.LocalPlayer.Character
            local v36 = v35.Humanoid.SeatPart.Parent
            local v37 = RaycastParams.new()

            v37.FilterDescendantsInstances = {
                v35,
                v35,
                v36,
                workspace.Camera,
            }
            v37.FilterType = Enum.RaycastFilterType.Exclude
            v37.IgnoreWater = true

            local v38 = workspace:Raycast(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, Vector3.new(0, 50, 0), v37).Instance or nil
            local v39 = workspace:Raycast(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, Vector3.new(0, -50, 0), v37).Instance or nil

            if game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y < 10 or v38 ~= nil and string.find(tostring(v38), 'Road') or v39 ~= nil and not string.find(tostring(v39), 'Road') then
                getfenv().reset = true

                local v40 = game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent

                v40.PrimaryPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)

                v40:PivotTo(CFrame.new(getfenv().location))
                wait(1)
            end
        end
    end)

    local vu41 = game:GetService('Players').LocalPlayer.leaderstats.Cash.Value

    if _G.testers ~= true or getfenv().run1 ~= nil then
        if _G.testers == false then
            getfenv().run1:Disconnect()

            getfenv().run1 = nil
        end
    else
        getfenv().run1 = game:GetService('Players').LocalPlayer.leaderstats.Cash:GetPropertyChangedSignal('Value'):Connect(function()
            money = money + game:GetService('Players').LocalPlayer.leaderstats.Cash.Value - vu41
            moneystat.Text = 'Money Earned: $' .. money
            vu41 = game:GetService('Players').LocalPlayer.leaderstats.Cash.Value
        end)
    end
    if not _G.testers then
        return
    end

    task.wait()

    getfenv().reset = false

    local v42 = game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent

    v42.PrimaryPart = v42.Weight

    v42:PivotTo(CFrame.new(Vector3.new(-100.07780456542969, 15.585329055786133, -1618.3812255859375), Vector3.new(-32.031883239746094, 24.379409790039063, -1091.4705810546875)))

    local _ = getfenv().speed

    getfenv().location = Vector3.new(11.930032730102539, 24.91741180419922, -732.8578491210938)

    if _G.testers == true and getfenv().reset == false then
        while true do
            task.wait()

            local v43 = getfenv().speed or 500

            if getfenv().reset == false then
                v42.PrimaryPart.AssemblyLinearVelocity = Vector3.new(v42.PrimaryPart.AssemblyLinearVelocity.X, -10, v42.PrimaryPart.AssemblyLinearVelocity.Z)
                v42.PrimaryPart.AssemblyLinearVelocity = v42.PrimaryPart.CFrame.LookVector * v43
                v42.PrimaryPart.AssemblyLinearVelocity = Vector3.new(v42.PrimaryPart.AssemblyLinearVelocity.X, -10, v42.PrimaryPart.AssemblyLinearVelocity.Z)

                v42:PivotTo(CFrame.new(v42.PrimaryPart.Position, location))

                v42.PrimaryPart.AssemblyLinearVelocity = Vector3.new(v42.PrimaryPart.AssemblyLinearVelocity.X, -10, v42.PrimaryPart.AssemblyLinearVelocity.Z)
            end
            if game.Players.LocalPlayer:DistanceFromCharacter(location) < 50 or (_G.testers == false or getfenv().reset == true) then
            end
        end
    end

    getfenv().location = Vector3.new(79.72480773925781, 34.419010162353516, -59.68326950073242)

    if _G.testers == true and getfenv().reset == false then
        while true do
            task.wait()

            local v44 = getfenv().speed or 500

            if getfenv().reset == false then
                v42.PrimaryPart.AssemblyLinearVelocity = Vector3.new(v42.PrimaryPart.AssemblyLinearVelocity.X, -10, v42.PrimaryPart.AssemblyLinearVelocity.Z)
                v42.PrimaryPart.AssemblyLinearVelocity = v42.PrimaryPart.CFrame.LookVector * v44
                v42.PrimaryPart.AssemblyLinearVelocity = Vector3.new(v42.PrimaryPart.AssemblyLinearVelocity.X, -10, v42.PrimaryPart.AssemblyLinearVelocity.Z)

                v42:PivotTo(CFrame.new(v42.PrimaryPart.Position, location))

                v42.PrimaryPart.AssemblyLinearVelocity = Vector3.new(v42.PrimaryPart.AssemblyLinearVelocity.X, -10, v42.PrimaryPart.AssemblyLinearVelocity.Z)
            end
            if game.Players.LocalPlayer:DistanceFromCharacter(location) < 50 or (_G.testers == false or getfenv().reset == true) then
            end
        end
    end

    getfenv().location = Vector3.new(80.43889617919922, 34.45082092285156, 474.7792663574219)

    if _G.testers == true and getfenv().reset == false then
        while true do
            task.wait()

            local v45 = getfenv().speed or 500

            if getfenv().reset == false then
                v42.PrimaryPart.AssemblyLinearVelocity = Vector3.new(v42.PrimaryPart.AssemblyLinearVelocity.X, -10, v42.PrimaryPart.AssemblyLinearVelocity.Z)
                v42.PrimaryPart.AssemblyLinearVelocity = v42.PrimaryPart.CFrame.LookVector * v45
                v42.PrimaryPart.AssemblyLinearVelocity = Vector3.new(v42.PrimaryPart.AssemblyLinearVelocity.X, -10, v42.PrimaryPart.AssemblyLinearVelocity.Z)

                v42:PivotTo(CFrame.new(v42.PrimaryPart.Position, location))

                v42.PrimaryPart.AssemblyLinearVelocity = Vector3.new(v42.PrimaryPart.AssemblyLinearVelocity.X, -10, v42.PrimaryPart.AssemblyLinearVelocity.Z)
            end
            if game.Players.LocalPlayer:DistanceFromCharacter(location) < 50 or (_G.testers == false or getfenv().reset == true) then
            end
        end
    end

    getfenv().location = Vector3.new(53.504276275634766, 34.399757385253906, 1525.7982177734375)

    if _G.testers == true and getfenv().reset == false then
        while true do
            task.wait()

            local v46 = getfenv().speed or 500

            if getfenv().reset == false then
                v42.PrimaryPart.AssemblyLinearVelocity = Vector3.new(v42.PrimaryPart.AssemblyLinearVelocity.X, -10, v42.PrimaryPart.AssemblyLinearVelocity.Z)
                v42.PrimaryPart.AssemblyLinearVelocity = v42.PrimaryPart.CFrame.LookVector * v46
                v42.PrimaryPart.AssemblyLinearVelocity = Vector3.new(v42.PrimaryPart.AssemblyLinearVelocity.X, -10, v42.PrimaryPart.AssemblyLinearVelocity.Z)

                v42:PivotTo(CFrame.new(v42.PrimaryPart.Position, location))

                v42.PrimaryPart.AssemblyLinearVelocity = Vector3.new(v42.PrimaryPart.AssemblyLinearVelocity.X, -10, v42.PrimaryPart.AssemblyLinearVelocity.Z)
            end
            if game.Players.LocalPlayer:DistanceFromCharacter(location) < 50 or (_G.testers == false or getfenv().reset == true) then
            end
        end
    end

    getfenv().location = Vector3.new(-112.53301239013672, 28.197858810424805, 2313.957763671875)

    if _G.testers == true and getfenv().reset == false then
        while true do
            task.wait()

            local v47 = getfenv().speed or 500

            if getfenv().reset == false then
                v42.PrimaryPart.AssemblyLinearVelocity = Vector3.new(v42.PrimaryPart.AssemblyLinearVelocity.X, -10, v42.PrimaryPart.AssemblyLinearVelocity.Z)
                v42.PrimaryPart.AssemblyLinearVelocity = v42.PrimaryPart.CFrame.LookVector * v47
                v42.PrimaryPart.AssemblyLinearVelocity = Vector3.new(v42.PrimaryPart.AssemblyLinearVelocity.X, -10, v42.PrimaryPart.AssemblyLinearVelocity.Z)

                v42:PivotTo(CFrame.new(v42.PrimaryPart.Position, location))

                v42.PrimaryPart.AssemblyLinearVelocity = Vector3.new(v42.PrimaryPart.AssemblyLinearVelocity.X, -10, v42.PrimaryPart.AssemblyLinearVelocity.Z)
            end
            if game.Players.LocalPlayer:DistanceFromCharacter(location) < 50 or (_G.testers == false or getfenv().reset == true) then
            end
        end
    end

    getfenv().location = Vector3.new(-262.3653259277344, 13.525763511657715, 3027.66650390625)

    if _G.testers == true and getfenv().reset == false then
        while true do
            task.wait()

            local v48 = getfenv().speed or 500

            if getfenv().reset == false then
                v42.PrimaryPart.AssemblyLinearVelocity = Vector3.new(v42.PrimaryPart.AssemblyLinearVelocity.X, -10, v42.PrimaryPart.AssemblyLinearVelocity.Z)
                v42.PrimaryPart.AssemblyLinearVelocity = v42.PrimaryPart.CFrame.LookVector * v48
                v42.PrimaryPart.AssemblyLinearVelocity = Vector3.new(v42.PrimaryPart.AssemblyLinearVelocity.X, -10, v42.PrimaryPart.AssemblyLinearVelocity.Z)

                v42:PivotTo(CFrame.new(v42.PrimaryPart.Position, location))

                v42.PrimaryPart.AssemblyLinearVelocity = Vector3.new(v42.PrimaryPart.AssemblyLinearVelocity.X, -10, v42.PrimaryPart.AssemblyLinearVelocity.Z)
            end
            if game.Players.LocalPlayer:DistanceFromCharacter(location) < 50 or (_G.testers == false or getfenv().reset == true) then
            end
        end
    end

    getfenv().location = Vector3.new(-452.8047790527344, 13.539205551147461, 3937.51953125)

    if _G.testers == true and getfenv().reset == false then
        while true do
            task.wait()

            local v49 = getfenv().speed or 500

            if getfenv().reset == false then
                v42.PrimaryPart.AssemblyLinearVelocity = Vector3.new(v42.PrimaryPart.AssemblyLinearVelocity.X, -10, v42.PrimaryPart.AssemblyLinearVelocity.Z)
                v42.PrimaryPart.AssemblyLinearVelocity = v42.PrimaryPart.CFrame.LookVector * v49
                v42.PrimaryPart.AssemblyLinearVelocity = Vector3.new(v42.PrimaryPart.AssemblyLinearVelocity.X, -10, v42.PrimaryPart.AssemblyLinearVelocity.Z)

                v42:PivotTo(CFrame.new(v42.PrimaryPart.Position, location))

                v42.PrimaryPart.AssemblyLinearVelocity = Vector3.new(v42.PrimaryPart.AssemblyLinearVelocity.X, -10, v42.PrimaryPart.AssemblyLinearVelocity.Z)
            end
            if game.Players.LocalPlayer:DistanceFromCharacter(location) < 50 or (_G.testers == false or getfenv().reset == true) then
            end
        end
    end

    getfenv().location = Vector3.new(-671.54150390625, 13.537410736083984, 4993.31591796875)

    if _G.testers ~= true or getfenv().reset ~= false then
    end

    task.wait()

    local v50 = getfenv().speed or 500

    if getfenv().reset == false then
        v42.PrimaryPart.AssemblyLinearVelocity = Vector3.new(v42.PrimaryPart.AssemblyLinearVelocity.X, -10, v42.PrimaryPart.AssemblyLinearVelocity.Z)
        v42.PrimaryPart.AssemblyLinearVelocity = v42.PrimaryPart.CFrame.LookVector * v50
        v42.PrimaryPart.AssemblyLinearVelocity = Vector3.new(v42.PrimaryPart.AssemblyLinearVelocity.X, -10, v42.PrimaryPart.AssemblyLinearVelocity.Z)

        v42:PivotTo(CFrame.new(v42.PrimaryPart.Position, location))

        v42.PrimaryPart.AssemblyLinearVelocity = Vector3.new(v42.PrimaryPart.AssemblyLinearVelocity.X, -10, v42.PrimaryPart.AssemblyLinearVelocity.Z)
    end
    if game.Players.LocalPlayer:DistanceFromCharacter(location) < 50 or (_G.testers == false or getfenv().reset == true) then
    else
    end

    local v51 = game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent
    local v52, v53, v54 = pairs(v51:GetDescendants())

    while true do
        local v55

        v54, v55 = v52(v53, v54)

        if v54 == nil then
            break
        end
        if v55:IsA('BasePart') then
            v55.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
        end
    end

    getfenv().location = Vector3.new(-452.8047790527344, 13.539205551147461, 3937.51953125)

    if _G.testers == true and getfenv().reset == false then
        while true do
            task.wait()

            local v56 = getfenv().speed or 500

            if getfenv().reset == false then
                v51.PrimaryPart.AssemblyLinearVelocity = Vector3.new(v51.PrimaryPart.AssemblyLinearVelocity.X, -10, v51.PrimaryPart.AssemblyLinearVelocity.Z)
                v51.PrimaryPart.AssemblyLinearVelocity = v51.PrimaryPart.CFrame.LookVector * v56
                v51.PrimaryPart.AssemblyLinearVelocity = Vector3.new(v51.PrimaryPart.AssemblyLinearVelocity.X, -10, v51.PrimaryPart.AssemblyLinearVelocity.Z)

                v51:PivotTo(CFrame.new(v51.PrimaryPart.Position, location))

                v51.PrimaryPart.AssemblyLinearVelocity = Vector3.new(v51.PrimaryPart.AssemblyLinearVelocity.X, -10, v51.PrimaryPart.AssemblyLinearVelocity.Z)
            end
            if game.Players.LocalPlayer:DistanceFromCharacter(location) < 50 or (_G.testers == false or getfenv().reset == true) then
            end
        end
    end

    getfenv().location = Vector3.new(-262.3653259277344, 13.525763511657715, 3027.66650390625)

    if _G.testers == true and getfenv().reset == false then
        while true do
            task.wait()

            local v57 = getfenv().speed or 500

            if getfenv().reset == false then
                v51.PrimaryPart.AssemblyLinearVelocity = Vector3.new(v51.PrimaryPart.AssemblyLinearVelocity.X, -10, v51.PrimaryPart.AssemblyLinearVelocity.Z)
                v51.PrimaryPart.AssemblyLinearVelocity = v51.PrimaryPart.CFrame.LookVector * v57
                v51.PrimaryPart.AssemblyLinearVelocity = Vector3.new(v51.PrimaryPart.AssemblyLinearVelocity.X, -10, v51.PrimaryPart.AssemblyLinearVelocity.Z)

                v51:PivotTo(CFrame.new(v51.PrimaryPart.Position, location))

                v51.PrimaryPart.AssemblyLinearVelocity = Vector3.new(v51.PrimaryPart.AssemblyLinearVelocity.X, -10, v51.PrimaryPart.AssemblyLinearVelocity.Z)
            end
            if game.Players.LocalPlayer:DistanceFromCharacter(location) < 50 or (_G.testers == false or getfenv().reset == true) then
            end
        end
    end

    getfenv().location = Vector3.new(-112.53301239013672, 28.197858810424805, 2313.957763671875)

    if _G.testers == true and getfenv().reset == false then
        while true do
            task.wait()

            local v58 = getfenv().speed or 500

            if getfenv().reset == false then
                v51.PrimaryPart.AssemblyLinearVelocity = Vector3.new(v51.PrimaryPart.AssemblyLinearVelocity.X, -10, v51.PrimaryPart.AssemblyLinearVelocity.Z)
                v51.PrimaryPart.AssemblyLinearVelocity = v51.PrimaryPart.CFrame.LookVector * v58
                v51.PrimaryPart.AssemblyLinearVelocity = Vector3.new(v51.PrimaryPart.AssemblyLinearVelocity.X, -10, v51.PrimaryPart.AssemblyLinearVelocity.Z)

                v51:PivotTo(CFrame.new(v51.PrimaryPart.Position, location))

                v51.PrimaryPart.AssemblyLinearVelocity = Vector3.new(v51.PrimaryPart.AssemblyLinearVelocity.X, -10, v51.PrimaryPart.AssemblyLinearVelocity.Z)
            end
            if game.Players.LocalPlayer:DistanceFromCharacter(location) < 50 or (_G.testers == false or getfenv().reset == true) then
            end
        end
    end

    getfenv().location = Vector3.new(53.504276275634766, 34.399757385253906, 1525.7982177734375)

    if _G.testers == true and getfenv().reset == false then
        while true do
            task.wait()

            local v59 = getfenv().speed or 500

            if getfenv().reset == false then
                v51.PrimaryPart.AssemblyLinearVelocity = Vector3.new(v51.PrimaryPart.AssemblyLinearVelocity.X, -10, v51.PrimaryPart.AssemblyLinearVelocity.Z)
                v51.PrimaryPart.AssemblyLinearVelocity = v51.PrimaryPart.CFrame.LookVector * v59
                v51.PrimaryPart.AssemblyLinearVelocity = Vector3.new(v51.PrimaryPart.AssemblyLinearVelocity.X, -10, v51.PrimaryPart.AssemblyLinearVelocity.Z)

                v51:PivotTo(CFrame.new(v51.PrimaryPart.Position, location))

                v51.PrimaryPart.AssemblyLinearVelocity = Vector3.new(v51.PrimaryPart.AssemblyLinearVelocity.X, -10, v51.PrimaryPart.AssemblyLinearVelocity.Z)
            end
            if game.Players.LocalPlayer:DistanceFromCharacter(location) < 50 or (_G.testers == false or getfenv().reset == true) then
            end
        end
    end

    getfenv().location = Vector3.new(80.43889617919922, 34.45082092285156, 474.7792663574219)

    if _G.testers == true and getfenv().reset == false then
        while true do
            task.wait()

            local v60 = getfenv().speed or 500

            if getfenv().reset == false then
                v51.PrimaryPart.AssemblyLinearVelocity = Vector3.new(v51.PrimaryPart.AssemblyLinearVelocity.X, -10, v51.PrimaryPart.AssemblyLinearVelocity.Z)
                v51.PrimaryPart.AssemblyLinearVelocity = v51.PrimaryPart.CFrame.LookVector * v60
                v51.PrimaryPart.AssemblyLinearVelocity = Vector3.new(v51.PrimaryPart.AssemblyLinearVelocity.X, -10, v51.PrimaryPart.AssemblyLinearVelocity.Z)

                v51:PivotTo(CFrame.new(v51.PrimaryPart.Position, location))

                v51.PrimaryPart.AssemblyLinearVelocity = Vector3.new(v51.PrimaryPart.AssemblyLinearVelocity.X, -10, v51.PrimaryPart.AssemblyLinearVelocity.Z)
            end
            if game.Players.LocalPlayer:DistanceFromCharacter(location) < 50 or (_G.testers == false or getfenv().reset == true) then
            end
        end
    end

    getfenv().location = Vector3.new(79.72480773925781, 34.419010162353516, -59.68326950073242)

    if _G.testers == true and getfenv().reset == false then
        while true do
            task.wait()

            local v61 = getfenv().speed or 500

            if getfenv().reset == false then
                v51.PrimaryPart.AssemblyLinearVelocity = Vector3.new(v51.PrimaryPart.AssemblyLinearVelocity.X, -10, v51.PrimaryPart.AssemblyLinearVelocity.Z)
                v51.PrimaryPart.AssemblyLinearVelocity = v51.PrimaryPart.CFrame.LookVector * v61
                v51.PrimaryPart.AssemblyLinearVelocity = Vector3.new(v51.PrimaryPart.AssemblyLinearVelocity.X, -10, v51.PrimaryPart.AssemblyLinearVelocity.Z)

                v51:PivotTo(CFrame.new(v51.PrimaryPart.Position, location))

                v51.PrimaryPart.AssemblyLinearVelocity = Vector3.new(v51.PrimaryPart.AssemblyLinearVelocity.X, -10, v51.PrimaryPart.AssemblyLinearVelocity.Z)
            end
            if game.Players.LocalPlayer:DistanceFromCharacter(location) < 50 or (_G.testers == false or getfenv().reset == true) then
            end
        end
    end

    getfenv().location = Vector3.new(11.930032730102539, 24.91741180419922, -732.8578491210938)

    if _G.testers == true and getfenv().reset == false then
        task.wait()

        local v62 = getfenv().speed or 500

        if getfenv().reset == false then
            v51.PrimaryPart.AssemblyLinearVelocity = Vector3.new(v51.PrimaryPart.AssemblyLinearVelocity.X, -10, v51.PrimaryPart.AssemblyLinearVelocity.Z)
            v51.PrimaryPart.AssemblyLinearVelocity = v51.PrimaryPart.CFrame.LookVector * v62
            v51.PrimaryPart.AssemblyLinearVelocity = Vector3.new(v51.PrimaryPart.AssemblyLinearVelocity.X, -10, v51.PrimaryPart.AssemblyLinearVelocity.Z)

            v51:PivotTo(CFrame.new(v51.PrimaryPart.Position, location))

            v51.PrimaryPart.AssemblyLinearVelocity = Vector3.new(v51.PrimaryPart.AssemblyLinearVelocity.X, -10, v51.PrimaryPart.AssemblyLinearVelocity.Z)
        end
        if game.Players.LocalPlayer:DistanceFromCharacter(location) >= 50 and (_G.testers ~= false and getfenv().reset ~= true) then
            
        end
    end
end)
v12:AddToggle('自动刷钱[常规模式]', function(p63)
    _G.testers2 = p63 and true or false

    local vu64 = game:GetService('Players').LocalPlayer.leaderstats.Cash.Value

    if _G.testers2 ~= true or getfenv().run1 ~= nil then
        if _G.testers2 == false then
            getfenv().run1:Disconnect()

            getfenv().run1 = nil
        end
    else
        getfenv().run1 = game:GetService('Players').LocalPlayer.leaderstats.Cash:GetPropertyChangedSignal('Value'):Connect(function()
            money = money + game:GetService('Players').LocalPlayer.leaderstats.Cash.Value - vu64
            moneystat.Text = 'Money Earned: $' .. money
            vu64 = game:GetService('Players').LocalPlayer.leaderstats.Cash.Value
        end)
    end

    while _G.testers2 do
        task.wait()

        local v65 = game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent

        v65.PrimaryPart = v65.Weight

        v65:PivotTo(CFrame.new(Vector3.new(-100.07780456542969, 15.585329055786133, -1618.3812255859375), Vector3.new(-32.031883239746094, 24.379409790039063, -1091.4705810546875)))
        Vector3.new(-32.031883239746094, 24.379409790039063, -1091.4705810546875)

        local v66 = Vector3.new(11.930032730102539, 24.91741180419922, -732.8578491210938)

        repeat
            task.wait()
            game:GetService('VirtualInputManager'):SendKeyEvent(true, 'W', false, game)
            v65:PivotTo(CFrame.new(v65.PrimaryPart.Position, v66))
        until game.Players.LocalPlayer:DistanceFromCharacter(v66) < 50

        local v67 = Vector3.new(79.72480773925781, 34.419010162353516, -59.68326950073242)

        repeat
            task.wait()
            game:GetService('VirtualInputManager'):SendKeyEvent(true, 'W', false, game)
            v65:PivotTo(CFrame.new(v65.PrimaryPart.Position, v67))
        until game.Players.LocalPlayer:DistanceFromCharacter(v67) < 50

        local v68 = Vector3.new(80.43889617919922, 34.45082092285156, 474.7792663574219)

        repeat
            task.wait()
            game:GetService('VirtualInputManager'):SendKeyEvent(true, 'W', false, game)
            v65:PivotTo(CFrame.new(v65.PrimaryPart.Position, v68))
        until game.Players.LocalPlayer:DistanceFromCharacter(v68) < 50

        local v69 = Vector3.new(53.504276275634766, 34.399757385253906, 1525.7982177734375)

        repeat
            task.wait()
            game:GetService('VirtualInputManager'):SendKeyEvent(true, 'W', false, game)
            v65:PivotTo(CFrame.new(v65.PrimaryPart.Position, v69))
        until game.Players.LocalPlayer:DistanceFromCharacter(v69) < 50

        local v70 = Vector3.new(-112.53301239013672, 28.197858810424805, 2313.957763671875)

        repeat
            task.wait()
            game:GetService('VirtualInputManager'):SendKeyEvent(true, 'W', false, game)
            v65:PivotTo(CFrame.new(v65.PrimaryPart.Position, v70))
        until game.Players.LocalPlayer:DistanceFromCharacter(v70) < 50

        local v71 = Vector3.new(-262.3653259277344, 13.525763511657715, 3027.66650390625)

        repeat
            task.wait()
            game:GetService('VirtualInputManager'):SendKeyEvent(true, 'W', false, game)
            v65:PivotTo(CFrame.new(v65.PrimaryPart.Position, v71))
        until game.Players.LocalPlayer:DistanceFromCharacter(v71) < 50

        local v72 = Vector3.new(-452.8047790527344, 13.539205551147461, 3937.51953125)

        repeat
            task.wait()
            game:GetService('VirtualInputManager'):SendKeyEvent(true, 'W', false, game)
            v65:PivotTo(CFrame.new(v65.PrimaryPart.Position, v72))
        until game.Players.LocalPlayer:DistanceFromCharacter(v72) < 50

        local v73 = Vector3.new(-671.54150390625, 13.537410736083984, 4993.31591796875)

        repeat
            task.wait()
            game:GetService('VirtualInputManager'):SendKeyEvent(true, 'W', false, game)
            v65:PivotTo(CFrame.new(v65.PrimaryPart.Position, v73))
        until game.Players.LocalPlayer:DistanceFromCharacter(v73) < 50
    end
end)
v12:AddToggle('自动刷钱[直升机模式]', function(p74)
    getfenv().helifarm = p74 and true or false
    if getfenv().helifarm then
        local v75 = game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent
        v75.PrimaryPart = v75.Weight
        v75.PrimaryPart.AssemblyLinearVelocity = v75.PrimaryPart.CFrame.UpVector * 1000
        local _ = game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent
        wait(3)
    end
    local vu76 = game:GetService('Players').LocalPlayer.leaderstats.Cash.Value
    if getfenv().helifarm ~= true or getfenv().run1 ~= nil then
        if getfenv().helifarm == false then
            getfenv().run1:Disconnect()
            getfenv().run1 = nil
        end
    else
        getfenv().run1 = game:GetService('Players').LocalPlayer.leaderstats.Cash:GetPropertyChangedSignal('Value'):Connect(function()
            money = money + game:GetService('Players').LocalPlayer.leaderstats.Cash.Value - vu76
            moneystat.Text = 'Money Earned: $' .. money
            vu76 = game:GetService('Players').LocalPlayer.leaderstats.Cash.Value
        end)
    end
    while getfenv().helifarm do
        wait()
        local v88, v89 = pcall(function()
            local v77 = game.Players.LocalPlayer.Character
            if v77.Humanoid.SeatPart ~= nil then
                getfenv().vid = v77.Humanoid.SeatPart.Parent:GetAttribute('VehicleId')
            end
            if game.Players.LocalPlayer.Character.Humanoid.SeatPart == nil then
                game.Players.LocalPlayer.Character:PivotTo(workspace.PersistentRaceSpawns.PersistentSpawnCrossCountry.WorldPivot * CFrame.new(-50, 10, 50))
                wait(0.5)
                game:GetService('ReplicatedStorage').Remotes.VehicleEvent:FireServer('Spawn', getfenv().vid)
                local v78 = tick()
                repeat
                    task.wait()
                until game.Players.LocalPlayer.Character.Humanoid.SeatPart ~= nil or tick() - v78 >= 5
                game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent:PivotTo(workspace.PersistentRaceSpawns.PersistentSpawnCrossCountry.WorldPivot * CFrame.new(-50, 500, 50))
                print('Succesfully Respawned:', getfenv().vid)
            end
            game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent._network:FireServer('Rep', 1)
            local v79 = game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent
            v79.PrimaryPart = v79.Weight
            local _ = getfenv().speed
            local v80 = math.random(70, 100)
            getfenv().location = Vector3.new(-13859.18359375, v80 .. tonumber('00'), -11547.607421875)
            if getfenv().helifarm then
                repeat
                    task.wait()
                    local v81 = getfenv().speed or 500
                    v79.PrimaryPart.AssemblyLinearVelocity = v79.PrimaryPart.CFrame.LookVector * v81
                    v79:PivotTo(CFrame.new(v79.PrimaryPart.Position, location))
                until game.Players.LocalPlayer:DistanceFromCharacter(location) < 150 or not getfenv().helifarm
            end
            getfenv().location = Vector3.new(-12999.0341796875, v80 .. tonumber('00'), -12891.8037109375)
            if getfenv().helifarm then
                repeat
                    task.wait()
                    local v82 = getfenv().speed or 500
                    v79.PrimaryPart.AssemblyLinearVelocity = v79.PrimaryPart.CFrame.LookVector * v82
                    v79:PivotTo(CFrame.new(v79.PrimaryPart.Position, location))
                until game.Players.LocalPlayer:DistanceFromCharacter(location) < 150 or not getfenv().helifarm
            end
            getfenv().location = Vector3.new(-12036.03515625, v80 .. tonumber('00'), -11943.435546875)
            if getfenv().helifarm then
                repeat
                    task.wait()
                    local v83 = getfenv().speed or 500
                    v79.PrimaryPart.AssemblyLinearVelocity = v79.PrimaryPart.CFrame.LookVector * v83
                    v79:PivotTo(CFrame.new(v79.PrimaryPart.Position, location))
                until game.Players.LocalPlayer:DistanceFromCharacter(location) < 150 or not getfenv().helifarm
            end
            getfenv().location = Vector3.new(-11370.21875, v80 .. tonumber('00'), -10672.0390625)
            if getfenv().helifarm then
                repeat
                    task.wait()
                    local v84 = getfenv().speed or 500
                    v79.PrimaryPart.AssemblyLinearVelocity = v79.PrimaryPart.CFrame.LookVector * v84
                    v79:PivotTo(CFrame.new(v79.PrimaryPart.Position, location))
                until game.Players.LocalPlayer:DistanceFromCharacter(location) < 150 or not getfenv().helifarm
            end
            getfenv().location = Vector3.new(-12224.23828125, v80 .. tonumber('00'), -9458.740234375)
            if getfenv().helifarm then
                repeat
                    task.wait()
                    local v85 = getfenv().speed or 500
                    v79.PrimaryPart.AssemblyLinearVelocity = v79.PrimaryPart.CFrame.LookVector * v85
                    v79:PivotTo(CFrame.new(v79.PrimaryPart.Position, location))
                until game.Players.LocalPlayer:DistanceFromCharacter(location) < 150 or not getfenv().helifarm
            end
            getfenv().location = Vector3.new(-13524.3212890625, v80 .. tonumber('00'), -9509.30078125)
            if getfenv().helifarm then
                repeat
                    task.wait()
                    local v86 = getfenv().speed or 500
                    v79.PrimaryPart.AssemblyLinearVelocity = v79.PrimaryPart.CFrame.LookVector * v86
                    v79:PivotTo(CFrame.new(v79.PrimaryPart.Position, location))
                until game.Players.LocalPlayer:DistanceFromCharacter(location) < 150 or not getfenv().helifarm
            end
            getfenv().location = Vector3.new(-13859.18359375, v80 .. tonumber('00'), -11547.607421875)
            if getfenv().helifarm then
                repeat
                    task.wait()
                    local v87 = getfenv().speed or 500
                    v79.PrimaryPart.AssemblyLinearVelocity = v79.PrimaryPart.CFrame.LookVector * v87
                    v79:PivotTo(CFrame.new(v79.PrimaryPart.Position, location))
                until game.Players.LocalPlayer:DistanceFromCharacter(location) < 150 or not getfenv().helifarm
            end
        end)
    end
end)
v12:AddToggle('自动比赛', function(p90)
    _G.testers3 = p90 and true or false
    local vu91 = game:GetService('Players').LocalPlayer.leaderstats.Races.Value
    if _G.testers3 ~= true or getfenv().run1 ~= nil then
        if _G.testers3 == false then
            getfenv().run1:Disconnect()
            getfenv().run1 = nil
        end
    else
        getfenv().run1 = game:GetService('Players').LocalPlayer.leaderstats.Races:GetPropertyChangedSignal('Value'):Connect(function()
            racecount = racecount + game:GetService('Players').LocalPlayer.leaderstats.Races.Value - vu91
            racestat.Text = 'Races Completed: ' .. racecount
            vu91 = game:GetService('Players').LocalPlayer.leaderstats.Races.Value
        end)
    end
    while _G.testers3 do
        task.wait()
        if getfenv().args1 == true then
            task.wait()
            game:GetService('ReplicatedStorage').Remotes.RaceQueue:FireServer(unpack(getfenv().args3))
            repeat
                task.wait()
            until getfenv().args1 == false
        end
        if getfenv().args == nil then
            warn('Start A Race first')
            repeat
                task.wait()
            until getfenv().args ~= nil
        end
        local v92 = game:GetService('Players').LocalPlayer.Character.Humanoid.SeatPart.Parent
        v92.PrimaryPart = v92.Weight
        game:GetService('ReplicatedStorage').Remotes.RaceStartTimeTrial:FireServer(unpack(getfenv().args))
        local v93 = workspace.RaceCheckpoints:GetChildren()
        table.sort(v93, function(p94, p95)
            return tonumber(p94.Name) < tonumber(p95.Name)
        end)
        for _, v96 in pairs(v93) do
            v92:PivotTo(v96.CFrame)
            task.wait(0.3)
        end
        task.wait(0.2)
        game:GetService('ReplicatedStorage').Remotes.Teleport:FireServer(unpack(getfenv().args2))
        task.wait(1)
    end
end)
v12:AddButton('Instant Daily Rewards', function()
    local v97 = game:GetService('Players').LocalPlayer.PlayerGui.DailyRewards.Frame.Rewards:GetChildren()
    for _, v98 in pairs(v97) do
        if v98:IsA('Frame') then
            game:GetService('ReplicatedStorage').Remotes.DailyRewardsEvent:FireServer('Claim', tonumber(v98.Name))
        end
    end
end)
v12:AddButton('Instant Gifts', function()
    for v99 = 1, 10 do
        game:GetService('ReplicatedStorage').Remotes.GiftEvent:FireServer('Claim', v99)
    end
end)
v12:AddButton('Auto Get All Dealerships', function()
    for _, v100 in pairs(workspace.Dealerships:GetDescendants()) do
        if v100.Name == 'TouchPart' and v100:IsA('BasePart') then
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v100, 0)
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v100, 1)
        end
    end
end)

local v101 = v11:CreateWindow({
    text = 'Vehicle',
})

v101:AddToggle('Fly', function(p102)
    _G.fly = p102 and true or false
    local v103 = game.Players.LocalPlayer:GetMouse()
    local v104 = game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent
    v104.PrimaryPart = v104.Weight
    while _G.fly do
        task.wait()
        v104.PrimaryPart.Velocity = Vector3.new(0, 0, 0)
        local v105 = 0
        local v106 = 0
        local v107 = 0
        if game:GetService('UserInputService'):IsKeyDown(Enum.KeyCode.W) then
            v107 = 300
        end
        if game:GetService('UserInputService'):IsKeyDown(Enum.KeyCode.S) then
            v107 = -300
        end
        if game:GetService('UserInputService'):IsKeyDown(Enum.KeyCode.A) then
            v106 = -300
        end
        if game:GetService('UserInputService'):IsKeyDown(Enum.KeyCode.D) then
            v106 = 300
        end
        if game:GetService('UserInputService'):IsKeyDown(Enum.KeyCode.E) then
            v105 = 300
        end
        if game:GetService('UserInputService'):IsKeyDown(Enum.KeyCode.Q) then
            v105 = -300
        end
        v104:PivotTo(CFrame.new(v104.PrimaryPart.Position, v104.PrimaryPart.Position + v103.UnitRay.Direction) * CFrame.new(v106, v105, -v107))
    end
end)
v101:AddToggle('Infinite Nitro', function(p108)
    _G.nitro = p108 and true or false
    while _G.nitro do
        task.wait()
        local v109 = game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent
        v109:SetAttribute('NitroActive', true)
        v110 = v109:GetAttribute('Nitro')
        if v110 < 10 then
            v109:SetAttribute('Nitro', 100)
        end
    end
end)
v101:AddToggle('No Heat', function(p111)
    _G.heat = p111 and true or false
    while _G.nitro do
        task.wait()
        game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent:SetAttribute('Heat', 0)
    end
end)
v101:AddToggle('Walkspeed', function(p112)
    _G.speed2 = p112 and true or false
    while _G.speed2 do
        task.wait()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
    end
    if _G.speed2 == false then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    end
end)

local v113 = v11:CreateWindow({
    text = 'Teleport',
})

v113:AddButton('Teleport to Dealership', function()
    game.Players.LocalPlayer.Character:PivotTo(CFrame.new(Vector3.new(-502.133209, 13.5312386, 680.709961)))
end)
v113:AddButton('Teleport to Race Cross Country', function()
    game.Players.LocalPlayer.Character:PivotTo(CFrame.new(Vector3.new(-1281.42517, 13.5358706, 3031.50366)))
end)
v113:AddButton('Teleport to Race Circuit', function()
    game.Players.LocalPlayer.Character:PivotTo(CFrame.new(Vector3.new(2081.44263, 67.2036438, -1371.49817)))
end)
v113:AddButton('Teleport to Race Highway', function()
    game.Players.LocalPlayer.Character:PivotTo(CFrame.new(Vector3.new(-457.653442, 13.541316, 2061.64917)))
end)
v113:AddButton('Teleport to Race Drag', function()
    game.Players.LocalPlayer.Character:PivotTo(CFrame.new(Vector3.new(-1231.55408, 13.5411701, -2121.73145)))
end)

local v114 = v11:CreateWindow({
    text = 'Visuals',
})

v114:AddToggle('Box ESP', function(p115)
    _G.boxesp = p115 and true or false
    local v116 = game:GetService('Players')
    local v117 = v116.LocalPlayer
    local v118 = game:GetService('RunService')
    local v119 = game:GetService('UserInputService')
    local v120 = workspace.CurrentCamera
    local v121 = Vector2.new(0, 0)
    local v122 = Vector2.new(1, 1)

    local function vu123(p124)
        local v125 = Drawing.new('Square')
        v125.Visible = false
        v125.Color = Color3.new(1, 1, 1)
        v125.Thickness = 1
        v125.Transparency = 1
        v125.Filled = false

        local function vu126()
            local v127
            v127 = v118.RenderStepped:Connect(function()
                if _G.boxesp == true and (p124.Character and (p124.Character:FindFirstChild('HumanoidRootPart') and (p124 ~= v117 and p124.Character:FindFirstChild('Humanoid')))) then
                    local v128, v129 = v120:WorldToViewportPoint(p124.Character.HumanoidRootPart.Position)
                    if v129 then
                        local v130 = v120:WorldToViewportPoint(p124.Character.HumanoidRootPart.CFrame:PointToWorldSpace(Vector3.new(0, 3, 0)))
                        local v131 = v120:WorldToViewportPoint(p124.Character.HumanoidRootPart.CFrame:PointToWorldSpace(Vector3.new(0, -3.5, 0)))
                        local v132 = math.abs(v130.Y - v131.Y)
                        local v133 = v132 / 2
                        v125.Size = Vector2.new(v133, v132)
                        v125.Position = Vector2.new(v128.X - v125.Size.X / 2, v128.Y - v125.Size.Y / 2)
                        v125.Visible = true
                    else
                        v125.Visible = false
                    end
                else
                    v125.Visible = false
                    if not v116:FindFirstChild(p124.Name) then
                        v125:Remove()
                        v127:Disconnect()
                    end
                end
            end)
        end

        coroutine.wrap(vu126)()
    end

    for _, v134 in pairs(v116:GetPlayers()) do
        vu123(v134)
    end
    v116.PlayerAdded:Connect(function(p135)
        vu123(p135)
    end)
end)
v114:AddToggle('Tracers', function(p136)
    _G.tracers = p136 and true or false
    local v137 = game:GetService('Players')
    local v138 = v137.LocalPlayer
    local v139 = game:GetService('RunService')
    local v140 = game:GetService('UserInputService')
    local v141 = workspace.CurrentCamera
    local v142 = Vector2.new(0, 0)
    local v143 = Vector2.new(1, 1)

    local function vu144(p145)
        local v146 = Drawing.new('Line')
        v146.Visible = false
        v146.Color = Color3.new(1, 1, 1)
        v146.Thickness = 1
        v146.Transparency = 1

        local function vu147()
            local v148
            v148 = v139.RenderStepped:Connect(function()
                if _G.tracers == true and (p145.Character and (p145.Character:FindFirstChild('HumanoidRootPart') and (p145 ~= v138 and p145.Character:FindFirstChild('Humanoid')))) then
                    local v149, v150 = v141:WorldToViewportPoint(p145.Character.HumanoidRootPart.Position)
                    if v150 then
                        v146.From = Vector2.new(v141.ViewportSize.X / 2, v141.ViewportSize.Y / 2)
                        v146.To = Vector2.new(v149.X, v149.Y)
                        v146.Visible = true
                    else
                        v146.Visible = false
                    end
                else
                    v146.Visible = false
                    if not v137:FindFirstChild(p145.Name) then
                        v146:Remove()
                        v148:Disconnect()
                    end
                end
            end)
        end

        coroutine.wrap(vu147)()
    end

    for _, v151 in pairs(v137:GetPlayers()) do
        vu144(v151)
    end
    v137.PlayerAdded:Connect(function(p152)
        vu144(p152)
    end)
end)
v114:AddToggle('Names ESP', function(p153)
    _G.namesesp = p153 and true or false
    local v154 = game:GetService('Players')
    local v155 = v154.LocalPlayer
    local v156 = game:GetService('RunService')
    local v157 = game:GetService('UserInputService')
    local v158 = workspace.CurrentCamera
    local v159 = Vector2.new(0, 0)
    local v160 = Vector2.new(1, 1)

    local function vu161(p162)
        local v163 = Drawing.new('Text')
        v163.Visible = false
        v163.Center = true
        v163.Outline = true
        v163.Font = 2
        v163.Size = 13
        v163.Color = Color3.new(1, 1, 1)

        local function vu164()
            local v165
            v165 = v156.RenderStepped:Connect(function()
                if _G.namesesp == true and (p162.Character and (p162.Character:FindFirstChild('HumanoidRootPart') and (p162 ~= v155 and p162.Character:FindFirstChild('Humanoid')))) then
                    local v166, v167 = v158:WorldToViewportPoint(p162.Character.HumanoidRootPart.Position)
                    if v167 then
                        v163.Position = Vector2.new(v166.X, v166.Y - 40)
                        v163.Text = p162.Name
                        v163.Visible = true
                    else
                        v163.Visible = false
                    end
                else
                    v163.Visible = false
                    if not v154:FindFirstChild(p162.Name) then
                        v163:Remove()
                        v165:Disconnect()
                    end
                end
            end)
        end

        coroutine.wrap(vu164)()
    end

    for _, v168 in pairs(v154:GetPlayers()) do
        vu161(v168)
    end
    v154.PlayerAdded:Connect(function(p169)
        vu161(p169)
    end)
end)

local v170 = v11:CreateWindow({
    text = 'Easter Egg Hunt',
})

v170:AddButton('Instant Get All Eggs', function()
    local v171 = workspace.EasterEggs:GetDescendants()
    local v172 = #v171
    local v173 = 0
    local v174 = tick()
    for _, v175 in pairs(v171) do
        if v175.Name == 'EasterEgg' and v175:IsA('Model') then
            v173 = v173 + 1
            game.Players.LocalPlayer.Character:PivotTo(v175.PrimaryPart.CFrame)
            task.wait(0.2)
            firetouchinterest(v175.PrimaryPart, game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
            firetouchinterest(v175.PrimaryPart, game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
        end
    end
    print('Finished Getting all eggs, Time Took:', tick() - v174)
end)
v170:AddToggle('Egg ESP', function(p176)
    _G.eggesp = p176 and true or false
    local v177 = game:GetService('Players')
    local v178 = v177.LocalPlayer
    local v179 = game:GetService('RunService')
    local v180 = game:GetService('UserInputService')
    local v181 = workspace.CurrentCamera
    local v182 = Vector2.new(0, 0)
    local v183 = Vector2.new(1, 1)

    local function vu184(p185)
        local v186 = Drawing.new('Text')
        v186.Visible = false
        v186.Center = true
        v186.Outline = true
        v186.Font = 2
        v186.Size = 13
        v186.Color = Color3.new(1, 1, 1)

        local function vu187()
            local v188
            v188 = v179.RenderStepped:Connect(function()
                if _G.eggesp == true and p185:FindFirstChild('PrimaryPart') then
                    local v189, v190 = v181:WorldToViewportPoint(p185.PrimaryPart.Position)
                    if v190 then
                        v186.Position = Vector2.new(v189.X, v189.Y)
                        v186.Text = 'Egg'
                        v186.Visible = true
                    else
                        v186.Visible = false
                    end
                else
                    v186.Visible = false
                    if not p185.Parent then
                        v186:Remove()
                        v188:Disconnect()
                    end
                end
            end)
        end

        coroutine.wrap(vu187)()
    end

    for _, v191 in pairs(workspace.EasterEggs:GetChildren()) do
        vu184(v191)
    end
end)

local v192 = v11:CreateWindow({
    text = 'Candy Hunt',
})

v192:AddToggle('Auto Candy [No Teleports]', function(p193)
    _G.autocandy = p193 and true or false
    while _G.autocandy do
        task.wait()
        pcall(function()
            for _, v194 in pairs(workspace.CandyBuckets:GetChildren()) do
                if v194:IsA('Model') and game.Players.LocalPlayer:DistanceFromCharacter(v194.PrimaryPart.Position) < 20 then
                    fireclickdetector(v194.ClickDetector)
                end
            end
        end)
    end
end)
v192:AddToggle('Auto Candy [Teleports]', function(p195)
    _G.autocandy2 = p195 and true or false
    while _G.autocandy2 do
        task.wait()
        pcall(function()
            for _, v196 in pairs(workspace.CandyBuckets:GetChildren()) do
                if v196:IsA('Model') and _G.autocandy2 == true then
                    game.Players.LocalPlayer.Character:PivotTo(v196.PrimaryPart.CFrame)
                    task.wait(0.2)
                    fireclickdetector(v196.ClickDetector)
                    task.wait(0.2)
                end
            end
        end)
    end
end)
v192:AddToggle('Candy ESP', function(p197)
    _G.candyesp = p197 and true or false
    local v198 = game:GetService('Players')
    local v199 = v198.LocalPlayer
    local v200 = game:GetService('RunService')
    local v201 = game:GetService('UserInputService')
    local v202 = workspace.CurrentCamera
    local v203 = Vector2.new(0, 0)
    local v204 = Vector2.new(1, 1)

    local function vu205(p206)
        local v207 = Drawing.new('Text')
        v207.Visible = false
        v207.Center = true
        v207.Outline = true
        v207.Font = 2
        v207.Size = 13
        v207.Color = Color3.new(1, 1, 1)

        local function vu208()
            local v209
            v209 = v200.RenderStepped:Connect(function()
                if _G.candyesp == true and p206:FindFirstChild('PrimaryPart') then
                    local v210, v211 = v202:WorldToViewportPoint(p206.PrimaryPart.Position)
                    if v211 then
                        v207.Position = Vector2.new(v210.X, v210.Y)
                        v207.Text = 'Candy Bucket'
                        v207.Visible = true
                    else
                        v207.Visible = false
                    end
                else
                    v207.Visible = false
                    if not p206.Parent then
                        v207:Remove()
                        v209:Disconnect()
                    end
                end
            end)
        end

        coroutine.wrap(vu208)()
    end

    for _, v212 in pairs(workspace.CandyBuckets:GetChildren()) do
        vu205(v212)
    end
end)

local v213 = v11:CreateWindow({
    text = 'Ice Cream Hunt',
})

v213:AddButton('Get all Ice Creams', function()
    for _, v214 in pairs(workspace.IceCreamEvent:GetChildren()) do
        if v214.Name == 'IceCream' and v214:IsA('Model') then
            game.Players.LocalPlayer.Character:PivotTo(v214.PrimaryPart.CFrame)
            task.wait(0.2)
            firetouchinterest(v214.PrimaryPart, game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
            firetouchinterest(v214.PrimaryPart, game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
        end
    end
end)
v213:AddToggle('Ice Cream ESP', function(p215)
    _G.icecreamesp = p215 and true or false
    local v216 = game:GetService('Players')
    local v217 = v216.LocalPlayer
    local v218 = game:GetService('RunService')
    local v219 = game:GetService('UserInputService')
    local v220 = workspace.CurrentCamera
    local v221 = Vector2.new(0, 0)
    local v222 = Vector2.new(1, 1)

    local function vu223(p224)
        local v225 = Drawing.new('Text')
        v225.Visible = false
        v225.Center = true
        v225.Outline = true
        v225.Font = 2
        v225.Size = 13
        v225.Color = Color3.new(1, 1, 1)

        local function vu226()
            local v227
            v227 = v218.RenderStepped:Connect(function()
                if _G.icecreamesp == true and p224:FindFirstChild('PrimaryPart') then
                    local v228, v229 = v220:WorldToViewportPoint(p224.PrimaryPart.Position)
                    if v229 then
                        v225.Position = Vector2.new(v228.X, v228.Y)
                        v225.Text = 'Ice Cream'
                        v225.Visible = true
                    else
                        v225.Visible = false
                    end
                else
                    v225.Visible = false
                    if not p224.Parent then
                        v225:Remove()
                        v227:Disconnect()
                    end
                end
            end)
        end

        coroutine.wrap(vu226)()
    end

    for _, v230 in pairs(workspace.IceCreamEvent:GetChildren()) do
        vu223(v230)
    end
end)

local v231 = v11:CreateWindow({
    text = 'Winter Event',
})

v231:AddToggle('Auto Snowman', function(p232)
    _G.autosnowman = p232 and true or false
    while _G.autosnowman do
        task.wait()
        pcall(function()
            for _, v233 in pairs(workspace.Snowmen:GetChildren()) do
                if v233:IsA('Model') and (v233:FindFirstChild('Base') and _G.autosnowman == true) then
                    game.Players.LocalPlayer.Character:PivotTo(v233.Base.CFrame)
                    repeat
                        task.wait()
                        game:GetService('ReplicatedStorage').Remotes.SnowmanEvent:FireServer('Build', v233)
                    until not v233:FindFirstChild('Base') or not _G.autosnowman
                end
            end
        end)
    end
end)
v231:AddToggle('Snowman ESP', function(p234)
    _G.snowmanesp = p234 and true or false
    local v235 = game:GetService('Players')
    local v236 = v235.LocalPlayer
    local v237 = game:GetService('RunService')
    local v238 = game:GetService('UserInputService')
    local v239 = workspace.CurrentCamera
    local v240 = Vector2.new(0, 0)
    local v241 = Vector2.new(1, 1)

    local function vu242(p243)
        local v244 = Drawing.new('Text')
        v244.Visible = false
        v244.Center = true
        v244.Outline = true
        v244.Font = 2
        v244.Size = 13
        v244.Color = Color3.new(1, 1, 1)

        local function vu245()
            local v246
            v246 = v237.RenderStepped:Connect(function()
                if _G.snowmanesp == true and p243:FindFirstChild('Base') then
                    local v247, v248 = v239:WorldToViewportPoint(p243.Base.Position)
                    if v248 then
                        v244.Position = Vector2.new(v247.X, v247.Y)
                        v244.Text = 'Snowman'
                        v244.Visible = true
                    else
                        v244.Visible = false
                    end
                else
                    v244.Visible = false
                    if not p243:FindFirstChild('Base') then
                        v244:Remove()
                        v246:Disconnect()
                    end
                end
            end)
        end

        coroutine.wrap(vu245)()
    end

    for _, v249 in pairs(workspace.Snowmen:GetChildren()) do
        vu242(v249)
    end
    workspace.Snowmen.ChildAdded:Connect(function(p250)
        vu242(p250)
    end)
end)
v231:AddToggle('Auto Gift Hunt', function(p251)
    _G.autogifthunt = p251 and true or false
    while _G.autogifthunt do
        task.wait()
        pcall(function()
            for _, v252 in pairs(workspace.Gifts:GetChildren()) do
                if v252:IsA('Model') and (v252:FindFirstChild('PrimaryPart') and _G.autogifthunt == true) then
                    game.Players.LocalPlayer.Character:PivotTo(v252.PrimaryPart.CFrame)
                    task.wait(0.2)
                    firetouchinterest(v252.PrimaryPart, game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
                    firetouchinterest(v252.PrimaryPart, game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
                end
            end
        end)
    end
end)
v231:AddToggle('Gift Hunt ESP', function(p253)
    _G.gifthuntesp = p253 and true or false
    local v254 = game:GetService('Players')
    local v255 = v254.LocalPlayer
    local v256 = game:GetService('RunService')
    local v257 = game:GetService('UserInputService')
    local v258 = workspace.CurrentCamera
    local v259 = Vector2.new(0, 0)
    local v260 = Vector2.new(1, 1)

    local function vu261(p262)
        local v263 = Drawing.new('Text')
        v263.Visible = false
        v263.Center = true
        v263.Outline = true
        v263.Font = 2
        v263.Size = 13
        v263.Color = Color3.new(1, 1, 1)

        local function vu264()
            local v265
            v265 = v256.RenderStepped:Connect(function()
                if _G.gifthuntesp == true and p262:FindFirstChild('PrimaryPart') then
                    local v266, v267 = v258:WorldToViewportPoint(p262.PrimaryPart.Position)
                    if v267 then
                        v263.Position = Vector2.new(v266.X, v266.Y)
                        v263.Text = 'Gift'
                        v263.Visible = true
                    else
                        v263.Visible = false
                    end
                else
                    v263.Visible = false
                    if not p262.Parent then
                        v263:Remove()
                        v265:Disconnect()
                    end
                end
            end)
        end

        coroutine.wrap(vu264)()
    end

    for _, v268 in pairs(workspace.Gifts:GetChildren()) do
        vu261(v268)
    end
    workspace.Gifts.ChildAdded:Connect(function(p269)
        vu261(p269)
    end)
end)

local v270 = v11:CreateWindow({
    text = 'Shell Hunt',
})

v270:AddToggle('Auto Shell Hunt', function(p271)
    _G.autoshellhunt = p271 and true or false
    while _G.autoshellhunt do
        task.wait()
        pcall(function()
            for _, v272 in pairs(workspace.Shells:GetChildren()) do
                if v272:IsA('Model') and (v272:FindFirstChild('PrimaryPart') and _G.autoshellhunt == true) then
                    game.Players.LocalPlayer.Character:PivotTo(v272.PrimaryPart.CFrame)
                    task.wait(0.2)
                    firetouchinterest(v272.PrimaryPart, game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
                    firetouchinterest(v272.PrimaryPart, game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
                end
            end
        end)
    end
end)
v270:AddToggle('Shell Hunt ESP', function(p273)
    _G.shellhuntesp = p273 and true or false
    local v274 = game:GetService('Players')
    local v275 = v274.LocalPlayer
    local v276 = game:GetService('RunService')
    local v277 = game:GetService('UserInputService')
    local v278 = workspace.CurrentCamera
    local v279 = Vector2.new(0, 0)
    local v280 = Vector2.new(1, 1)

    local function vu281(p282)
        local v283 = Drawing.new('Text')
        v283.Visible = false
        v283.Center = true
        v283.Outline = true
        v283.Font = 2
        v283.Size = 13
        v283.Color = Color3.new(1, 1, 1)

        local function vu284()
            local v285
            v285 = v276.RenderStepped:Connect(function()
                if _G.shellhuntesp == true and p282:FindFirstChild('PrimaryPart') then
                    local v286, v287 = v278:WorldToViewportPoint(p282.PrimaryPart.Position)
                    if v287 then
                        v283.Position = Vector2.new(v286.X, v286.Y)
                        v283.Text = 'Shell'
                        v283.Visible = true
                    else
                        v283.Visible = false
                    end
                else
                    v283.Visible = false
                    if not p282.Parent then
                        v283:Remove()
                        v285:Disconnect()
                    end
                end
            end)
        end

        coroutine.wrap(vu284)()
    end

    for _, v288 in pairs(workspace.Shells:GetChildren()) do
        vu281(v288)
    end
    workspace.Shells.ChildAdded:Connect(function(p289)
        vu281(p289)
    end)
end)

local v290 = v11:CreateWindow({
    text = 'Other',
})

v290:AddToggle('Auto Collect Cash [Airdrop etc]', function(p291)
    _G.autocollect = p291 and true or false
    while _G.autocollect do
        task.wait()
        pcall(function()
            for _, v292 in pairs(workspace:GetChildren()) do
                if v292.Name == 'Cash' and (v292:IsA('BasePart') and _G.autocollect == true) then
                    firetouchinterest(v292, game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
                    firetouchinterest(v292, game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
                end
            end
        end)
    end
end)
v290:AddToggle('Auto Collect Cash [Airdrop etc] [Teleports]', function(p293)
    _G.autocollect2 = p293 and true or false
    while _G.autocollect2 do
        task.wait()
        pcall(function()
            for _, v294 in pairs(workspace:GetChildren()) do
                if v294.Name == 'Cash' and (v294:IsA('BasePart') and _G.autocollect2 == true) then
                    game.Players.LocalPlayer.Character:PivotTo(v294.CFrame)
                    task.wait(0.2)
                    firetouchinterest(v294, game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
                    firetouchinterest(v294, game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
                end
            end
        end)
    end
end)
v290:AddToggle('Auto Collect Cash [Airdrop etc] [Visuals]', function(p295)
    _G.autocollect3 = p295 and true or false
    local v296 = game:GetService('Players')
    local v297 = v296.LocalPlayer
    local v298 = game:GetService('RunService')
    local v299 = game:GetService('UserInputService')
    local v300 = workspace.CurrentCamera
    local v301 = Vector2.new(0, 0)
    local v302 = Vector2.new(1, 1)

    local function vu303(p304)
        local v305 = Drawing.new('Text')
        v305.Visible = false
        v305.Center = true
        v305.Outline = true
        v305.Font = 2
        v305.Size = 13
        v305.Color = Color3.new(1, 1, 1)

        local function vu304()
            local v305
            v305 = v298.RenderStepped:Connect(function()
                if _G.autocollect3 == true and p304:IsA('BasePart') then
                    local v306, v307 = v300:WorldToViewportPoint(p304.Position)
                    if v307 then
                        v305.Position = Vector2.new(v306.X, v306.Y)
                        v305.Text = 'Cash'
                        v305.Visible = true
                    else
                        v305.Visible = false
                    end
                else
                    v305.Visible = false
                    if not p304.Parent then
                        v305:Remove()
                        v305:Disconnect()
                    end
                end
            end)
        end

        coroutine.wrap(vu304)()
    end

    for _, v308 in pairs(workspace:GetChildren()) do
        if v308.Name == 'Cash' and v308:IsA('BasePart') then
            vu303(v308)
        end
    end
    workspace.ChildAdded:Connect(function(p309)
        if p309.Name == 'Cash' and p309:IsA('BasePart') then
            vu303(p309)
        end
    end)
end)

local v280 = workspace:WaitForChild('EasterEggHunt')

spawn(function()
    while true do
        task.wait()
        pcall(function()
            for v281, v282 in pairs(workspace:GetChildren()) do
                if v282.Name == 'EasterEgg' and game.Players.LocalPlayer:DistanceFromCharacter(v282.Position) < 120 then
                    firetouchinterest(v280.PrimaryPart, v282, 0)
                    firetouchinterest(v280.PrimaryPart, v282, 0)
                    task.wait()
                end
            end
            for v283, v284 in pairs(workspace.EasterEggs:GetChildren()) do
                if v284.Name == 'EasterEgg' and game.Players.LocalPlayer:DistanceFromCharacter(v284.Parent.Position) < 120 then
                    firetouchinterest(v280.PrimaryPart, v284.Parent, 0)
                    firetouchinterest(v280.PrimaryPart, v284.Parent, 0)
                    task.wait()
                end
            end
        end)
    end
end)

local v285 = v11:CreateWindow({
    text = 'Stats',
})

moneystat = v285:AddLabel('Money Earned: $0', function(_) end)
racestat = v285:AddLabel('Races Completed: 0', function(_) end)

v11:CreateWindow({
    text = 'Misc',
}):AddButton('Remove Speed traps', function()
    workspace.Speedtraps:Destroy()
end)

local v286 = game:HttpGet([[https://raw.githubusercontent.com/Marco8642/science/refs/heads/main/drivingempire]], true)
local v287 = true

while v287 do
    if v286 ~= game:HttpGet([[https://raw.githubusercontent.com/Marco8642/science/refs/heads/main/drivingempire]], true) then
        if v286 ~= game:HttpGet([[https://raw.githubusercontent.com/Marco8642/science/refs/heads/main/drivingempire]], true) then
            print('new script update available')

            updater = v11:CreateWindow({
                text = 'Update Required',
            }):AddButton('Click To Update Script', function()
                updater:Destroy()
            end)
        end
    end
    task.wait(10)
end