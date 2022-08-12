local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local p = game:GetService("Players").LocalPlayer
local c = p.Character
local h = c.Humanoid
local Window = Library.CreateLib("funi hub", "Midnight")

-- AUTOMATION TAB

local Automation = Window:NewTab("Automation")
-- Automation Section
local AutomationSection = Automation:NewSection("Automation")
AutomationSection:NewToggle("Auto Workout", "Automatically works out when on bench.", function(state)
    getgenv().AutoWorkout = state
    while true do
        if not getgenv().AutoWorkout then return end
        game:GetService("ReplicatedStorage").StrongMan_UpgradeStrength:InvokeServer(1)
        wait(0.01)
    end
end)

-- TELEPORTS

local Teleports = Window:NewTab("Teleports")
-- Teleports Section
local Area1 = Teleports:NewSection("Area 1")
Area1:NewButton("Feather", "Teleports you to the feather in area 1", function()
    c.PrimaryPart.CFrame = CFrame.new(86.5583572, 10.6612549, -180.076813, -1, 0, 0, 0, 1, 0, 0, 0, -1)
end)

Area1:NewButton("Rubber Duck", "Teleports you to the rubber duck in area 1", function()
    c.PrimaryPart.CFrame = CFrame.new(56.3041229, 11.3312607, -180.966431, -1, 0, 0, 0, 1, 0, 0, 0, -1)
end)

Area1:NewButton("Toilet", "Teleports you to the toilet in area 1", function()
    c.PrimaryPart.CFrame = CFrame.new(25.9521523, 12.9536791, -181.463501, 0, 0, 1, 0, 1, -0, -1, 0, 0)
end)

Area1:NewButton("Finish Line", "Teleports you to the finish line in area 1", function()
    c.PrimaryPart.CFrame = CFrame.new(87, 10.0799999, -129, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)
