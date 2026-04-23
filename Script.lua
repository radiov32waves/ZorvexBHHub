local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/jensonhirst/Orion/main/source')))()

-- 1. YOUR KEY LIST
local ValidKeys = {
    "9999",
    "8F2R7K9A1Q", "3M5V6N8X2P", "9L1B4C7Z6W", "2S9XPBUI5Z",
    "7H3J5K2M9N", "4G6D8S1A3Q", "5F9Y2H4K7L", "1P8O3I5U6Y",
    "6T4R2E9W1Q", "2N7M4B6V8C"
}

local EnteredKey = ""

-- 2. MAIN HUB FUNCTION
function LoadScript()
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/jensonhirst/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "ZorvexBH Hub⚡", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

    OrionLib:MakeNotification({
        Name = "Notification!",
        Content = "Thanks For Using radiov32waves Script",
        Image = "rbxassetid://4483345998",
        Time = 10
    })

    local Tab = {
        Main = Window:MakeTab({Name = "Main",Icon = "rbxassetid://4483345998"}),
        s1 = Window:MakeTab({Name = "Adoptme",Icon = "rbxassetid://4483345998"}),
        s2 = Window:MakeTab({Name = "Greenville",Icon = "rbxassetid://4483345998"}),
        s3 = Window:MakeTab({Name = "BloxFruit",Icon = "rbxassetid://4483345998"}),
    }

    -- Main Content
    Tab.Main:AddSection({Name = "Information"})
    Tab.Main:AddParagraph("My Telegram Channel","ZorvexBHHub")
    
    -- Adopt Me Scripts
    Tab.s1:AddSection({Name = "Adoptme"})
    Tab.s1:AddButton({Name = "TbiGui Script", Callback = function() loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/c29af06acdb7a80fb239415fd322efe9.lua"))() end})
    Tab.s1:AddButton({Name = "Clone House Script", Callback = function() loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/051b9ab9e55bc6acf1ead9319bd606ec.lua"))() end})
    Tab.s1:AddButton({Name = "Free Script", Callback = function() loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/4a873606f2053bf3067ad6da43b5baee.lua"))() end})

    -- Greenville
    Tab.s2:AddSection({Name = "Greenville"})
    Tab.s2:AddButton({Name = "Auto Farm", Callback = function() loadstring(game:HttpGet("https://api.xnexus.cc/request/12d2fd60e7a67b48ece6f8fce7167a1d"))() end})

    -- Blox Fruits (Restored all buttons)
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
local KeyWindow = OrionLib:MakeWindow({Name = "ZorvexBH | Key System", HidePremium = true, SaveConfig = false})

-- TAB: HOW TO GET KEY
local HelpTab = KeyWindow:MakeTab({Name = "How to get Key", Icon = "rbxassetid://4483345998"})
HelpTab:AddParagraph("Step 1", "Join our Telegram channel to find the daily keys.")
HelpTab:AddParagraph("Step 2", "Find the pinned post or the latest message with keys.")
HelpTab:AddButton({
    Name = "Copy Telegram Link",
    Callback = function()
        setclipboard("t.me/ZorvexBHHub")
        OrionLib:MakeNotification({Name = "Copied", Content = "Telegram link copied to clipboard!", Time = 5})
    end
})

-- TAB: VERIFICATION
local VerifyTab = KeyWindow:MakeTab({Name = "Verification", Icon = "rbxassetid://4483345998"})

VerifyTab:AddSection({Name = "Verification Tips"})
VerifyTab:AddParagraph("Tip 1", "Ensure there are no spaces before or after the key.")
VerifyTab:AddParagraph("Tip 2", "The keys are case-sensitive (capital letters matter).")
VerifyTab:AddParagraph("Tip 3", "If a key doesn't work, try another one from the Telegram list.")

VerifyTab:AddTextbox({
    Name = "Enter Key Here",
    Default = "",
    TextDisappear = false,
    Callback = function(Value)
        EnteredKey = Value
    end
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
            OrionLib:MakeNotification({Name = "Access Granted", Content = "Loading ZorvexBH Hub...", Time = 3})
            task.wait(1)
            OrionLib:Destroy()
            task.wait(1)
            LoadScript()
        else
            OrionLib:MakeNotification({Name = "Invalid Key", Content = "Check the tips and try again.", Time = 5})
        end
    end
})

OrionLib:Init()