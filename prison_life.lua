local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("funi hub | Prison Life", "Midnight")
local Player = Window:NewTab("Player")
local Game = Window:NewTab("Game")

-- Movement --

local Movement = Player:NewSection("Movement")
Movement:NewSlider("WalkSpeed", "Changes your player's speed", 500, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
Movement:NewSlider("JumpPower", "Changes your player's jump power", 500, 50, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

-- Game --
local Guns = Game:NewSection("Guns")
Guns:NewDropdown("Give Gun", "Gives you a gun of your choice", {"M9", "Remington 870", "AK-47"}, function(v)
    workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver[v].ITEMPICKUP)
end)
Guns:NewDropdown("Gun Mods", "Mods the gun you're holding", {"M9", "Remington 870", "AK-47"}, function(v)
    local module = nil
    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v) then
        module = require(game:GetService("Players").LocalPlayer.Backpack[v].GunStates)
    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(v) then
        module = require(game:GetService("Players").LocalPlayer.Character[v].GunStates)
    end
    if module ~= nil then
        module["MaxAmmo"] = math.huge
        module["CurrentAmmo"] = math.huge
        module["StoredAmmo"] = math.huge
        module["FireRate"] = 0.000000000000000000000000000000000001
        module["Spread"] = 0
        module["Range"] = math.huge
        module["Bullets"] = 100
    end
end)
