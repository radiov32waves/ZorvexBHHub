local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/jensonhirst/Orion/main/source')))()

-- 1. KEY SETTINGS
local ValidKeys = {
    "9999",
    "8F2R7K9A1Q", "3M5V6N8X2P", "9L1B4C7Z6W", "2S9XPBUI5Z",
    "7H3J5K2M9N", "4G6D8S1A3Q", "5F9Y2H4K7L", "1P8O3I5U6Y",
    "6T4R2E9W1Q", "2N7M4B6V8C"
}

local EnteredKey = ""

-- 2. MAIN HUB FUNCTION (YOUR ORIGINAL SCRIPT)
function LoadScript()
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/jensonhirst/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({
        Name = "Key System | ZorvexBH Hub⚡ | by radiov32waves", 
        HidePremium = false, 
        SaveConfig = true, 
        ConfigFolder = "OrionTest"
    })

    OrionLib:MakeNotification({
        Name = "Success!",
        Content = "Welcome to ZorvexBH Hub",
        Image = "rbxassetid://4483345998",
        Time = 10
    })

    local Tab = {
        Main = Window:MakeTab({Name = "Main", Icon = "rbxassetid://4483345998"}),
        s1 = Window:MakeTab({Name = "Adoptme", Icon = "rbxassetid://4483345998"}),
        s2 = Window:MakeTab({Name = "Greenville", Icon = "rbxassetid://4483345998"}),
        s3 = Window:MakeTab({Name = "BloxFruit", Icon = "rbxassetid://4483345998"}),
    }

    ----------------- MAIN -----------------
    Tab.Main:AddSection({Name = "Information"})
    Tab.Main:AddParagraph("My Telegram Channel","ZorvexBHHub")
    Tab.Main:AddButton({
        Name = "Copy Telegram Link",
        Callback = function()
            setclipboard("t.me/ZorvexBHHub")
            OrionLib:MakeNotification({Name = "Copied", Content = "Telegram link copied!", Time = 3})
        end
    })

    ----------------- ADOPT ME -----------------
    Tab.s1:AddSection({Name = "Adoptme"})
    Tab.s1:AddButton({Name = "TbiGui Script", Callback = function() loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/c29af06acdb7a80fb239415fd322efe9.lua"))() end})
    Tab.s1:AddButton({Name = "Clone House Script", Callback = function() loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/051b9ab9e55bc6acf1ead9319bd606ec.lua"))() end})
    Tab.s1:AddButton({Name = "Free Script", Callback = function() loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/4a873606f2053bf3067ad6da43b5baee.lua"))() end})

    ----------------- GREENVILLE -----------------
    Tab.s2:AddSection({Name = "Greenville"})
    Tab.s2:AddButton({Name = "Auto Farm", Callback = function() loadstring(game:HttpGet("https://api.xnexus.cc/request/12d2fd60e7a67b48ece6f8fce7167a1d"))() end})

    ----------------- BLOX FRUIT -----------------
    Tab.s3:AddSection({Name = "BloxFruit"})
    Tab.s3:AddButton({Name = "Redz Hub Script", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/tlredz/Scripts/refs/heads/main/main.luau"))({JoinTeam = "Pirates", Translator = true}) end})
    Tab.s3:AddButton({Name = "GravityHub Script", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Main.lua"))() end})
    Tab.s3:AddButton({Name = "Kaitun Script", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Kaitun.lua"))() end})
    Tab.s3:AddButton({Name = "Find Fruit Script", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/FindFruit.lua"))() end})
    Tab.s3:AddButton({Name = "Auto Bounty Script", Callback = function() loadstring(game:HttpGet("https://pandadevelopment.net/virtual/file/09eeb45f4cc3ad5a"))() end})
    Tab.s3:AddButton({Name = "Teddy Hub Boss", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Teddyseetink/Haidepzai/refs/heads/main/TEDDYHUB-FREEMIUM"))() end})
    Tab.s3:AddButton({Name = "BlueXHub Script", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/refs/heads/main/Main.lua"))() end})

    OrionLib:Init()
end

-- 3. KEY SYSTEM UI
local KeyWindow = OrionLib:MakeWindow({Name = "Key System | ZorvexBH Hub⚡", HidePremium = true, SaveConfig = false})

local HelpTab = KeyWindow:MakeTab({Name = "How to get Key", Icon = "rbxassetid://4483345998"})
HelpTab:AddButton({
    Name = "Copy Telegram Link",
    Callback = function()
        setclipboard("t.me/ZorvexBHHub")
        OrionLib:MakeNotification({Name = "Copied", Content = "Telegram link copied!", Time = 5})
    end
})

local VerifyTab = KeyWindow:MakeTab({Name = "Verification", Icon = "rbxassetid://4483345998"})
VerifyTab:AddSection({Name = "Verification Tips"})
VerifyTab:AddParagraph("Correct Way", "Enter key exactly as shown. No spaces. Case-sensitive.")

VerifyTab:AddTextbox({
    Name = "Enter Key",
    Default = "",
    TextDisappear = false,
    Callback = function(Value) EnteredKey = Value end
})

VerifyTab:AddButton({
    Name = "Check Key",
    Callback = function()
        local success = false
        for _, key in pairs(ValidKeys) do
            if EnteredKey == key then
                success = true
                break
            end
        end

        if success then
            local now = os.date("*t")
            local hours = 23 - now.hour
            local mins = 59 - now.min

            OrionLib:MakeNotification({
                Name = "Access Granted", 
                Content = "Time left: " .. hours .. "h " .. mins .. "m", 
                Time = 5
            })
            task.wait(1)
            OrionLib:Destroy()
            task.wait(1)
            LoadScript()
        else
            OrionLib:MakeNotification({Name = "Invalid", Content = "Check Telegram for valid keys.", Time = 5})
        end
    end
})

OrionLib:Init()