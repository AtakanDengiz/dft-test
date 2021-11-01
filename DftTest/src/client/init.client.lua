local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Knit = require(ReplicatedStorage:WaitForChild("Knit"))

Knit.AddControllers(ReplicatedStorage:WaitForChild("Controllers"))
Knit.Start()

local function disableReset()
    repeat
        local success = pcall(function()
            game.StarterGui:SetCore("ResetButtonCallback", false)
        end)
        task.wait(0.02)
    until
        success
end

disableReset()