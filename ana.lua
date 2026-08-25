local Players = game:GetService("Players")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Main ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "AnneSeviyorum"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui
screenGui.Visible = true

-- Background
local background = Instance.new("Frame")
background.Name = "Background"
background.Size = UDim2.new(1, 0, 1, 0)
background.Position = UDim2.new(0, 0, 0, 0)
background.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
background.BorderSizePixel = 0
background.ZIndex = 1
background.Parent = screenGui

-- Title
local titleLabel = Instance.new("TextLabel")
titleLabel.Name = "Title"
titleLabel.Size = UDim2.new(1, 0, 0.15, 0)
titleLabel.Position = UDim2.new(0, 0, 0.08, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.TextScaled = true
titleLabel.TextSize = 72
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.Text = "BİLGİSAYAR KAPANIYOR"
titleLabel.ZIndex = 10
titleLabel.Parent = screenGui

-- Countdown Timer
local countdownLabel = Instance.new("TextLabel")
countdownLabel.Name = "Countdown"
countdownLabel.Size = UDim2.new(1, 0, 0.2, 0)
countdownLabel.Position = UDim2.new(0, 0, 0.35, 0)
countdownLabel.BackgroundTransparency = 1
countdownLabel.TextScaled = true
countdownLabel.TextSize = 96
countdownLabel.Font = Enum.Font.GothamBold
countdownLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
countdownLabel.Text = "25:35:00"
countdownLabel.ZIndex = 10
countdownLabel.Parent = screenGui

-- Heart Container
local heartContainer = Instance.new("Frame")
heartContainer.Name = "HeartContainer"
heartContainer.Size = UDim2.new(0, 300, 0, 300)
heartContainer.Position = UDim2.new(0.5, -150, 0.6, -150)
heartContainer.BackgroundTransparency = 1
heartContainer.BorderSizePixel = 0
heartContainer.ZIndex = 10
heartContainer.Parent = screenGui

-- Function to create heart outline with lines
local function createHeartOutline()
    local lineThickness = 4
    local color = Color3.fromRGB(255, 107, 107)
    
    -- Left circle top
    local leftCircleTop = Instance.new("Frame")
    leftCircleTop.Name = "LeftCircleTop"
    leftCircleTop.Size = UDim2.new(0, 80, 0, 80)
    leftCircleTop.Position = UDim2.new(0, 20, 0, 0)
    leftCircleTop.BackgroundColor3 = color
    leftCircleTop.BorderSizePixel = 0
    leftCircleTop.ZIndex = 10
    leftCircleTop.Parent = heartContainer
    
    local leftCorner = Instance.new("UICorner")
    leftCorner.CornerRadius = UDim.new(1, 0)
    leftCorner.Parent = leftCircleTop
    
    -- Right circle top
    local rightCircleTop = Instance.new("Frame")
    rightCircleTop.Name = "RightCircleTop"
    rightCircleTop.Size = UDim2.new(0, 80, 0, 80)
    rightCircleTop.Position = UDim2.new(0, 200, 0, 0)
    rightCircleTop.BackgroundColor3 = color
    rightCircleTop.BorderSizePixel = 0
    rightCircleTop.ZIndex = 10
    rightCircleTop.Parent = heartContainer
    
    local rightCorner = Instance.new("UICorner")
    rightCorner.CornerRadius = UDim.new(1, 0)
    rightCorner.Parent = rightCircleTop
    
    -- Left diagonal line
    local leftLine = Instance.new("Frame")
    leftLine.Name = "LeftLine"
    leftLine.Size = UDim2.new(0, lineThickness, 0, 120)
    leftLine.Position = UDim2.new(0, 30, 0, 70)
    leftLine.BackgroundColor3 = color
    leftLine.BorderSizePixel = 0
    leftLine.ZIndex = 10
    leftLine.Parent = heartContainer
    leftLine.Rotation = -35
    
    -- Right diagonal line
    local rightLine = Instance.new("Frame")
    rightLine.Name = "RightLine"
    rightLine.Size = UDim2.new(0, lineThickness, 0, 120)
    rightLine.Position = UDim2.new(0, 240, 0, 70)
    rightLine.BackgroundColor3 = color
    rightLine.BorderSizePixel = 0
    rightLine.ZIndex = 10
    rightLine.Parent = heartContainer
    rightLine.Rotation = 35
    
    -- Bottom point line
    local bottomLine = Instance.new("Frame")
    bottomLine.Name = "BottomLine"
    bottomLine.Size = UDim2.new(0, lineThickness, 0, 100)
    bottomLine.Position = UDim2.new(0, 148, 0, 150)
    bottomLine.BackgroundColor3 = color
    bottomLine.BorderSizePixel = 0
    bottomLine.ZIndex = 10
    bottomLine.Parent = heartContainer
    
    -- Center emoji
    local emojiLabel = Instance.new("TextLabel")
    emojiLabel.Name = "Emoji"
    emojiLabel.Size = UDim2.new(1, 0, 1, 0)
    emojiLabel.Position = UDim2.new(0, 0, 0, 0)
    emojiLabel.BackgroundTransparency = 1
    emojiLabel.TextScaled = true
    emojiLabel.TextSize = 120
    emojiLabel.Font = Enum.Font.GothamBold
    emojiLabel.TextColor3 = Color3.fromRGB(255, 179, 186)
    emojiLabel.Text = "❤️"
    emojiLabel.ZIndex = 11
    emojiLabel.Parent = heartContainer
    
    return heartContainer
end

-- Create the drawn heart
createHeartOutline()

-- Love Text
local loveLabel = Instance.new("TextLabel")
loveLabel.Name = "Love"
loveLabel.Size = UDim2.new(1, 0, 0.12, 0)
loveLabel.Position = UDim2.new(0, 0, 0.83, 0)
loveLabel.BackgroundTransparency = 1
loveLabel.TextScaled = true
loveLabel.TextSize = 64
loveLabel.Font = Enum.Font.GothamBold
loveLabel.TextColor3 = Color3.fromRGB(255, 179, 186)
loveLabel.Text = "Seni Seviyorum Anne"
loveLabel.ZIndex = 10
loveLabel.Parent = screenGui

-- Toggle Button
local toggleButton = Instance.new("TextButton")
toggleButton.Name = "ToggleButton"
toggleButton.Size = UDim2.new(0, 80, 0, 80)
toggleButton.Position = UDim2.new(0.5, -40, 0.92, 0)
toggleButton.BackgroundColor3 = Color3.fromRGB(255, 107, 107)
toggleButton.TextScaled = true
toggleButton.TextSize = 32
toggleButton.Font = Enum.Font.GothamBold
toggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
toggleButton.Text = "×"
toggleButton.BorderSizePixel = 0
toggleButton.ZIndex = 20
toggleButton.Parent = screenGui

local toggleCorner = Instance.new("UICorner")
toggleCorner.CornerRadius = UDim.new(0.5, 0)
toggleCorner.Parent = toggleButton

-- Shared countdown state
local timeLeft = 25 * 3600 + 35 * 60

-- Countdown function (runs in background always)
local function updateCountdown()
    while true do
        local hours = math.floor(timeLeft / 3600)
        local minutes = math.floor((timeLeft % 3600) / 60)
        local seconds = timeLeft % 60
        
        local display = string.format("%02d:%02d:%02d", hours, minutes, seconds)
        
        if countdownLabel.Parent then
            countdownLabel.Text = display
        end
        
        timeLeft = timeLeft - 1
        
        if timeLeft < 0 then
            timeLeft = 25 * 3600 + 35 * 60
        end
        
        wait(1)
    end
end

-- Heart beat animation
local function beatHeart()
    while true do
        local startTime = tick()
        local duration = 0.8
        
        while heartContainer.Parent and (tick() - startTime) < duration do
            local elapsed = tick() - startTime
            local progress = elapsed / duration
            
            local scale
            if progress < 0.25 then
                scale = 1 + (progress / 0.25) * 0.3
            elseif progress < 0.5 then
                scale = 1.3 - ((progress - 0.25) / 0.25) * 0.3
            else
                scale = 1
            end
            
            if heartContainer.Parent then
                heartContainer.Size = UDim2.new(0, 300 * scale, 0, 300 * scale)
                heartContainer.Position = UDim2.new(0.5, -150 * scale, 0.6, -150 * scale)
            end
            
            wait(0.05)
        end
        
        wait(0.2)
    end
end

-- Pulse animation for love text
local function pulseAnimation()
    while true do
        local startTime = tick()
        local duration = 2
        
        while loveLabel.Parent and (tick() - startTime) < duration do
            local elapsed = tick() - startTime
            local progress = elapsed / duration
            
            if progress < 0.5 then
                loveLabel.TextTransparency = (progress * 2) * 0.3
            else
                loveLabel.TextTransparency = ((1 - progress) * 2) * 0.3
            end
            
            wait(0.05)
        end
    end
end

-- Floating hearts background
local function createFloatingHearts()
    local floatContainer = Instance.new("Frame")
    floatContainer.Name = "FloatContainer"
    floatContainer.Size = UDim2.new(1, 0, 1, 0)
    floatContainer.Position = UDim2.new(0, 0, 0, 0)
    floatContainer.BackgroundTransparency = 1
    floatContainer.BorderSizePixel = 0
    floatContainer.ZIndex = 2
    floatContainer.Parent = screenGui
    
    while true do
        local heart = Instance.new("TextLabel")
        heart.Name = "FloatingHeart"
        heart.Size = UDim2.new(0, 40, 0, 40)
        heart.BackgroundTransparency = 1
        heart.TextScaled = true
        heart.Font = Enum.Font.GothamBold
        heart.TextColor3 = Color3.fromRGB(255, 107, 107)
        heart.Text = "❤️"
        heart.ZIndex = 2
        
        local randomX = math.random(0, 100)
        heart.Position = UDim2.new(randomX / 100, 0, 1.1, 0)
        heart.Parent = floatContainer
        
        local startTime = tick()
        local duration = 5
        
        while heart.Parent and (tick() - startTime) < duration do
            local elapsed = tick() - startTime
            local progress = elapsed / duration
            
            local newY = 1.1 - (progress * 1.3)
            
            heart.Position = UDim2.new(randomX / 100, 0, newY, 0)
            heart.TextTransparency = progress
            
            wait(0.05)
        end
        
        if heart.Parent then
            heart:Destroy()
        end
        
        wait(0.7)
    end
end

-- Toggle screen visibility
toggleButton.MouseButton1Click:Connect(function()
    screenGui.Visible = not screenGui.Visible
    if screenGui.Visible then
        toggleButton.Text = "×"
    else
        toggleButton.Text = "✓"
    end
end)

-- Start all animations
task.spawn(updateCountdown)
task.spawn(beatHeart)
task.spawn(pulseAnimation)
task.spawn(createFloatingHearts)
