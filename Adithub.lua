--// Simple & Lightweight GUI for Mobile local ScreenGui = Instance.new("ScreenGui") local Frame = Instance.new("Frame") local Button = Instance.new("TextButton") local Title = Instance.new("TextLabel")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui") Frame.Parent = ScreenGui Frame.Size = UDim2.new(0, 150, 0, 120) Frame.Position = UDim2.new(0.5, -75, 0.1, 0) Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30) Frame.BackgroundTransparency = 0.3 Frame.BorderSizePixel = 2 Frame.Active = true Frame.Draggable = true

Title.Parent = Frame Title.Size = UDim2.new(1, 0, 0, 20) Title.Position = UDim2.new(0, 0, 0, 0) Title.Text = "ADITHUB" Title.TextSize = 18 Title.TextColor3 = Color3.fromRGB(255, 255, 255) Title.BackgroundTransparency = 1

Button.Parent = Frame Button.Size = UDim2.new(1, -10, 0, 40) Button.Position = UDim2.new(0, 5, 0, 30) Button.Text = "Start Auto Fish" Button.TextSize = 14 Button.TextColor3 = Color3.fromRGB(255, 255, 255) Button.BackgroundColor3 = Color3.fromRGB(50, 50, 50) Button.BorderSizePixel = 1

--// Auto Fishing Function local function autoFish() while wait(2) do -- Auto Cast game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.E, false, game) wait(1.5)

-- Auto Shake
    for i = 1, 5 do
        game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.A, false, game)
        wait(0.2)
        game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.D, false, game)
        wait(0.2)
    end
    
    -- Auto Reel
    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.R, false, game)
    wait(1)
    
    -- Auto Sell Fish (Depends on the game UI interaction, adjust accordingly)
    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.F, false, game)
end

end

--// FPS Boost local function fpsBoost() setfpscap(999) for _, v in pairs(game:GetDescendants()) do if v:IsA("BasePart") then v.Material = Enum.Material.SmoothPlastic end end end

--// Button Click Event Button.MouseButton1Click:Connect(function() autoFish() fpsBoost() end)

