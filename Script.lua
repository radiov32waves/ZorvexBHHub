local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/jensonhirst/Orion/main/source')))()

-- 1. YOUR 10 UNIQUE KEYS
local ValidKeys = {
    "8F2R7K9A1Q", "3M5V6N8X2P", "9L1B4C7Z6W", "2S9XPBUI5Z",
    "7H3J5K2M9N", "4G6D8S1A3Q", "5F9Y2H4K7L", "1P8O3I5U6Y",
    "6T4R2E9W1Q", "2N7M4B6V8C"
}

-- 2. MAIN HUB FUNCTION
function LoadScript()
    local Window = OrionLib:MakeWindow({Name = "ZorvexBH Hub⚡", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
    
    local Tab1 = Window:MakeTab({Name = "Main", Icon = "rbxassetid://4483345998"})
    Tab1:AddSection({Name = "Welcome to ZorvexBH"})
    Tab1:AddParagraph("Status", "Script successfully loaded.")

    -- Add your game tabs (Adopt Me, Blox Fruit, etc.) here as before
    
    OrionLib:Init()
end

-- 3. KEY SYSTEM UI
local KeyWindow = OrionLib:MakeWindow({Name = "Key System | ZorvexBH", HidePremium = true, SaveConfig = false})
local KeyTab = KeyWindow:MakeTab({Name = "Get Key", Icon = "rbxassetid://4483345998"})

KeyTab:AddParagraph("Key Required", "You need a key to use this hub. You can find them in our Telegram.")

KeyTab:AddButton({
    Name = "Copy Telegram Link",
    Callback = function()
        setclipboard("t.me/ZorvexBHHub")
        OrionLib:MakeNotification({Name = "Copied", Content = "Telegram link copied! Go there for keys.", Time = 5})
    end
})

KeyTab:AddTextbox({
    Name = "Enter Key",
    Default = "",
    TextDisappear = true,
    Callback = function(Value)
        local success = false
        for _, key in pairs(ValidKeys) do
            if Value == key then
                success = true
                break
            end
        end

        if success then
            -- Time remaining until keys refresh (Midnight)
            local now = os.date("*t")
            local hours = 23 - now.hour
            local mins = 59 - now.min

            OrionLib:MakeNotification({
                Name = "Success!",
                Content = "Loading Hub... Key expires in " .. hours .. "h " .. mins .. "m",
                Time = 5
            })

            task.wait(1)
            OrionLib:Destroy()
            task.wait(0.5)
            LoadScript()
        else
            OrionLib:MakeNotification({
                Name = "Invalid Key",
                Content = "Please check the Telegram channel for valid keys.",
                Time = 5
            })
        end
    end
})

OrionLib:Init()