-- ts file was generated at discord.gg/25ms


if game:GetService("CoreGui"):FindFirstChild("RELZHUB") and game:GetService("CoreGui"):FindFirstChild("ScreenGui") then
    game:GetService("CoreGui").RELZHUB:Destroy()
    game:GetService("CoreGui").ScreenGui:Destroy()
end
if _G.Theme ~= "Red" then
    if _G.Theme ~= "Cyan" then
        if _G.Theme ~= "Blue" then
            if _G.Theme ~= "DarkBlue" then
                if _G.Theme ~= "Green" then
                    if _G.Theme ~= "LightGreen" then
                        if _G.Theme ~= "Purple" then
                            if _G.Theme ~= "Zinc" then
                                _G.Primary = Color3.fromRGB(30, 30, 30)
                                _G.Dark = Color3.fromRGB(10, 10, 10)
                            else
                                _G.Primary = Color3.fromRGB(30, 30, 30)
                                _G.Dark = Color3.fromRGB(10, 10, 10)
                            end
                        else
                            _G.Primary = Color3.fromRGB(205, 125, 255)
                            _G.Dark = Color3.fromRGB(60, 20, 95)
                        end
                    else
                        _G.Primary = Color3.fromRGB(205, 255, 205)
                        _G.Dark = Color3.fromRGB(70, 90, 70)
                    end
                else
                    _G.Primary = Color3.fromRGB(70, 255, 205)
                    _G.Dark = Color3.fromRGB(20, 90, 90)
                end
            else
                _G.Primary = Color3.fromRGB(50, 30, 255)
                _G.Dark = Color3.fromRGB(20, 10, 90)
            end
        else
            _G.Primary = Color3.fromRGB(40, 155, 255)
            _G.Dark = Color3.fromRGB(10, 80, 115)
        end
    else
        _G.Primary = Color3.fromRGB(40, 230, 255)
        _G.Dark = Color3.fromRGB(10, 80, 115)
    end
else
    _G.Primary = Color3.fromRGB(255, 30, 50)
    _G.Dark = Color3.fromRGB(90, 10, 20)
end
if not _G.Theme then
    _G.Primary = Color3.fromRGB(110, 110, 120)
    _G.Dark = Color3.fromRGB(20, 20, 30)
    print("Theme not found")
end
Instance.new("UIStroke")
Instance.new("UICorner")
local v1 = Instance.new("ImageButton")
local v2 = Instance.new("ScreenGui")
v2.Parent = game.CoreGui
v2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
v1.Parent = v2
v1.Position = UDim2.new(0, 10, 0, 10)
v1.Size = UDim2.new(0, 50, 0, 50)
v1.Draggable = true
v1.BackgroundColor3 = _G.Dark
v1.ImageColor3 = _G.Primary
v1.ImageTransparency = 0.1
v1.BackgroundTransparency = 0.1
v1.Image = "rbxassetid://1394008072"
local v3 = Instance.new("UIStroke")
v3.Color = _G.Primary
v3.Thickness = 1
v3.Transparency = 0
v3.Parent = v1
local v4 = Instance.new("UICorner")
v4.Name = "MCNR"
v4.Parent = v1
v4.CornerRadius = UDim.new(0, 5)
v1.MouseButton1Click:connect(function()
    game.CoreGui:FindFirstChild("RELZHUB").Enabled = not game.CoreGui:FindFirstChild("RELZHUB").Enabled
end)
local vu5 = {}
repeat
    wait(1)
until game:IsLoaded()
local vu6 = game:GetService("UserInputService")
local vu7 = game:GetService("TweenService")
local function vu22(p8, pu9)
    local vu10 = nil
    local vu11 = nil
    local vu12 = nil
    local vu13 = nil
    local function vu18(p14)
        local v15 = p14.Position - vu10
        local v16 = vu7
        local v17 = {
            Position = UDim2.new(vu11.X.Scale, vu11.X.Offset + v15.X, vu11.Y.Scale, vu11.Y.Offset + v15.Y)
        }
        v16:Create(pu9, TweenInfo.new(0.15), v17):Play()
    end
    p8.InputBegan:Connect(function(pu19)
        if pu19.UserInputType == Enum.UserInputType.MouseButton1 or pu19.UserInputType == Enum.UserInputType.Touch then
            vu12 = true
            vu10 = pu19.Position
            vu11 = pu9.Position
            pu19.Changed:Connect(function()
                if pu19.UserInputState == Enum.UserInputState.End then
                    vu12 = false
                end
            end)
        end
    end)
    p8.InputChanged:Connect(function(p20)
        if p20.UserInputType == Enum.UserInputType.MouseMovement or p20.UserInputType == Enum.UserInputType.Touch then
            vu13 = p20
        end
    end)
    vu6.InputChanged:Connect(function(p21)
        if p21 == vu13 and vu12 then
            vu18(p21)
        end
    end)
end
function vu5.Window(_, p23)
    local vu24 = false
    local vu25 = ""
    local v26 = keybind or Enum.KeyCode.RightControl
    string.gsub(tostring(v26), "Enum.KeyCode.", "")
    local v27 = Instance.new("ScreenGui")
    v27.Name = "AlertFrame"
    v27.Parent = game.CoreGui
    v27.ZIndexBehavior = Enum.ZIndexBehavior.Global
    local v28 = Instance.new("ScreenGui")
    v28.Name = "RELZHUB"
    v28.Parent = game.CoreGui
    v28.ZIndexBehavior = Enum.ZIndexBehavior.Global
    local vu29 = Instance.new("Frame")
    vu29.Name = "Main"
    vu29.Parent = v28
    vu29.ClipsDescendants = true
    vu29.AnchorPoint = Vector2.new(0.5, 0.5)
    vu29.BackgroundColor3 = _G.Dark
    vu29.BackgroundTransparency = 0.1
    vu29.Position = UDim2.new(0.5, 0, 0.5, 0)
    vu29.Size = UDim2.new(0, 0, 0, 0)
    local v30 = vu29
    vu29.TweenSize(v30, UDim2.new(0, 524, 0, 332), "Out", "Quad", 0.4, true)
    local v31 = Instance.new("UIStroke")
    v31.Color = _G.Primary
    v31.Thickness = 1
    v31.Transparency = 0
    v31.Parent = vu29
    local v32 = Instance.new("UICorner")
    v32.Name = "CircleMain"
    v32.Parent = vu29
    v32.CornerRadius = UDim.new(0, 5)
    Instance.new("UIStroke")
    local v33 = Instance.new("UICorner")
    v33.Name = "MCNR"
    v33.Parent = vu29
    local v34 = Instance.new("UICorner")
    v34.Name = "MCNR"
    v34.Parent = BackgroundImage
    local v35 = Instance.new("UICorner")
    v35.Name = "lol"
    v35.Parent = Dark
    local v36 = Instance.new("Frame")
    v36.Name = "DragButton"
    v36.Parent = vu29
    v36.Position = UDim2.new(1, 5, 1, 5)
    v36.AnchorPoint = Vector2.new(1, 1)
    v36.Size = UDim2.new(0, 15, 0, 15)
    v36.BackgroundColor3 = _G.Primary
    v36.BackgroundTransparency = 0.1
    v36.ZIndex = 10
    game.Players.LocalPlayer:GetMouse()
    game:GetService("UserInputService")
    local v37 = Instance.new("UICorner")
    v37.Name = "CircleDragButton"
    v37.Parent = v36
    v37.CornerRadius = UDim.new(0, 99)
    local v38 = Instance.new("Frame")
    v38.Name = "Top"
    v38.Parent = vu29
    v38.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
    v38.Size = UDim2.new(1, 0, 0, 40)
    v38.BackgroundTransparency = 1
    local v39 = Instance.new("UICorner")
    v39.Name = "TCNR"
    v39.Parent = v38
    v39.CornerRadius = UDim.new(0, 5)
    local v40 = Instance.new("TextLabel")
    v40.Name = "ttittles"
    v40.Parent = v38
    v40.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    v40.BackgroundTransparency = 1
    v40.Position = UDim2.new(0, 15, 0.5, 0)
    v40.AnchorPoint = Vector2.new(0, 0.5)
    v40.Size = UDim2.new(0, 1, 0, 25)
    v40.Font = Enum.Font.GothamBold
    v40.Text = "BANANA MOFADA HUB |"
    v40.TextSize = 15
    v40.TextColor3 = Color3.fromRGB(255, 255, 255)
    v40.TextXAlignment = Enum.TextXAlignment.Left
    local v41 = game:GetService("TextService"):GetTextSize(v40.Text, v40.TextSize, v40.Font, Vector2.new(math.huge, math.huge))
    v40.Size = UDim2.new(0, v41.X, 0, 25)
    local v42 = Instance.new("TextLabel")
    v42.Name = "patch"
    v42.Parent = v40
    v42.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    v42.BackgroundTransparency = 1
    v42.Position = UDim2.new(1, 5, 0.5, 0)
    v42.Size = UDim2.new(0, 1, 0, 25)
    v42.Font = Enum.Font.Gotham
    v42.AnchorPoint = Vector2.new(0, 0.5)
    v42.Text = p23
    v42.TextSize = 15
    v42.TextColor3 = _G.Primary
    local v43 = game:GetService("TextService"):GetTextSize(v42.Text, v42.TextSize, v42.Font, Vector2.new(math.huge, math.huge))
    v42.Size = UDim2.new(0, v43.X, 0, 25)
    local v44 = Instance.new("ImageButton")
    v44.Name = "Hide"
    v44.Parent = v38
    v44.BackgroundColor3 = _G.Primary
    v44.BackgroundTransparency = 1
    v44.AnchorPoint = Vector2.new(1, 0.5)
    v44.Position = UDim2.new(1, - 10, 0.5, 0)
    v44.Size = UDim2.new(0, 25, 0, 25)
    v44.Image = "rbxassetid://7743878857"
    v44.ImageTransparency = 0
    v44.ImageColor3 = Color3.fromRGB(245, 245, 245)
    local v45 = Instance.new("Frame")
    v45.Name = "SepBot"
    v45.Parent = v38
    v45.BackgroundColor3 = _G.Primary
    v45.BackgroundTransparency = 0
    v45.BorderSizePixel = 0
    v45.AnchorPoint = Vector2.new(0.5, 1)
    v45.Position = UDim2.new(0.5, 0, 1, 0)
    v45.Size = UDim2.new(1, 0, 0, 1)
    local v46 = Instance.new("UICorner")
    v46.Name = "MCNR"
    v46.Parent = v44
    v46.CornerRadius = UDim.new(0, 3)
    v44.MouseButton1Click:connect(function()
        game.CoreGui:FindFirstChild("RELZHUB").Enabled = not game.CoreGui:FindFirstChild("RELZHUB").Enabled
    end)
    local v47 = Instance.new("UICorner")
    v47.Name = "MCNR"
    v47.Parent = zbtn
    v47.CornerRadius = UDim.new(0, 3)
    local vu48 = Instance.new("Frame")
    vu48.Name = "Tab"
    vu48.Parent = vu29
    vu48.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    vu48.Position = UDim2.new(0, 8, 0, 45)
    vu48.BackgroundTransparency = 1
    vu48.Size = UDim2.new(0, 148, 0, 275)
    Instance.new("UIStroke")
    local vu49 = Instance.new("ScrollingFrame")
    vu49.Name = "ScrollTab"
    vu49.Parent = vu48
    vu49.Active = true
    vu49.BackgroundColor3 = Color3.fromRGB(0, 10, 250)
    vu49.Position = UDim2.new(0, 0, 0, 0)
    vu49.BackgroundTransparency = 1
    vu49.Size = UDim2.new(1, 0, 1, 0)
    vu49.ScrollBarThickness = 0
    vu49.ScrollingDirection = Enum.ScrollingDirection.Y
    local v50 = Instance.new("UICorner")
    v50.Parent = vu48
    v50.CornerRadius = UDim.new(0, 5)
    local vu51 = Instance.new("UIListLayout")
    vu51.Name = "PLL"
    vu51.Parent = vu49
    vu51.SortOrder = Enum.SortOrder.LayoutOrder
    vu51.Padding = UDim.new(0, 2)
    local v52 = Instance.new("UIPadding")
    v52.Name = "PPD"
    v52.Parent = vu49
    Instance.new("UIStroke")
    local vu53 = Instance.new("Frame")
    vu53.Name = "Page"
    vu53.Parent = vu29
    vu53.BackgroundColor3 = _G.Dark
    vu53.Position = UDim2.new(0, 166, 0, 45)
    vu53.Size = UDim2.new(0, 350, 0, 275)
    vu53.BackgroundTransparency = 1
    local v54 = Instance.new("UICorner")
    v54.Parent = vu53
    v54.CornerRadius = UDim.new(0, 3)
    local vu55 = Instance.new("Frame")
    vu55.Name = "MainPage"
    vu55.Parent = vu53
    vu55.ClipsDescendants = true
    vu55.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    vu55.BackgroundTransparency = 1
    vu55.Size = UDim2.new(1, 0, 1, 0)
    local vu56 = Instance.new("Folder")
    vu56.Name = "PageList"
    vu56.Parent = vu55
    local vu57 = Instance.new("UIPageLayout")
    vu57.Parent = vu56
    vu57.SortOrder = Enum.SortOrder.LayoutOrder
    vu57.EasingDirection = Enum.EasingDirection.InOut
    vu57.EasingStyle = Enum.EasingStyle.Quad
    vu57.FillDirection = Enum.FillDirection.Vertical
    vu57.Padding = UDim.new(0, 10)
    vu57.TweenTime = 0
    vu57.GamepadInputEnabled = false
    vu57.ScrollWheelInputEnabled = false
    vu57.TouchInputEnabled = false
    vu22(v38, vu29)
    vu6.InputBegan:Connect(function(p58)
        if p58.KeyCode == Enum.KeyCode.Insert then
            game.CoreGui:FindFirstChild("RELZHUB").Enabled = not game.CoreGui:FindFirstChild("RELZHUB").Enabled
        end
    end)
    local vu59 = false
    v36.InputBegan:Connect(function(p60)
        if p60.UserInputType == Enum.UserInputType.MouseButton1 or p60.UserInputType == Enum.UserInputType.Touch then
            vu59 = true
        end
    end)
    vu6.InputEnded:Connect(function(p61)
        if p61.UserInputType == Enum.UserInputType.MouseButton1 or p61.UserInputType == Enum.UserInputType.Touch then
            vu59 = false
        end
    end)
    vu6.InputChanged:Connect(function(p62)
        if vu59 and (p62.UserInputType == Enum.UserInputType.MouseMovement or p62.UserInputType == Enum.UserInputType.Touch) then
            vu29.Size = UDim2.new(0, math.clamp(p62.Position.X - vu29.AbsolutePosition.X, 524, math.huge), 0, math.clamp(p62.Position.Y - vu29.AbsolutePosition.Y, 322, math.huge))
            vu53.Size = UDim2.new(0, math.clamp(p62.Position.X - vu53.AbsolutePosition.X - 8, 350, math.huge), 0, math.clamp(p62.Position.Y - vu53.AbsolutePosition.Y - 8, 270, math.huge))
            vu48.Size = UDim2.new(0, 148, 0, math.clamp(p62.Position.Y - vu48.AbsolutePosition.Y - 8, 270, math.huge))
        end
    end)
    return {
        Tab = function(_, p63, p64)
            Instance.new("UIStroke")
            local vu65 = Instance.new("TextButton")
            Instance.new("TextLabel")
            local v66 = Instance.new("UICorner")
            local v67 = Instance.new("UICorner")
            local vu68 = Instance.new("TextLabel")
            vu65.Parent = vu49
            vu65.Name = p63 .. "Server"
            vu65.Text = ""
            vu65.BackgroundColor3 = _G.Primary
            vu65.BackgroundTransparency = 1
            vu65.Size = UDim2.new(1, 0, 0, 35)
            vu65.Font = Enum.Font.GothamSemibold
            vu65.TextColor3 = Color3.fromRGB(255, 255, 255)
            vu65.TextSize = 12
            vu65.TextTransparency = 0.9
            local vu69 = Instance.new("Frame")
            vu69.Name = "SelectedTab"
            vu69.Parent = vu65
            vu69.BackgroundColor3 = _G.Primary
            vu69.BackgroundTransparency = 0
            vu69.Size = UDim2.new(0, 3, 0, 0)
            vu69.Position = UDim2.new(0, 0, 0.5, 0)
            vu69.AnchorPoint = Vector2.new(0, 0.5)
            vu69.ZIndex = 4
            v67.CornerRadius = UDim.new(0, 100)
            v67.Parent = vu69
            vu68.Parent = vu65
            vu68.Name = "Title"
            vu68.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
            vu68.BackgroundTransparency = 1
            vu68.Position = UDim2.new(0, 30, 0.5, 0)
            vu68.Size = UDim2.new(0, 100, 0, 30)
            vu68.Font = Enum.Font.GothamSemibold
            vu68.Text = p63
            vu68.AnchorPoint = Vector2.new(0, 0.5)
            vu68.TextColor3 = Color3.fromRGB(255, 255, 255)
            vu68.TextTransparency = 0.4
            vu68.TextSize = 13
            vu68.TextXAlignment = Enum.TextXAlignment.Left
            local vu70 = Instance.new("ImageLabel")
            vu70.Name = "IDK"
            vu70.Parent = vu65
            vu70.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            vu70.BackgroundTransparency = 1
            vu70.ImageTransparency = 0.3
            vu70.Position = UDim2.new(0, 7, 0.5, 0)
            vu70.Size = UDim2.new(0, 15, 0, 15)
            vu70.AnchorPoint = Vector2.new(0, 0.5)
            vu70.Image = p64
            v66.CornerRadius = UDim.new(0, 5)
            v66.Parent = vu65
            local vu71 = Instance.new("ScrollingFrame")
            vu71.Name = p63 .. "_Page"
            vu71.Parent = vu56
            vu71.Active = true
            vu71.BackgroundColor3 = _G.Dark
            vu71.Position = UDim2.new(0, 0, 0, 0)
            vu71.BackgroundTransparency = 1
            vu71.Size = UDim2.new(1, 0, 1, 0)
            vu71.ScrollBarThickness = 0
            vu71.ScrollingDirection = Enum.ScrollingDirection.Y
            local v72 = Instance.new("UICorner")
            v72.Parent = vu55
            v72.CornerRadius = UDim.new(0, 5)
            local v73 = Instance.new("UIPadding")
            local vu74 = Instance.new("UIListLayout")
            v73.Parent = vu71
            vu74.Padding = UDim.new(0, 3)
            vu74.Parent = vu71
            vu74.SortOrder = Enum.SortOrder.LayoutOrder
            vu65.MouseButton1Click:Connect(function()
                local v75 = next
                local v76, v77 = vu49:GetChildren()
                while true do
                    local v78
                    v77, v78 = v75(v76, v77)
                    if v77 == nil then
                        break
                    end
                    if v78:IsA("TextButton") then
                        vu7:Create(v78, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                            BackgroundTransparency = 1
                        }):Play()
                        vu7:Create(v78.SelectedTab, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                            Size = UDim2.new(0, 3, 0, 0)
                        }):Play()
                        vu7:Create(v78.IDK, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                            ImageTransparency = 0.4
                        }):Play()
                        vu7:Create(v78.Title, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                            TextTransparency = 0.4
                        }):Play()
                    end
                    vu7:Create(vu65, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                        BackgroundTransparency = 0.8
                    }):Play()
                    vu7:Create(vu69, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                        Size = UDim2.new(0, 3, 0, 15)
                    }):Play()
                    vu7:Create(vu70, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                        ImageTransparency = 0
                    }):Play()
                    vu7:Create(vu68, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                        TextTransparency = 0
                    }):Play()
                end
                local v79 = next
                local v80, v81 = vu56:GetChildren()
                while true do
                    local v82
                    v81, v82 = v79(v80, v81)
                    if v81 == nil then
                        break
                    end
                    vu25 = string.gsub(vu65.Name, "Server", "") .. "_Page"
                    if v82.Name == vu25 then
                        vu57:JumpTo(v82)
                    end
                end
            end)
            if vu24 == false then
                local v83 = next
                local v84, v85 = vu49:GetChildren()
                local v86 = vu68
                local v87 = vu70
                local v88 = vu69
                local v89 = vu65
                while true do
                    local v90
                    v85, v90 = v83(v84, v85)
                    if v85 == nil then
                        break
                    end
                    if v90:IsA("TextButton") then
                        vu7:Create(v90, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                            BackgroundTransparency = 1
                        }):Play()
                        vu7:Create(v90.SelectedTab, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                            Size = UDim2.new(0, 3, 0, 15)
                        }):Play()
                        vu7:Create(v90.IDK, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                            ImageTransparency = 0.4
                        }):Play()
                        vu7:Create(v90.Title, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                            TextTransparency = 0.4
                        }):Play()
                    end
                    vu7:Create(v89, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                        BackgroundTransparency = 0.8
                    }):Play()
                    vu7:Create(v88, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                        Size = UDim2.new(0, 3, 0, 15)
                    }):Play()
                    vu7:Create(v87, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                        ImageTransparency = 0
                    }):Play()
                    vu7:Create(v86, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                        TextTransparency = 0
                    }):Play()
                end
                vu57:JumpToIndex(1)
                vu24 = true
            end
            game:GetService("RunService").Stepped:Connect(function()
                pcall(function()
                    vu71.CanvasSize = UDim2.new(0, 0, 0, vu74.AbsoluteContentSize.Y)
                    vu49.CanvasSize = UDim2.new(0, 0, 0, vu51.AbsoluteContentSize.Y)
                end)
            end)
            function vu5.Alert(_, p91)
                if game.CoreGui:FindFirstChild("AlertFrame") then
                    local v92 = game.CoreGui.AlertFrame
                    if v92:FindFirstChild("Frame") then
                        v92.Frame:Destroy()
                    end
                end
                local v93 = Instance.new("Frame")
                local v94 = Instance.new("ImageLabel")
                local v95 = Instance.new("TextLabel")
                local v96 = Instance.new("TextLabel")
                local v97 = Instance.new("UICorner")
                v93.Name = "Frame"
                v93.Parent = game.CoreGui.AlertFrame
                v93.BackgroundColor3 = _G.Dark
                v93.BackgroundTransparency = 0.1
                v93.Position = UDim2.new(1, 0, 0, 0)
                v93.Size = UDim2.new(0, 200, 0, 60)
                local v98 = Instance.new("UIStroke")
                v98.Color = _G.Primary
                v98.Thickness = 1
                v98.Transparency = 0
                v98.Parent = v93
                v94.Name = "Icon"
                v94.Parent = v93
                v94.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                v94.BackgroundTransparency = 1
                v94.Position = UDim2.new(0, 8, 0, 8)
                v94.Size = UDim2.new(0, 45, 0, 45)
                v94.Image = "rbxassetid://13940080072"
                v95.Parent = v93
                v95.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
                v95.BackgroundTransparency = 1
                v95.Position = UDim2.new(0, 55, 0, 14)
                v95.Size = UDim2.new(0, 10, 0, 20)
                v95.Font = Enum.Font.GothamBold
                v95.Text = "Relz Hub"
                v95.TextColor3 = Color3.fromRGB(255, 255, 255)
                v95.TextSize = 16
                v95.TextXAlignment = Enum.TextXAlignment.Left
                v96.Parent = v93
                v96.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
                v96.BackgroundTransparency = 1
                v96.Position = UDim2.new(0, 55, 0, 33)
                v96.Size = UDim2.new(0, 10, 0, 10)
                v96.Font = Enum.Font.GothamSemibold
                v96.TextTransparency = 0.3
                v96.Text = p91
                v96.TextColor3 = Color3.fromRGB(200, 200, 200)
                v96.TextSize = 12
                v96.TextXAlignment = Enum.TextXAlignment.Left
                v97.CornerRadius = UDim.new(0, 5)
                v97.Parent = v93
                v93:TweenPosition(UDim2.new(1, - 195, 0, 0), "Out", "Quad", 0.4, true)
                wait(2)
                v93:TweenPosition(UDim2.new(1, 0, 0, 0), "Out", "Quad", 0.5, true)
                wait(0.6)
                v93:Destroy()
            end
            return {
                Button = function(_, p99, pu100)
                    local v101 = Instance.new("Frame")
                    local v102 = Instance.new("UICorner")
                    local v103 = Instance.new("TextLabel")
                    local v104 = Instance.new("TextButton")
                    local v105 = Instance.new("UICorner")
                    local v106 = Instance.new("Frame")
                    local v107 = Instance.new("UICorner")
                    v101.Name = "Button"
                    v101.Parent = vu71
                    v101.BackgroundColor3 = _G.Primary
                    v101.BackgroundTransparency = 0.8
                    v101.Size = UDim2.new(1, 0, 0, 36)
                    v102.CornerRadius = UDim.new(0, 5)
                    v102.Parent = v101
                    local v108 = Instance.new("ImageLabel")
                    v108.Name = "ImageLabel"
                    v108.Parent = v104
                    v108.BackgroundColor3 = _G.Primary
                    v108.BackgroundTransparency = 1
                    v108.AnchorPoint = Vector2.new(0.5, 0.5)
                    v108.Position = UDim2.new(0.5, 0, 0.5, 0)
                    v108.Size = UDim2.new(0, 15, 0, 15)
                    v108.Image = "rbxassetid://10723375250"
                    v108.ImageTransparency = 0.2
                    v108.ImageColor3 = Color3.fromRGB(245, 245, 245)
                    v105.CornerRadius = UDim.new(0, 4)
                    v105.Parent = v104
                    v104.Name = "TextButton"
                    v104.Parent = v101
                    v104.BackgroundColor3 = _G.Primary
                    v104.BackgroundTransparency = 0
                    v104.AnchorPoint = Vector2.new(1, 0.5)
                    v104.Position = UDim2.new(1, - 10, 0.5, 0)
                    v104.Size = UDim2.new(0, 22, 0, 22)
                    v104.Font = Enum.Font.GothamSemibold
                    v104.Text = ""
                    v104.TextXAlignment = Enum.TextXAlignment.Left
                    v104.TextColor3 = Color3.fromRGB(255, 255, 255)
                    v104.TextSize = 13
                    v103.Name = "TextLabel"
                    v103.Parent = v101
                    v103.BackgroundColor3 = _G.Primary
                    v103.BackgroundTransparency = 1
                    v103.AnchorPoint = Vector2.new(0, 0.5)
                    v103.Position = UDim2.new(0, 15, 0.5, 0)
                    v103.Size = UDim2.new(1, 0, 1, 0)
                    v103.Font = Enum.Font.GothamSemibold
                    v103.Text = p99
                    v103.TextXAlignment = Enum.TextXAlignment.Left
                    v103.TextColor3 = Color3.fromRGB(255, 255, 255)
                    v103.TextSize = 13
                    v106.Name = "Black"
                    v106.Parent = v101
                    v106.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                    v106.BackgroundTransparency = 1
                    v106.BorderSizePixel = 0
                    v106.Position = UDim2.new(0, 0, 0, 0)
                    v106.Size = UDim2.new(1, 0, 0, 33)
                    v107.CornerRadius = UDim.new(0, 5)
                    v107.Parent = v106
                    v104.MouseButton1Click:Connect(function()
                        pu100()
                    end)
                end,
                Toggle = function(_, p109, p110, p111, pu112)
                    local v113 = p110 or false
                    local vu114 = v113
                    _G.TrueColor = _G.Primary
                    Instance.new("UICorner")
                    Instance.new("UIPadding")
                    Instance.new("UIStroke")
                    local v115 = Instance.new("TextButton")
                    local v116 = Instance.new("UICorner")
                    Instance.new("TextLabel")
                    local v117 = Instance.new("TextLabel")
                    local v118 = Instance.new("TextLabel")
                    local vu119 = Instance.new("TextButton")
                    local v120 = Instance.new("UICorner")
                    local v121 = Instance.new("UICorner")
                    local vu122 = Instance.new("Frame")
                    local v123 = Instance.new("Frame")
                    local v124 = Instance.new("UICorner")
                    Instance.new("ImageLabel")
                    v115.Name = "Button"
                    v115.Parent = vu71
                    v115.BackgroundColor3 = _G.Primary
                    v115.BackgroundTransparency = 0.8
                    v115.Size = UDim2.new(1, 0, 0, 46)
                    v115.AutoButtonColor = false
                    v115.Font = Enum.Font.SourceSans
                    v115.Text = ""
                    v115.TextColor3 = Color3.fromRGB(0, 0, 0)
                    v115.TextSize = 11
                    v116.CornerRadius = UDim.new(0, 5)
                    v116.Parent = v115
                    v117.Parent = v115
                    v117.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
                    v117.BackgroundTransparency = 1
                    v117.Size = UDim2.new(1, 0, 0, 35)
                    v117.Font = Enum.Font.GothamSemibold
                    v117.Text = p109
                    v117.TextColor3 = Color3.fromRGB(255, 255, 255)
                    v117.TextSize = 13
                    v117.TextXAlignment = Enum.TextXAlignment.Left
                    v117.AnchorPoint = Vector2.new(0, 0.5)
                    v118.Parent = v117
                    v118.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
                    v118.BackgroundTransparency = 1
                    v118.Position = UDim2.new(0, 0, 0, 22)
                    v118.Size = UDim2.new(0, 280, 0, 16)
                    v118.Font = Enum.Font.Gotham
                    if p111 then
                        v118.Text = p111
                        v117.Position = UDim2.new(0, 15, 0.5, - 5)
                        v118.Position = UDim2.new(0, 0, 0, 22)
                    else
                        v117.Position = UDim2.new(0, 15, 0.5, 0)
                        v118.Visible = false
                    end
                    v118.TextColor3 = Color3.fromRGB(200, 200, 200)
                    v118.TextSize = 10
                    v118.TextXAlignment = Enum.TextXAlignment.Left
                    v123.Name = "ToggleFrame"
                    v123.Parent = v115
                    v123.BackgroundColor3 = _G.Dark
                    v123.BackgroundTransparency = 1
                    v123.Position = UDim2.new(1, - 10, 0.5, 0)
                    v123.Size = UDim2.new(0, 35, 0, 20)
                    v123.AnchorPoint = Vector2.new(1, 0.5)
                    v121.CornerRadius = UDim.new(0, 10)
                    v121.Parent = v123
                    vu119.Name = "ToggleImage"
                    vu119.Parent = v123
                    vu119.BackgroundColor3 = _G.Dark
                    vu119.BackgroundTransparency = 0
                    vu119.Position = UDim2.new(0, 0, 0, 0)
                    vu119.AnchorPoint = Vector2.new(0, 0)
                    vu119.Size = UDim2.new(1, 0, 1, 0)
                    vu119.Text = ""
                    vu119.AutoButtonColor = false
                    local vu125 = Instance.new("UIStroke")
                    vu125.Color = _G.Primary
                    vu125.Thickness = 1
                    vu125.Transparency = 0
                    vu125.Parent = v123
                    v120.CornerRadius = UDim.new(0, 10)
                    v120.Parent = vu119
                    vu122.Name = "Circle"
                    vu122.Parent = vu119
                    vu122.BackgroundColor3 = _G.Primary
                    vu122.BackgroundTransparency = 0
                    vu122.Position = UDim2.new(0, 3, 0.5, 0)
                    vu122.Size = UDim2.new(0, 14, 0, 14)
                    vu122.AnchorPoint = Vector2.new(0, 0.5)
                    v124.CornerRadius = UDim.new(0, 10)
                    v124.Parent = vu122
                    vu119.MouseButton1Click:Connect(function()
                        if vu114 ~= false then
                            vu114 = false
                            vu125.Thickness = 1
                            vu122:TweenPosition(UDim2.new(0, 3, 0.5, 0), "Out", "Sine", 0.2, true)
                            vu7:Create(vu122, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                BackgroundColor3 = _G.Primary
                            }):Play()
                            vu7:Create(vu119, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                BackgroundColor3 = _G.Dark
                            }):Play()
                        else
                            vu114 = true
                            vu125.Thickness = 0
                            vu122:TweenPosition(UDim2.new(0, 18, 0.5, 0), "Out", "Sine", 0.2, true)
                            vu7:Create(vu122, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                BackgroundColor3 = _G.Dark
                            }):Play()
                            vu7:Create(vu119, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                BackgroundColor3 = _G.Primary
                            }):Play()
                        end
                        pcall(pu112, vu114)
                    end)
                    if v113 == true then
                        local v126 = true
                        vu125.Thickness = 0
                        vu122:TweenPosition(UDim2.new(0, 18, 0.5, 0), "Out", "Sine", 0.4, true)
                        vu7:Create(vu122, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                            BackgroundColor3 = _G.Dark
                        }):Play()
                        vu7:Create(vu119, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                            BackgroundColor3 = _G.Primary
                        }):Play()
                        pcall(pu112, v126)
                    end
                end,
                Dropdown = function(_, p127, p128, p129, pu130)
                    local vu131 = false
                    local vu132 = Instance.new("Frame")
                    local vu133 = Instance.new("Frame")
                    local v134 = Instance.new("UICorner")
                    local v135 = Instance.new("UICorner")
                    local v136 = Instance.new("UICorner")
                    local v137 = Instance.new("UICorner")
                    local v138 = Instance.new("TextLabel")
                    local vu139 = Instance.new("ScrollingFrame")
                    local v140 = Instance.new("UIListLayout")
                    local v141 = Instance.new("UIPadding")
                    Instance.new("TextButton")
                    Instance.new("TextButton")
                    local vu142 = Instance.new("TextButton")
                    Instance.new("ImageLabel")
                    Instance.new("UIStroke")
                    vu132.Name = "Dropdown"
                    vu132.Parent = vu71
                    vu132.BackgroundColor3 = _G.Primary
                    vu132.BackgroundTransparency = 0.8
                    vu132.ClipsDescendants = false
                    vu132.Size = UDim2.new(1, 0, 0, 40)
                    v134.CornerRadius = UDim.new(0, 5)
                    v134.Parent = vu132
                    v138.Name = "DropTitle"
                    v138.Parent = vu132
                    v138.BackgroundColor3 = _G.Primary
                    v138.BackgroundTransparency = 1
                    v138.Size = UDim2.new(1, 0, 0, 30)
                    v138.Font = Enum.Font.GothamSemibold
                    v138.Text = p127
                    v138.TextColor3 = Color3.fromRGB(255, 255, 255)
                    v138.TextSize = 13
                    v138.TextXAlignment = Enum.TextXAlignment.Left
                    v138.Position = UDim2.new(0, 15, 0, 5)
                    v138.AnchorPoint = Vector2.new(0, 0)
                    vu142.Name = "SelectItems"
                    vu142.Parent = vu132
                    vu142.BackgroundColor3 = _G.Dark
                    vu142.TextColor3 = Color3.fromRGB(255, 255, 255)
                    vu142.BackgroundTransparency = 0.1
                    vu142.Position = UDim2.new(1, - 5, 0, 5)
                    vu142.Size = UDim2.new(0, 100, 0, 30)
                    vu142.AnchorPoint = Vector2.new(1, 0)
                    vu142.Font = Enum.Font.GothamMedium
                    vu142.TextSize = 9
                    vu142.ZIndex = 1
                    if p129 then
                        vu142.Text = "   " .. p129
                    else
                        vu142.Text = "   Select Items"
                    end
                    vu142.ClipsDescendants = true
                    vu142.TextXAlignment = Enum.TextXAlignment.Left
                    v135.Parent = vu142
                    v135.CornerRadius = UDim.new(0, 5)
                    v136.Parent = vu139
                    v136.CornerRadius = UDim.new(0, 5)
                    vu133.Name = "DropdownFrameScroll"
                    vu133.Parent = vu132
                    vu133.BackgroundColor3 = _G.Dark
                    vu133.BackgroundTransparency = 0
                    vu133.ClipsDescendants = true
                    vu133.Size = UDim2.new(1, - 10, 0, 100)
                    vu133.Position = UDim2.new(0, 5, 0, 40)
                    vu133.Visible = false
                    vu133.AnchorPoint = Vector2.new(0, 0)
                    v137.Parent = vu133
                    v137.CornerRadius = UDim.new(0, 5)
                    vu139.Name = "DropScroll"
                    vu139.Parent = vu133
                    vu139.ScrollingDirection = Enum.ScrollingDirection.Y
                    vu139.Active = true
                    vu139.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    vu139.BackgroundTransparency = 1
                    vu139.BorderSizePixel = 0
                    vu139.Position = UDim2.new(0, 0, 0, 10)
                    vu139.Size = UDim2.new(1, 0, 0, 80)
                    vu139.AnchorPoint = Vector2.new(0, 0)
                    vu139.ClipsDescendants = true
                    vu139.ScrollBarThickness = 3
                    vu139.ZIndex = 3
                    local v143 = Instance.new("UIPadding")
                    v143.PaddingLeft = UDim.new(0, 10)
                    v143.PaddingRight = UDim.new(0, 10)
                    v143.Parent = vu139
                    v143.Name = "PaddingDrop"
                    v140.Parent = vu139
                    v140.SortOrder = Enum.SortOrder.LayoutOrder
                    v140.Padding = UDim.new(0, 1)
                    v141.Parent = vu139
                    v141.PaddingLeft = UDim.new(0, 5)
                    local v144 = next
                    local v145 = nil
                    while true do
                        local v146
                        v145, v146 = v144(p128, v145)
                        if v145 == nil then
                            break
                        end
                        local vu147 = Instance.new("TextButton")
                        local v148 = Instance.new("UICorner")
                        local v149 = Instance.new("UICorner")
                        local v150 = Instance.new("UIPadding")
                        vu147.Name = "Item"
                        vu147.Parent = vu139
                        vu147.BackgroundColor3 = _G.Primary
                        vu147.BackgroundTransparency = 1
                        vu147.Size = UDim2.new(1, 0, 0, 30)
                        vu147.Font = Enum.Font.GothamSemibold
                        vu147.Text = tostring(v146)
                        vu147.TextColor3 = Color3.fromRGB(255, 255, 255)
                        vu147.TextSize = 11
                        vu147.TextTransparency = 0.5
                        vu147.TextXAlignment = Enum.TextXAlignment.Left
                        vu147.ZIndex = 4
                        v150.Parent = vu147
                        v150.PaddingLeft = UDim.new(0, 8)
                        v149.Parent = vu147
                        v149.CornerRadius = UDim.new(0, 5)
                        local vu151 = Instance.new("Frame")
                        vu151.Name = "SelectedItems"
                        vu151.Parent = vu147
                        vu151.BackgroundColor3 = _G.Primary
                        vu151.BackgroundTransparency = 1
                        vu151.Size = UDim2.new(0, 3, 0.4, 0)
                        vu151.Position = UDim2.new(0, - 8, 0.5, 0)
                        vu151.AnchorPoint = Vector2.new(0, 0.5)
                        vu151.ZIndex = 4
                        v148.Parent = vu151
                        v148.CornerRadius = UDim.new(0, 999)
                        vu147.MouseEnter:Connect(function()
                            vu7:Create(vu147, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                TextTransparency = 0,
                                BackgroundTransparency = 0.8
                            }):Play()
                            vu7:Create(vu151, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                BackgroundTransparency = 0
                            }):Play()
                        end)
                        vu147.MouseLeave:Connect(function()
                            vu7:Create(vu147, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                TextTransparency = 0.5,
                                BackgroundTransparency = 1
                            }):Play()
                            vu7:Create(vu151, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                BackgroundTransparency = 1
                            }):Play()
                        end)
                        vu147.MouseButton1Click:Connect(function()
                            vu131 = false
                            vu142.ClipsDescendants = true
                            vu7:Create(vu133, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                Size = UDim2.new(1, - 10, 0, 0),
                                Visible = false
                            }):Play()
                            pu130(vu147.Text)
                            vu142.Text = "   " .. vu147.Text
                            vu7:Create(vu132, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                Size = UDim2.new(1, 0, 0, 40)
                            }):Play()
                        end)
                    end
                    vu139.CanvasSize = UDim2.new(0, 0, 0, v140.AbsoluteContentSize.Y)
                    vu142.MouseButton1Click:Connect(function()
                        if vu131 ~= false then
                            vu131 = false
                            vu7:Create(vu133, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                Size = UDim2.new(1, - 10, 0, 0),
                                Visible = false
                            }):Play()
                            vu7:Create(vu132, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                Size = UDim2.new(1, 0, 0, 40)
                            }):Play()
                        else
                            vu131 = true
                            vu7:Create(vu133, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                Size = UDim2.new(1, - 10, 0, 100),
                                Visible = true
                            }):Play()
                            vu7:Create(vu132, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                Size = UDim2.new(1, 0, 0, 145)
                            }):Play()
                        end
                    end)
                    return {
                        Add = function(_, p152)
                            local vu153 = Instance.new("TextButton")
                            local v154 = Instance.new("UICorner")
                            local v155 = Instance.new("UICorner")
                            local v156 = Instance.new("UIPadding")
                            vu153.Name = "Item"
                            vu153.Parent = vu139
                            vu153.BackgroundColor3 = _G.Primary
                            vu153.BackgroundTransparency = 1
                            vu153.Size = UDim2.new(1, 0, 0, 30)
                            vu153.Font = Enum.Font.GothamSemibold
                            vu153.Text = tostring(p152)
                            vu153.TextColor3 = Color3.fromRGB(255, 255, 255)
                            vu153.TextSize = 11
                            vu153.TextTransparency = 0.5
                            vu153.TextXAlignment = Enum.TextXAlignment.Left
                            vu153.ZIndex = 4
                            v156.Parent = vu153
                            v156.PaddingLeft = UDim.new(0, 8)
                            v155.Parent = vu153
                            v155.CornerRadius = UDim.new(0, 5)
                            local vu157 = Instance.new("Frame")
                            vu157.Name = "SelectedItems"
                            vu157.Parent = vu153
                            vu157.BackgroundColor3 = _G.Primary
                            vu157.BackgroundTransparency = 1
                            vu157.Size = UDim2.new(0, 3, 0.4, 0)
                            vu157.Position = UDim2.new(0, - 8, 0.5, 0)
                            vu157.AnchorPoint = Vector2.new(0, 0.5)
                            vu157.ZIndex = 4
                            v154.Parent = vu157
                            v154.CornerRadius = UDim.new(0, 999)
                            vu153.MouseEnter:Connect(function()
                                vu7:Create(vu153, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                    TextTransparency = 0,
                                    BackgroundTransparency = 0.8
                                }):Play()
                                vu7:Create(vu157, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                    BackgroundTransparency = 0
                                }):Play()
                            end)
                            vu153.MouseLeave:Connect(function()
                                vu7:Create(vu153, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                    TextTransparency = 0.5,
                                    BackgroundTransparency = 1
                                }):Play()
                                vu7:Create(vu157, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                    BackgroundTransparency = 1
                                }):Play()
                            end)
                            vu153.MouseButton1Click:Connect(function()
                                vu131 = false
                                pu130(vu153.Text)
                                vu142.Text = "   " .. vu153.Text
                                vu7:Create(vu133, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                    Size = UDim2.new(1, - 10, 0, 0),
                                    Visible = false
                                }):Play()
                                vu7:Create(vu132, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                    Size = UDim2.new(1, 0, 0, 40)
                                }):Play()
                            end)
                        end,
                        Clear = function(_)
                            vu142.Text = "   Select Items"
                            vu131 = false
                            vu133.Visible = false
                            local v158 = next
                            local v159, v160 = vu139:GetChildren()
                            while true do
                                local v161
                                v160, v161 = v158(v159, v160)
                                if v160 == nil then
                                    break
                                end
                                if v161:IsA("TextButton") then
                                    v161:Destroy()
                                end
                            end
                        end
                    }
                end,
                Slider = function(_, p162, pu163, pu164, p165, pu166)
                    local v167 = Instance.new("Frame")
                    local v168 = Instance.new("UICorner")
                    local v169 = Instance.new("Frame")
                    local v170 = Instance.new("UICorner")
                    Instance.new("ImageLabel")
                    Instance.new("UIStroke")
                    local v171 = Instance.new("TextLabel")
                    Instance.new("Frame")
                    Instance.new("TextButton")
                    local v172 = Instance.new("Frame")
                    local vu173 = Instance.new("Frame")
                    local v174 = Instance.new("UICorner")
                    local v175 = Instance.new("UICorner")
                    local vu176 = Instance.new("Frame")
                    local v177 = Instance.new("UICorner")
                    local v178 = Instance.new("Frame")
                    local v179 = Instance.new("UICorner")
                    local vu180 = Instance.new("TextBox")
                    local v181 = Instance.new("UICorner")
                    Instance.new("UIStroke")
                    v167.Name = "Slider"
                    v167.Parent = vu71
                    v167.BackgroundColor3 = _G.Primary
                    v167.BackgroundTransparency = 1
                    v167.Size = UDim2.new(1, 0, 0, 45)
                    v168.CornerRadius = UDim.new(0, 5)
                    v168.Name = "slidercorner"
                    v168.Parent = v167
                    v169.Name = "sliderr"
                    v169.Parent = v167
                    v169.BackgroundColor3 = _G.Primary
                    v169.BackgroundTransparency = 0.8
                    v169.Position = UDim2.new(0, 0, 0, 0)
                    v169.Size = UDim2.new(1, 0, 0, 45)
                    v170.CornerRadius = UDim.new(0, 5)
                    v170.Name = "sliderrcorner"
                    v170.Parent = v169
                    v171.Parent = v169
                    v171.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
                    v171.BackgroundTransparency = 1
                    v171.Position = UDim2.new(0, 15, 0.5, 0)
                    v171.Size = UDim2.new(1, 0, 0, 30)
                    v171.Font = Enum.Font.GothamSemibold
                    v171.Text = p162
                    v171.AnchorPoint = Vector2.new(0, 0.5)
                    v171.TextColor3 = Color3.fromRGB(255, 255, 255)
                    v171.TextSize = 13
                    v171.TextXAlignment = Enum.TextXAlignment.Left
                    v172.Name = "bar"
                    v172.Parent = v169
                    v172.BackgroundColor3 = _G.Primary
                    v172.Size = UDim2.new(0, 100, 0, 4)
                    v172.Position = UDim2.new(1, - 10, 0.5, 10)
                    v172.BackgroundTransparency = 0.8
                    v172.AnchorPoint = Vector2.new(1, 0.5)
                    vu173.Name = "bar1"
                    vu173.Parent = v172
                    vu173.BackgroundColor3 = _G.Dark
                    vu173.BackgroundTransparency = 0
                    vu173.Size = UDim2.new(p165 / pu164, 0, 0, 4)
                    v174.CornerRadius = UDim.new(0, 5)
                    v174.Name = "bar1corner"
                    v174.Parent = vu173
                    v175.CornerRadius = UDim.new(0, 5)
                    v175.Name = "barcorner"
                    v175.Parent = v172
                    vu176.Name = "circlebar"
                    vu176.Parent = vu173
                    vu176.BackgroundColor3 = _G.Dark
                    vu176.Position = UDim2.new(1, 0, 0, - 5)
                    vu176.AnchorPoint = Vector2.new(0.5, 0)
                    vu176.Size = UDim2.new(0, 13, 0, 13)
                    v177.CornerRadius = UDim.new(0, 100)
                    v177.Parent = vu176
                    v179.CornerRadius = UDim.new(0, 2)
                    v179.Name = "valuecorner"
                    v179.Parent = v178
                    vu180.Parent = v169
                    vu180.BackgroundColor3 = _G.Dark
                    vu180.BackgroundTransparency = 0.1
                    vu180.Font = Enum.Font.Code
                    vu180.Size = UDim2.new(0, 35, 0, 15)
                    vu180.AnchorPoint = Vector2.new(1, 0.5)
                    vu180.Position = UDim2.new(1, - 10, 0.5, - 10)
                    vu180.TextColor3 = Color3.fromRGB(255, 255, 255)
                    vu180.TextSize = 9
                    vu180.Text = p165
                    vu180.TextTransparency = 0.1
                    vu180.ClearTextOnFocus = false
                    vu180.TextXAlignment = Enum.TextXAlignment.Center
                    v181.CornerRadius = UDim.new(0, 3)
                    v181.Parent = vu180
                    game.Players.LocalPlayer:GetMouse()
                    game:GetService("UserInputService")
                    if Value == nil then
                        Value = p165
                        pcall(function()
                            pu166(Value)
                        end)
                    end
                    local vu182 = false
                    vu176.InputBegan:Connect(function(p183)
                        if p183.UserInputType == Enum.UserInputType.MouseButton1 or p183.UserInputType == Enum.UserInputType.Touch then
                            vu182 = true
                        end
                    end)
                    v172.InputBegan:Connect(function(p184)
                        if p184.UserInputType == Enum.UserInputType.MouseButton1 or p184.UserInputType == Enum.UserInputType.Touch then
                            vu182 = true
                        end
                    end)
                    vu6.InputEnded:Connect(function(p185)
                        if p185.UserInputType == Enum.UserInputType.MouseButton1 or p185.UserInputType == Enum.UserInputType.Touch then
                            vu182 = false
                        end
                    end)
                    vu6.InputChanged:Connect(function(p186)
                        if vu182 and (p186.UserInputType == Enum.UserInputType.MouseMovement or p186.UserInputType == Enum.UserInputType.Touch) then
                            Value = math.floor((tonumber(pu164) - tonumber(pu163)) / 100 * vu173.AbsoluteSize.X + tonumber(pu163)) or 0
                            pcall(function()
                                pu166(Value)
                            end)
                            vu180.Text = Value
                            vu173.Size = UDim2.new(0, math.clamp(p186.Position.X - vu173.AbsolutePosition.X, 0, 100), 0, 4)
                            vu176.Position = UDim2.new(0, math.clamp(p186.Position.X - vu173.AbsolutePosition.X - 5, 0, 100), 0, - 5)
                        end
                    end)
                    vu180.FocusLost:Connect(function()
                        if pu164 < tonumber(vu180.Text) then
                            vu180.Text = pu164
                        end
                        vu173.Size = UDim2.new((vu180.Text or 0) / pu164, 0, 0, 4)
                        vu176.Position = UDim2.new(1, 0, 0, - 5)
                        local v187 = vu180
                        local v188 = tostring
                        local v189 = vu180.Text
                        if v189 then
                            v189 = math.floor(vu180.Text / pu164 * (pu164 - pu163) + pu163)
                        end
                        v187.Text = v188(v189)
                        pcall(pu166, vu180.Text)
                    end)
                end,
                Textbox = function(_, p190, _, pu191)
                    local v192 = Instance.new("Frame")
                    local v193 = Instance.new("UICorner")
                    local v194 = Instance.new("TextLabel")
                    local vu195 = Instance.new("TextBox")
                    local v196 = Instance.new("UICorner")
                    Instance.new("ImageLabel")
                    v192.Name = "Textbox"
                    v192.Parent = vu71
                    v192.BackgroundColor3 = _G.Primary
                    v192.BackgroundTransparency = 0.8
                    v192.Size = UDim2.new(1, 0, 0, 35)
                    v193.CornerRadius = UDim.new(0, 5)
                    v193.Name = "TextboxCorner"
                    v193.Parent = v192
                    v194.Name = "TextboxLabel"
                    v194.Parent = v192
                    v194.BackgroundColor3 = _G.Primary
                    v194.BackgroundTransparency = 1
                    v194.Position = UDim2.new(0, 15, 0.5, 0)
                    v194.Text = p190
                    v194.Size = UDim2.new(1, 0, 0, 35)
                    v194.Font = Enum.Font.GothamSemibold
                    v194.AnchorPoint = Vector2.new(0, 0.5)
                    v194.TextColor3 = Color3.fromRGB(255, 255, 255)
                    v194.TextSize = 13
                    v194.TextTransparency = 0
                    v194.TextXAlignment = Enum.TextXAlignment.Left
                    vu195.Name = "RealTextbox"
                    vu195.Parent = v192
                    vu195.BackgroundColor3 = _G.Dark
                    vu195.BackgroundTransparency = 0.1
                    vu195.Position = UDim2.new(1, - 5, 0.5, 0)
                    vu195.AnchorPoint = Vector2.new(1, 0.5)
                    vu195.Size = UDim2.new(0, 80, 0, 25)
                    vu195.Font = Enum.Font.GothamSemibold
                    vu195.Text = ""
                    vu195.TextColor3 = Color3.fromRGB(225, 225, 225)
                    vu195.TextSize = 11
                    vu195.TextTransparency = 0
                    vu195.ClipsDescendants = true
                    vu195.FocusLost:Connect(function()
                        pu191(vu195.Text)
                    end)
                    v196.CornerRadius = UDim.new(0, 5)
                    v196.Parent = vu195
                end,
                Label = function(_, p197)
                    local vu198 = Instance.new("TextLabel")
                    local v199 = Instance.new("UIPadding")
                    local v200 = {}
                    vu198.Name = "Label"
                    vu198.Parent = vu71
                    vu198.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    vu198.BackgroundTransparency = 1
                    vu198.Size = UDim2.new(1, 0, 0, 20)
                    vu198.Font = Enum.Font.GothamSemibold
                    vu198.TextColor3 = Color3.fromRGB(225, 225, 225)
                    vu198.TextSize = 13
                    vu198.Text = p197
                    vu198.TextXAlignment = Enum.TextXAlignment.Left
                    v199.PaddingLeft = UDim.new(0, 2)
                    v199.Parent = vu198
                    v199.Name = "PaddingLabel"
                    function v200.Set(_, p201)
                        vu198.Text = p201
                    end
                    return v200
                end,
                Seperator = function(_, p202)
                    local v203 = Instance.new("Frame")
                    Instance.new("Frame")
                    local v204 = Instance.new("TextLabel")
                    local v205 = Instance.new("Frame")
                    local v206 = Instance.new("UICorner")
                    v203.Name = "Seperator"
                    v203.Parent = vu71
                    v203.BackgroundColor3 = _G.Primary
                    v203.BackgroundTransparency = 1
                    v203.Size = UDim2.new(1, 0, 0, 36)
                    v204.Name = "Sep2"
                    v204.Parent = v203
                    v204.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    v204.BackgroundTransparency = 1
                    v204.AnchorPoint = Vector2.new(0.5, 1)
                    v204.Position = UDim2.new(0.5, 0, 0, 30)
                    v204.Size = UDim2.new(1, 0, 0, 36)
                    v204.Font = Enum.Font.GothamBold
                    v204.Text = p202
                    v204.TextColor3 = Color3.fromRGB(255, 255, 255)
                    v204.TextSize = 14
                    v205.Name = "Sep3"
                    v205.Parent = v203
                    v205.BackgroundColor3 = _G.Primary
                    v205.BackgroundTransparency = 0
                    v205.BorderSizePixel = 0
                    v205.AnchorPoint = Vector2.new(0.5, 0.5)
                    v205.Position = UDim2.new(0.5, 0, 0, 25)
                    v205.Size = UDim2.new(0, 39, 0, 3)
                    local v207 = game:GetService("TextService"):GetTextSize(v204.Text, v204.TextSize, v204.Font, Vector2.new(math.huge, math.huge))
                    v205.Size = UDim2.new(0, v207.X * 0.7, 0, 3)
                    v206.CornerRadius = UDim.new(0, math.huge)
                    v206.Parent = v205
                end,
                Line = function(_)
                    local v208 = Instance.new("Frame")
                    local v209 = Instance.new("Frame")
                    local v210 = Instance.new("UIGradient")
                    v208.Name = "Linee"
                    v208.Parent = vu71
                    v208.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    v208.BackgroundTransparency = 1
                    v208.Position = UDim2.new(0, 0, 0.119999997, 0)
                    v208.Size = UDim2.new(1, 0, 0, 20)
                    v209.Name = "Line"
                    v209.Parent = v208
                    v209.BackgroundColor3 = Color3.new(125, 125, 125)
                    v209.BorderSizePixel = 0
                    v209.Position = UDim2.new(0, 0, 0, 10)
                    v209.Size = UDim2.new(1, 0, 0, 1)
                    v210.Color = ColorSequence.new({
                        ColorSequenceKeypoint.new(0, _G.Dark),
                        ColorSequenceKeypoint.new(0.4, _G.Primary),
                        ColorSequenceKeypoint.new(0.5, _G.Primary),
                        ColorSequenceKeypoint.new(0.6, _G.Primary),
                        ColorSequenceKeypoint.new(1, _G.Dark)
                    })
                    v210.Parent = v209
                end
            }
        end
    }
end
return vu5