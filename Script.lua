local Nova = loadstring(game:HttpGet("https://raw.githubusercontent.com/radiov32waves/NovaLibv2/refs/heads/main/Script.lua"))()
local Player = game.Players.LocalPlayer

-- PREMIUM WHITELIST
local PremiumUsers = {
    [2313748922] = true, -- Ali Ahmed
    [8014300765] = true,
    [7311487885] = true,
}

-- KEY LIST
local ValidKeys = {
    "QX92-ZT11-L04B", "WK88-MP44-X77R", "BT55-GH22-N99P", "JV33-PL66-K11M", "YQ77-RD88-C44S"
}

function LoadScript()
    local Window = Nova:MakeWindow({
        Name = "LucasHub",
        IntroEnabled = true,
        IntroText = "Welcome to LucasHub",
        SaveConfig = true,
        ConfigFolder = "LucasHub_Data"
    })

    -- TABS
    local MainTab = Window:MakeTab({Name = "Main", Icon = "rbxassetid://4483345998"})
    local AdoptMeTab = Window:MakeTab({Name = "Adopt Me", Icon = "rbxassetid://4483345998"})
    local GreenvilleTab = Window:MakeTab({Name = "Greenville", Icon = "rbxassetid://4483345998"})
    local BloxFruitTab = Window:MakeTab({Name = "Blox Fruit", Icon = "rbxassetid://4483345998"})
    local Night99Tab = Window:MakeTab({Name = "99 Night", Icon = "rbxassetid://4483345998"})
    local SettingsTab = Window:MakeTab({Name = "Settings", Icon = "rbxassetid://4483345998"})

    -- CONTENT: MAIN
    MainTab:AddSection({Name = "Information"})
    MainTab:AddButton({
        Name = "Copy Discord Link",
        Callback = function()
            setclipboard("https://discord.gg/pscCWsvM")
            Nova:MakeNotification({Name = "Success", Content = "Link copied!", Time = 3})
        end
    })

    -- CONTENT: ADOPT ME
    AdoptMeTab:AddSection({Name = "Loaders"})
    AdoptMeTab:AddButton({Name = "TbiGui", Callback = function() loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/c29af06acdb7a80fb239415fd322efe9.lua"))() end})
    AdoptMeTab:AddButton({Name = "Clone House", Callback = function() loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/051b9ab9e55bc6acf1ead9319bd606ec.lua"))() end})
    AdoptMeTab:AddButton({Name = "Ragesploit", Callback = function() loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/875033288c5e99d576622aced60a0c44.lua"))() end})

    -- CONTENT: BLOX FRUIT
    BloxFruitTab:AddSection({Name = "Loaders"})
    BloxFruitTab:AddButton({Name = "Redz Hub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/tlredz/Scripts/refs/heads/main/main.luau"))({JoinTeam = "Pirates", Translator = true}) end})
    BloxFruitTab:AddButton({Name = "BlueXHub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/refs/heads/main/Main.lua"))() end})

    -- SETTINGS (ANTI-AFK)
    SettingsTab:AddSection({Name = "Universal"})
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

-- ACCESS LOGIC
if PremiumUsers[Player.UserId] then
    LoadScript()
else
    local KeyWindow = Nova:MakeWindow({Name = "Key System | LucasHub", IntroEnabled = false})
    local VerifyTab = KeyWindow:MakeTab({Name = "Verify", Icon = "rbxassetid://4483345998"})
    local EnteredKey = ""

    VerifyTab:AddButton({
        Name = "Get Key",
        Callback = function() 
            setclipboard("https://radiov32waves.github.io/Key/") 
            Nova:MakeNotification({Name = "System", Content = "URL Copied!", Time = 2})
        end
    })

    VerifyTab:AddTextbox({
        Name = "Enter Key",
        Default = "",
        Callback = function(v) EnteredKey = v end
    })

    VerifyTab:AddButton({
        Name = "Verify",
        Callback = function()
            local found = false
            for _, k in pairs(ValidKeys) do if EnteredKey == k then found = true end end

            if found then
                Nova:MakeNotification({Name = "Success", Content = "Access Granted", Time = 2})
                task.wait(1)
                Nova:Destroy()
                LoadScript()
            else
                Nova:MakeNotification({Name = "Error", Content = "Invalid Key", Time = 3})
            end
        end
    })
end
