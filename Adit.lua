--// GUI + Auto Fishing Setup local ScreenGui = Instance.new("ScreenGui") local Frame = Instance.new("Frame") local Title = Instance.new("TextLabel") local FishingButton = Instance.new("TextButton") local AutoShake = Instance.new("TextButton") local AutoReel = Instance.new("TextButton") local Config = { AutoCast = false, AutoShake = false, AutoReel = false }

-- Parent to PlayerGui ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui") Frame.Parent = ScreenGui Frame.Size = UDim2.new(0, 250, 0, 200) Frame.Position = UDim2.new(0.02, 0, 0.2, 0) Frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20) Frame.BorderSizePixel = 2 Frame.Active = true Frame.Draggable = true

Title.Parent = Frame Title.Size = UDim2.new(1, 0, 0, 40) Title.Position = UDim2.new(0, 0, 0, 0) Title.Text = "ADITHUB Fishing" Title.TextSize = 18 Title.TextColor3 = Color3.fromRGB(255, 255, 255) Title.BackgroundColor3 = Color3.fromRGB(40, 40, 40)

-- Function to create buttons def createButton(text, yOffset, configKey) local button = Instance.new("TextButton") button.Parent = Frame button.Size = UDim2.new(0.9, 0, 0, 40) button.Position = UDim2.new(0.05, 0, 0, yOffset) button.Text = text .. " [OFF]" button.TextSize = 16 button.TextColor3 = Color3.fromRGB(255, 255, 255) button.BackgroundColor3 = Color3.fromRGB(50, 50, 50) button.BorderSizePixel = 1

button.MouseButton1Click:Connect(function()
    Config[configKey] = not Config[configKey]
    button.Text = text .. (Config[configKey] and " [ON]" or " [OFF]")
end)

return button

end

FishingButton = createButton("Auto Cast", 50, "AutoCast") AutoShake = createButton("Auto Shake", 100, "AutoShake") AutoReel = createButton("Auto Reel", 150, "AutoReel")

-- Auto Functions spawn(function() while wait(2) do if Config.AutoCast then game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.E, false, game) end if Config.AutoShake then game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.A, false, game) wait(0.2) game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.D, false, game) end if Config.AutoReel then game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.R, false, game) end end end)

