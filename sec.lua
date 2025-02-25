local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

humanoid.HealthChanged:Connect(function(health)
    if humanoid.FloorMaterial ~= Enum.Material.Air and health < humanoid.MaxHealth then
        humanoid.Health = humanoid.MaxHealth
    end
end)
