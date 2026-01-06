--================================================--
-- GUI REMOVER + ANTI BLUR + SAFE HUD
--================================================--

local Players     = game:GetService("Players")
local CoreGui     = game:GetService("CoreGui")
local Lighting    = game:GetService("Lighting")
local RunService  = game:GetService("RunService")

local lp = Players.LocalPlayer
local SAFE_GUI_NAME = "_SAFE_OVERLAY"

--================================================--
-- SAFE HUD (IMORTAL)
--================================================--

local function createSafeGui()
    if lp.PlayerGui:FindFirstChild(SAFE_GUI_NAME) then return end

    local gui = Instance.new("ScreenGui")
    gui.Name = SAFE_GUI_NAME
    gui.ResetOnSpawn = false
    gui.IgnoreGuiInset = true
    gui.Parent = lp.PlayerGui

    local main = Instance.new("Frame")
    main.Size = UDim2.new(0, 360, 0, 140)
    main.Position = UDim2.new(0.5, -180, 0.15, 0)
    main.BackgroundColor3 = Color3.new(0, 0, 0)
    main.BackgroundTransparency = 0.35
    main.BorderSizePixel = 0
    main.Parent = gui
    Instance.new("UICorner", main).CornerRadius = UDim.new(0, 10)

    local minimize = Instance.new("TextButton")
    minimize.Size = UDim2.new(0, 30, 0, 30)
    minimize.Position = UDim2.new(1, -35, 0, 5)
    minimize.Text = "-"
    minimize.Font = Enum.Font.GothamBold
    minimize.TextSize = 20
    minimize.TextColor3 = Color3.new(1, 1, 1)
    minimize.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    minimize.BackgroundTransparency = 0.2
    minimize.BorderSizePixel = 0
    minimize.Parent = main
    Instance.new("UICorner", minimize).CornerRadius = UDim.new(1, 0)

    local content = Instance.new("Frame")
    content.Size = UDim2.new(1, -20, 1, -45)
    content.Position = UDim2.new(0, 10, 0, 40)
    content.BackgroundTransparency = 1
    content.Parent = main

    local layout = Instance.new("UIListLayout", content)
    layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    layout.Padding = UDim.new(0, 6)

    local function label(text, color)
        local l = Instance.new("TextLabel")
        l.Size = UDim2.new(1, 0, 0, 26)
        l.BackgroundTransparency = 1
        l.TextScaled = true
        l.Font = Enum.Font.GothamBold
        l.TextColor3 = color
        l.Text = text
        l.Parent = content
        return l
    end

    label("upando e pegando frutas pô Shadow", Color3.new(1,1,1))
    local lifeLabel  = label("Vida: ...",  Color3.fromRGB(0,255,0))
    local levelLabel = label("Level: ...", Color3.fromRGB(0,255,0))

    local minimized = false
    minimize.MouseButton1Click:Connect(function()
        minimized = not minimized
        content.Visible = not minimized
        minimize.Text = minimized and "+" or "-"
        main.Size = minimized and UDim2.new(0, 360, 0, 40)
                               or  UDim2.new(0, 360, 0, 140)
    end)

    -- VIDA
    local function hookHumanoid(char)
        local hum = char:WaitForChild("Humanoid", 5)
        if not hum then return end

        local function update()
            lifeLabel.Text = "Vida: " .. math.floor(hum.Health)
        end

        update()
        hum.HealthChanged:Connect(update)
    end

    if lp.Character then hookHumanoid(lp.Character) end
    lp.CharacterAdded:Connect(hookHumanoid)

    -- LEVEL
    task.spawn(function()
        local data = lp:WaitForChild("Data", 10)
        local lvl = data and data:WaitForChild("Level", 10)
        if not lvl then return end

        levelLabel.Text = "Level: " .. lvl.Value
        lvl:GetPropertyChangedSignal("Value"):Connect(function()
            levelLabel.Text = "Level: " .. lvl.Value
        end)
    end)
end

createSafeGui()

--================================================--
-- GUI DESTROYER (IGNORA SAFE HUD)
--================================================--

local function destroyGui(obj)
    if obj:IsA("ScreenGui")
    or obj:IsA("BillboardGui")
    or obj:IsA("SurfaceGui") then
        if obj.Name == SAFE_GUI_NAME then return end
        pcall(function() obj:Destroy() end)
    end
end

-- LIMPEZA INICIAL
for _, v in ipairs(lp:WaitForChild("PlayerGui"):GetDescendants()) do
    destroyGui(v)
end
for _, v in ipairs(CoreGui:GetDescendants()) do
    destroyGui(v)
end

-- ANTI RECRIAÇÃO
lp.PlayerGui.DescendantAdded:Connect(destroyGui)
CoreGui.DescendantAdded:Connect(destroyGui)

--================================================--
-- ANTI BLUR
--================================================--

for _, v in ipairs(Lighting:GetChildren()) do
    if v:IsA("BlurEffect") then
        pcall(function() v:Destroy() end)
    end
end

Lighting.ChildAdded:Connect(function(v)
    if v:IsA("BlurEffect") then
        task.wait()
        pcall(function() v:Destroy() end)
    end
end)

--================================================--
-- FAILSAFE CAMERA
--================================================--

local cam = workspace.CurrentCamera
RunService.RenderStepped:Connect(function()
    if cam then
        cam.FieldOfView = cam.FieldOfView
    end
end)
