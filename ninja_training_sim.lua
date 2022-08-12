local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("funi hub | Ninja Training Simulator", "Midnight")

local AutomationTab = Window:NewTab("Automation")
local AutomationSection = AutomationTab:NewSection("Automation")

AutomationSection:NewToggle("Auto Clicker", "Automatically clicks for you", function(state)
    getgenv().AutoClicker = state
    while true do
        if not getgenv().AutoClicker then return end
        game:GetService("ReplicatedStorage").Events.Click:FireServer()
        wait(0.01)
    end
end)

AutomationSection:NewButton("Auto Unlock Belts", "Automatically unlocks all belts for you", function()
    game:GetService("ReplicatedStorage").Functions.Rank:InvokeServer(1)
    game:GetService("ReplicatedStorage").Functions.Rank:InvokeServer(2)
    game:GetService("ReplicatedStorage").Functions.Rank:InvokeServer(3)
    game:GetService("ReplicatedStorage").Functions.Rank:InvokeServer(4)
    game:GetService("ReplicatedStorage").Functions.Rank:InvokeServer(5)
    game:GetService("ReplicatedStorage").Functions.Rank:InvokeServer(6)
    game:GetService("ReplicatedStorage").Functions.Rank:InvokeServer(7)
    game:GetService("ReplicatedStorage").Functions.Rank:InvokeServer(8)
    game:GetService("ReplicatedStorage").Functions.Rank:InvokeServer(9)
    game:GetService("ReplicatedStorage").Functions.Rank:InvokeServer(10)
    game:GetService("ReplicatedStorage").Functions.Rank:InvokeServer(11)
    game:GetService("ReplicatedStorage").Functions.Rank:InvokeServer(12)
    game:GetService("ReplicatedStorage").Functions.Rank:InvokeServer(13)
end)

local TeleportsTab = Window:NewTab("Teleports")
local IslandTeleports = TeleportsTab:NewSection("Islands")

IslandTeleports:NewButton("Spawn", "Teleports to spawn island", function()
    game:GetService("ReplicatedStorage").Events.Teleport:FireServer("Teleport", "Spawn")
end)

IslandTeleports:NewButton("Ocean", "Teleports to ocean island", function()
    game:GetService("ReplicatedStorage").Events.Teleport:FireServer("Teleport", "Ocean")
end)

IslandTeleports:NewButton("Volcano", "Teleports to volcano island", function()
    game:GetService("ReplicatedStorage").Events.Teleport:FireServer("Teleport", "Volcano")
end)

IslandTeleports:NewButton("Forest (ninjitsu)", "Teleports to forest island", function()
    game:GetService("ReplicatedStorage").Events.Teleport:FireServer("Teleport", "Forest")
end)

IslandTeleports:NewButton("Candy", "Teleports to candy island", function()
    game:GetService("ReplicatedStorage").Events.Teleport:FireServer("Teleport", "Candy")
end)

IslandTeleports:NewButton("Cyber", "Teleports to cyber island", function()
    game:GetService("ReplicatedStorage").Events.Teleport:FireServer("Teleport", "Cyber")
end)

IslandTeleports:NewButton("Desert", "Teleports to desert island", function()
    game:GetService("ReplicatedStorage").Events.Teleport:FireServer("Teleport", "Desert")
end)
