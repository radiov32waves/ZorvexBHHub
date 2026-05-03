local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/radiov32waves/NovaLibv2/refs/heads/main/Script.lua')))()
local Player = game.Players.LocalPlayer



local PremiumUsers = {
    [2313748922] = true, -- User: Ali Ahmed
    [8014300765] = true, -- Premium User 1
    [7311487885] = true, -- Premium User 2
}

-- 🔑 RANDOMIZED KEY LIST (For Free Users)
local ValidKeys = {
    "QX92-ZT11-L04B",
    "WK88-MP44-X77R",
    "BT55-GH22-N99P",
    "JV33-PL66-K11M",
    "YQ77-RD88-C44S"
}

-- 🚀 MAIN HUB FUNCTION
function LoadScript()
    local Window = OrionLib:MakeWindow({
        Name = "LucasHub | by radiov32waves",
        HidePremium = false,
        SaveConfig = true,
        ConfigFolder = "LucasHubConfig"
    })

    -- GAME TABS
    local Tab = {
        Main = Window:MakeTab({Name = "Main", Icon = "rbxassetid://4483345998"}),
        AdoptMe = Window:MakeTab({Name = "Adopt Me", Icon = "rbxassetid://4483345998"}),
        Greenville = Window:MakeTab({Name = "Greenville", Icon = "rbxassetid://4483345998"}),
        BloxFruit = Window:MakeTab({Name = "Blox Fruit", Icon = "rbxassetid://4483345998"}),
        Night99 = Window:MakeTab({Name = "99 Night", Icon = "rbxassetid://4483345998"}),
        Settings = Window:MakeTab({Name = "Settings", Icon = "rbxassetid://4483345998"})
    }

    ----------------- MAIN -----------------
    Tab.Main:AddSection({Name = "Information"})
    Tab.Main:AddButton({
        Name = "Copy Discord Link",
        Callback = function()
            setclipboard("https://discord.gg/pscCWsvM")
            OrionLib:MakeNotification({Name = "Success", Content = "Discord link copied!", Time = 3})
        end
    })

    ----------------- ADOPT ME -----------------
    Tab.AdoptMe:AddSection({Name = "Adopt Me Scripts"})
    Tab.AdoptMe:AddButton({Name = "TbiGui Script", Callback = function() loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/c29af06acdb7a80fb239415fd322efe9.lua"))() end})
    Tab.AdoptMe:AddButton({Name = "Clone House Script", Callback = function() loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/051b9ab9e55bc6acf1ead9319bd606ec.lua"))() end})
    Tab.AdoptMe:AddButton({Name = "Ragesploit Script", Callback = function() loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/875033288c5e99d576622aced60a0c44.lua"))() end})
    Tab.AdoptMe:AddButton({Name = "Free Script", Callback = function() loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/4a873606f2053bf3067ad6da43b5baee.lua"))() end})

    ----------------- GREENVILLE -----------------
    Tab.Greenville:AddSection({Name = "Greenville Scripts"})
    Tab.Greenville:AddButton({Name = "Auto Farm", Callback = function() loadstring(game:HttpGet("https://api.xnexus.cc/request/12d2fd60e7a67b48ece6f8fce7167a1d"))() end})

    ----------------- BLOX FRUIT -----------------
    Tab.BloxFruit:AddSection({Name = "Blox Fruit Scripts"})
    Tab.BloxFruit:AddButton({Name = "Redz Hub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/tlredz/Scripts/refs/heads/main/main.luau"))({JoinTeam = "Pirates", Translator = true}) end})
    Tab.BloxFruit:AddButton({Name = "GravityHub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Main.lua"))() end})
    Tab.BloxFruit:AddButton({Name = "Kaitun", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Kaitun.lua"))() end})
    Tab.BloxFruit:AddButton({Name = "Find Fruit", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/FindFruit.lua"))() end})
    Tab.BloxFruit:AddButton({Name = "Auto Bounty", Callback = function() loadstring(game:HttpGet("https://pandadevelopment.net/virtual/file/09eeb45f4cc3ad5a"))() end})
    Tab.BloxFruit:AddButton({Name = "Teddy Hub Boss", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Teddyseetink/Haidepzai/refs/heads/main/TEDDYHUB-FREEMIUM"))() end})
    Tab.BloxFruit:AddButton({Name = "BlueXHub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/refs/heads/main/Main.lua"))() end})

    ----------------- 99 NIGHTS -----------------
    Tab.Night99:AddSection({Name = "99 Night Scripts"})
    Tab.Night99:AddButton({Name = "VapeVoidware", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/VapeVoidware/VW-Add/main/loader.lua", true))() end})

    ----------------- SETTINGS (ANTI-AFK) -----------------
    Tab.Settings:AddSection({Name = "Configuration"})
    Tab.Settings:AddToggle({
        Name = "Anti-AFK",
        Default = false,
        Callback = function(Value)
            _G.AntiAFK = Value
            if _G.AntiAFK then
                game.Players.LocalPlayer.Idled:Connect(function()
                    game:GetService("VirtualUser"):CaptureController()
                    game:GetService("VirtualUser"):ClickButton2(Vector2.new())
                end)
                OrionLib:MakeNotification({Name = "System", Content = "Anti-AFK Enabled", Time = 3})
            end
        end
    })

    OrionLib:Init()
end

-- 🛡️ ACCESS CHECK
if PremiumUsers[Player.UserId] then
    LoadScript() -- Skip Key System
else
    -- 🔑 FREE KEY SYSTEM UI
    local KeyWindow = OrionLib:MakeWindow({Name = "Key System | LucasHub", HidePremium = true})
    local VerifyTab = KeyWindow:MakeTab({Name = "Verification", Icon = "rbxassetid://4483345998"})
    local EnteredKey = ""

    VerifyTab:AddTextbox({
        Name = "Enter Key",
        Callback = function(Value) EnteredKey = Value end
    })

    VerifyTab:AddButton({
        Name = "Verify",
        Callback = function()
            local success = false
            for _, key in pairs(ValidKeys) do
                if EnteredKey == key then success = true break end
            end
            if success then
                OrionLib:Destroy()
                LoadScript()
            else
                OrionLib:MakeNotification({Name = "Error", Content = "Invalid Key!", Time = 3})
            end
        end
    })
   
    VerifyTab:AddButton({
        Name = "Get Key (Website)",
        Callback = function() setclipboard("https://radiov32waves.github.io/Key/") end
    })
    OrionLib:Init()
end