local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "7li Hub " .. Fluent.Version,
    SubTitle = "by 7LI_7HMEDYT",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, 
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl 
})

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "airplay" }),
    blxScripts = Window:AddTab({ Title = "All BloxFruit Scripts", Icon = "bug" }),
    adoptme = Window:AddTab({ Title = "All Adopt Me Script", Icon = "bird" }),
    night = Window:AddTab({ Title = "All 99Nights \nIn The Forest", Icon = "axe" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
    
}

local Options = Fluent.Options

do
    Fluent:Notify({
        Title = "Notification",
        Content = "Thanks For Using 7LI_7HMEDYT Script",
        SubContent = "SubContent", -- Optional
        Duration = 20 -- Set to nil to make the notification not disappear
    })



    Tabs.blxScripts:AddParagraph({
        Title = "My Telegram Channel:aliahmed_7lihub",
        Content = "This will help you find \nall BloxFruits hubs and scripts."
    })


    

     Tabs.blxScripts:AddButton({
        Title = "Gravity Hub by realtboy",
        Description = "Click this to load...",
        Callback = function()
            Window:Dialog({
                Title = "Gravity Hub",
                Content = "Do you confirm to load this script?",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Main.lua"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })



    Tabs.blxScripts:AddButton({
        Title = "redz hub by ...",
        Description = "Click this to load...",
        Callback = function()
            Window:Dialog({
                Title = "redz hub",
                Content = "Do you confirm to load this script?",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/tlredz/Scripts/refs/heads/main/main.luau"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })



    Tabs.blxScripts:AddButton({
        Title = "Blue X Hub by Approved From Redz",
        Description = "Click this to load...",
        Callback = function()
            Window:Dialog({
                Title = "Blue X Hub",
                Content = "Do you confirm to load this script?",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/refs/heads/main/Main.lua"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })



     Tabs.adoptme:AddButton({
        Title = "TbiGui Hub",
        Description = "Click this to load...",
        Callback = function()
            Window:Dialog({
                Title = "TbiGui Script",
                Content = "Do you confirm to load this script?",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/c29af06acdb7a80fb239415fd322efe9.lua"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })



     Tabs.night:AddButton({
        Title = "Voidware Hub",
        Description = "Click this to load...",
        Callback = function()
            Window:Dialog({
                Title = "Voidware Script",
                Content = "Do you confirm to load this script?",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/VapeVoidware/VW-Add/main/loader.lua", true))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })


end


SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

SaveManager:IgnoreThemeSettings()

SaveManager:SetIgnoreIndexes({})

InterfaceManager:SetFolder("FluentScriptHub")
SaveManager:SetFolder("FluentScriptHub/specific-game")

InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)

Window:SelectTab(1)

Fluent:Notify({
    Title = "Fluent",
    Content = "The script has been loaded.",
    Duration = 8
})

SaveManager:LoadAutoloadConfig()
