local Nova = loadstring(game:HttpGet("https://raw.githubusercontent.com/radiov32waves/NovaLibv2/refs/heads/main/Script.lua"))()
local Player = game.Players.LocalPlayer

-- RANDOMIZED KEY LIST
local ValidKeys = {
    "QX92-ZT11-L04B", "WK88-MP44-X77R", "BT55-GH22-N99P", "JV33-PL66-K11M", "YQ77-RD88-C44S"
}

function LoadScript()
    local Window = Nova:MakeWindow({
        Name = "LucasHub | by radiov32waves",
        IntroEnabled = true,
        IntroText = "Welcome back, " .. Player.Name,
        SaveConfig = true,
        ConfigFolder = "LucasHubConfig",
        PremiumIds = {2313748922, 8014300765, 7311487885} -- Integrated Premium IDs
    })

    -- TABS
    local MainTab = Window:MakeTab({Name = "Main", Icon = "rbxassetid://4483345998"})
    local AdoptMeTab = Window:MakeTab({Name = "Adopt Me", Icon = "rbxassetid://4483345998"})
    local GreenvilleTab = Window:MakeTab({Name = "Greenville", Icon = "rbxassetid://4483345998"})
    local BloxFruitTab = Window:MakeTab({Name = "Blox Fruit", Icon = "rbxassetid://4483345998"})
    local Night99Tab = Window:MakeTab({Name = "99 Night", Icon = "rbxassetid://4483345998"})
    local SettingsTab = Window:MakeTab({Name = "Settings", Icon = "rbxassetid://4483345998"})

    -- MAIN
    MainTab:AddSection({Name = "Information"})
    MainTab:AddParagraph("Hub Description", "Welcome to LucasHub. This script is manually maintained for the best mobile experience. Join our Discord for updates and new scripts.")
    MainTab:AddButton({
        Name = "Copy Discord Link",
        Callback = function()
            setclipboard("https://discord.gg/pscCWsvM")
            Nova:MakeNotification({Name = "Success", Content = "Discord link copied!", Time = 3})
        end
    })

    -- ADOPT ME
    AdoptMeTab:AddSection({Name = "Adopt Me Scripts"})
    AdoptMeTab:AddButton({Name = "TbiGui Script", Callback = function() loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/c29af06acdb7a80fb239415fd322efe9.lua"))() end})
    AdoptMeTab:AddButton({Name = "Clone House Script", Callback = function() loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/051b9ab9e55bc6acf1ead9319bd606ec.lua"))() end})
    AdoptMeTab:AddButton({Name = "Ragesploit Script", Callback = function() loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/875033288c5e99d576622aced60a0c44.lua"))() end})
    AdoptMeTab:AddButton({Name = "Free Script", Callback = function() loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/4a873606f2053bf3067ad6da43b5baee.lua"))() end})

    -- GREENVILLE
    GreenvilleTab:AddSection({Name = "Greenville Scripts"})
    GreenvilleTab:AddButton({Name = "Auto Farm", Callback = function() loadstring(game:HttpGet("https://api.xnexus.cc/request/12d2fd60e7a67b48ece6f8fce7167a1d"))() end})

    -- BLOX FRUIT
    BloxFruitTab:AddSection({Name = "Blox Fruit Scripts"})
    BloxFruitTab:AddButton({Name = "Redz Hub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/tlredz/Scripts/refs/heads/main/main.luau"))({JoinTeam = "Pirates", Translator = true}) end})
    BloxFruitTab:AddButton({Name = "BlueXHub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/refs/heads/main/Main.lua"))() end})
    BloxFruitTab:AddButton({Name = "GravityHub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Main.lua"))() end})
    BloxFruitTab:AddButton({Name = "Kaitun", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Kaitun.lua"))() end})
    BloxFruitTab:AddButton({Name = "Find Fruit", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/FindFruit.lua"))() end})
    BloxFruitTab:AddButton({Name = "Auto Bounty", Callback = function() loadstring(game:HttpGet("https://pandadevelopment.net/virtual/file/09eeb45f4cc3ad5a"))() end})
    BloxFruitTab:AddButton({Name = "Teddy Hub Boss", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Teddyseetink/Haidepzai/refs/heads/main/TEDDYHUB-FREEMIUM"))() end})

    -- 99 NIGHTS
    Night99Tab:AddSection({Name = "99 Night Scripts"})
    Night99Tab:AddButton({Name = "VapeVoidware", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/VapeVoidware/VW-Add/main/loader.lua", true))() end})

    -- ANTI-AFK
    SettingsTab:AddSection({Name = "Configuration"})
    SettingsTab:AddToggle({
        Name = "Anti-AFK",
        Default = false,
        Callback = function(Value)
            _G.AntiAFK = Value
            task.spawn(function()
                while _G.AntiAFK do
                    game:GetService("VirtualUser"):CaptureController()
                    game:GetService("VirtualUser"):ClickButton2(Vector2.new())
                    task.wait(60)
                end
            end)
        end
    })

    Nova:Init()
end

-- KEY SYSTEM / PREMIUM CHECK
local isPremium = table.find({2313748922, 8014300765, 7311487885}, Player.UserId)

if isPremium then
    LoadScript()
else
    local KeyWindow = Nova:MakeWindow({Name = "Key System | LucasHub", IntroEnabled = false})
    local VerifyTab = KeyWindow:MakeTab({Name = "Verify", Icon = "rbxassetid://4483345998"})
    local EnteredKey = ""

    VerifyTab:AddButton({
        Name = "Get Key (Website)",
        Callback = function() 
            setclipboard("https://radiov32waves.github.io/Key/") 
            Nova:MakeNotification({Name = "System", Content = "Key link copied!", Time = 3})
        end
    })

    VerifyTab:AddTextbox({
        Name = "Enter Key",
        Default = "",
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
                Nova:MakeNotification({Name = "Success", Content = "Key Verified!", Time = 2})
                task.wait(1)
                Nova:Destroy()
                LoadScript()
            else
                Nova:MakeNotification({Name = "Error", Content = "Invalid Key!", Time = 3})
            end
        end
    })
    Nova:Init()
end