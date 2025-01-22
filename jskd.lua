local espGui = Instance.new("BillboardGui")
espGui.AlwaysOnTop = true
espGui.Enabled = true
espGui.Name = "ESP"
espGui.Size = UDim2.new(0, 5, 0, 10)
espGui.StudsOffset = Vector3.new(0, 3, 0)
espGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local espFrame = Instance.new("Frame")
espFrame.BackgroundTransparency = 0.5
espFrame.BackgroundColor3 = Color3.new(0, 1, 0) -- Green color
espFrame.Size = UDim2.new(1, 0, 1, 0)
espFrame.Parent = espGui

local function updateESP()
    for _, player in ipairs(game.Players:GetPlayers()) do
        if player ~= game.Players.LocalPlayer then
            local character = player.Character
            if character and character:FindFirstChild("HumanoidRootPart") then
                local espClone = espGui:Clone()
                espClone.Parent = character.Head
            end
        end
    end
end

game.Players.PlayerAdded:Connect(updateESP)

UpdateESP()
