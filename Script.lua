local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/jensonhirst/Orion/main/source')))()

-- 1. YOUR KEY LIST (Includes 9999 + 10 Random Keys)
local ValidKeys = {
    "9999",
    "8F2R7K9A1Q", "3M5V6N8X2P", "9L1B4C7Z6W", "2S9XPBUI5Z",
    "7H3J5K2M9N", "4G6D8S1A3Q", "5F9Y2H4K7L", "1P8O3I5U6Y",
    "6T4R2E9W1Q", "2N7M4B6V8C"
}

local EnteredKey = ""

-- 2. MAIN HUB FUNCTION
function LoadScript()
    local Window = OrionLib:MakeWindow({Name = "ZorvexBH Hub⚡", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
    
    local Tab1 = Window:MakeTab({Name = "Main", Icon = "rbxassetid://4483345998"})
    Tab1:AddSection({Name = "Welcome to ZorvexBH"})
    Tab1:AddParagraph("Status", "Full Access Granted.")

    -- Your other tabs (Adoptme, Greenville, etc.) go here
    
    OrionLib:Init()
end

-- 3. KEY SYSTEM UI
local KeyWindow = OrionLib:MakeWindow({Name = "Key System | ZorvexBH", HidePremium = true, SaveConfig = false})
local KeyTab = KeyWindow:MakeTab({Name = "Verification", Icon = "rbxassetid://4483345998"})

KeyTab:AddParagraph("Instructions", "Enter a key from Telegram and press Check.")

KeyTab:AddTextbox({
    Name = "Enter Key Here",
    Default = "",
    TextDisappear = false,
    Callback = function(Value)
        EnteredKey = Value -- Simply stores the text
    end
})

KeyTab:AddButton({
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
                Name = "Success!",
                Content = "Key Valid. Time left: " .. hours .. "h " .. mins .. "m",
                Time = 5
            })

            task.wait(1)
            OrionLib:Destroy()
            task.wait(0.5)
            LoadScript()
        else
            OrionLib:MakeNotification({
                Name = "Access Denied",
                Content = "Invalid key. Check Telegram @ZorvexBHHub",
                Time = 5
            })
        end
    end
})

KeyTab:AddButton({
    Name = "Copy Telegram Link",
    Callback = function()
        setclipboard("t.me/ZorvexBHHub")
        OrionLib:MakeNotification({Name = "Copied", Content = "Link copied to clipboard!", Time = 3})
    end
})

OrionLib:Init()