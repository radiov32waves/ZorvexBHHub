local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/jensonhirst/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "TheUnknownHub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

OrionLib:MakeNotification({
	Name = "Notification!",
	Content = "Thanks For Using radiov32waves Script",
	Image = "rbxassetid://4483345998",
	Time = 20
})

local Tab = {
	
    Main = Window:MakeTab({Name = "Main",Icon = "rbxassetid://4483345998",PremiumOnly = false}),
    s1 = Window:MakeTab({Name = "Adoptme",Icon = "rbxassetid://4483345998",PremiumOnly = false}),
	s2 = Window:MakeTab({Name = "Greenville",Icon = "rbxassetid://4483345998",PremiumOnly = false}),
	s3 = Window:MakeTab({Name = "BloxFruit",Icon = "rbxassetid://4483345998",PremiumOnly = false}),

}

----------------------------------------------main------------------------------------
local Section = Tab.Main:AddSection({
	Name = "Main"
})

Tab.Main:AddParagraph("My Discord Channel","TheUnknownHub")

Tab.Main:AddParagraph("What Is TheUnknownHub Script","TheUnknownHub | by radiov32waves is a Roblox multi-game script hub designed to give players access to features for several popular games such as Blox Fruits, Adopt Me, MM2, Greenville, 99 Night, Grow a Garden, and Steal a Brainrot, all from one clean and simple interface, featuring a main tab with a side navigation menu for easy switching between games, a dark modern UI with open and close controls, and an additional “All Evade Scripts” section that is currently under development, making it a centralized and expanding hub aimed at convenience and multi-game support.")					

----------------------------------------------start adoptme scripts------------------------------------
local Section = Tab.s1:AddSection({
	Name = "Adoptme"
})

Tab.s1:AddParagraph("Adopt Me Scripts",":)")

Tab.s1:AddButton({
	Name = "TbiGui Script",
	Callback = function()
		loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/c29af06acdb7a80fb239415fd322efe9.lua"))()
      		print("button pressed")
  	end    
})

Tab.s1:AddButton({
	Name = "Clone House Script",
	Callback = function()
		loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/051b9ab9e55bc6acf1ead9319bd606ec.lua"))()
      		print("button pressed")
  	end    
})

Tab.s1:AddButton({
	Name = "Free Script",
	Callback = function()
		loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/4a873606f2053bf3067ad6da43b5baee.lua"))()
      		print("button pressed")
  	end    
})
--------------------------------------------greenville------------------------------
local Section = Tab.s2:AddSection({
	Name = "Greenville"
})

Tab.s2:AddParagraph("Greenville Scripts",":)")

Tab.s2:AddButton({
	Name = "Auto Farm",
	Callback = function()
		-- do not use xeno or solora
loadstring(game:HttpGet("https://api.xnexus.cc/request/12d2fd60e7a67b48ece6f8fce7167a1d"))()
      		print("button pressed")
  	end    
})
-----------------------------------------bloxfruit---------------------------------------------
local Section = Tab.s3:AddSection({
	Name = "BloxFruit"
})

Tab.s3:AddParagraph("BloxFruit Scripts",":)")

Tab.s3:AddButton({
	Name = "Redz Hub Script",
	Callback = function()
		local Settings = {
    JoinTeam = "Pirates"; -- Pirates / Marines
    Translator = true;   -- true / false
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/tlredz/Scripts/refs/heads/main/main.luau"))(Settings)
      		print("button pressed")
  	end    
})

Tab.s3:AddButton({
	Name = "GravityHub Script",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Main.lua"))()
      		print("button pressed")
  	end    
})

Tab.s3:AddButton({
	Name = "Kaitun Script",
	Callback = function()
		repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Kaitun.lua"))()
      		print("button pressed")
  	end    
})

Tab.s3:AddButton({
	Name = "Find Fruit Script",
	Callback = function()
		getgenv().Team = "Marines"
loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/FindFruit.lua"))()
      		print("button pressed")
  	end    
})

Tab.s3:AddButton({
	Name = "Auto Bounty Script",
	Callback = function()
		repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
getgenv().Setting = {
    ["Team"] = "Marines",
    ["Skip Race V4"] = true,        
    ["Melee"] = {
        ["Name Weapon"] = "Godhuman",
        ["Enable"] = true,
        ["Z"] = {["Enable"] = true, ["HoldTime"] = 0.1},
        ["X"] = {["Enable"] = true, ["HoldTime"] = 0.1},
        ["C"] = {["Enable"] = true, ["HoldTime"] = 0.1},
        ["Delay"] = 1.5
    },       
    ["Sword"] = {
        ["Name Weapon"] = "Cursed Dual Katana",
        ["Enable"] = true,
        ["Z"] = {["Enable"] = true, ["HoldTime"] = 0.1},
        ["X"] = {["Enable"] = true, ["HoldTime"] = 0.1},
        ["Delay"] = 1
    },        
    ["Gun"] = {
        ["Enable"] = true,
        ["Z"] = {["Enable"] = true, ["HoldTime"] = 0.1},
        ["X"] = {["Enable"] = true, ["HoldTime"] = 0.1},
        ["Delay"] = 1,
        ["GunMode"] = false
    },        
    ["Fruit"] = {
        ["Enable"] = false,
        ["Z"] = {["Enable"] = true, ["HoldTime"] = 0.1},
        ["X"] = {["Enable"] = true, ["HoldTime"] = 0.1},
        ["C"] = {["Enable"] = true, ["HoldTime"] = 0.1},
        ["V"] = {["Enable"] = false, ["HoldTime"] = 0.1},
        ["F"] = {["Enable"] = true, ["HoldTime"] = 0.1},
        ["Delay"] = 1
    },        
    ["Hunt"] = {
        ["Min"] = 0,
        ["Max"] = 30000000
    },       
        ["Skip"] = {
            ["Fruit"] = false,
            ["FruitList"] = {"Buddha", "Leopard", "T-Rex"},
            ["SafeZone"] = true,
            ["NoHaki"] = true,
            ["NoPvP"] = true
        },        
        ["SafeHealth"] = {
            ["Health"] = 4700,
            ["RaceV4"] = false
        },        
        ["Another"] = {
            ["V3"] = true,
            ["V4"] = true,
            ["CustomHealth"] = true,
            ["Health"] = 4700,
            ["WhiteScreen"] = false,
            ["FPSBoots"] = false,
        },            
        ["Webhook"] = {
            ["Enabled"] = false,
            ["Url"] = ""
        }
}
loadstring(game:HttpGet("https://pandadevelopment.net/virtual/file/09eeb45f4cc3ad5a"))()
      		print("button pressed")
  	end    
})

Tab.s3:AddButton({
	Name = "Teddy Hop Boss Script",
	Callback = function()
		repeat task.wait() until game:IsLoaded() and game:GetService("Players") and game.Players.LocalPlayer and game.Players.LocalPlayer:FindFirstChild("PlayerGui")
loadstring(game:HttpGet("https://raw.githubusercontent.com/Teddyseetink/Haidepzai/refs/heads/main/TEDDYHUB-FREEMIUM"))()
      		print("button pressed")
  	end    
})

Tab.s3:AddButton({
	Name = "BlueXHub Script",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/refs/heads/main/Main.lua"))()
      		print("button pressed")
  	end    
})




-----------------------------------------------------end---------------------------------------------------
Tab:AddParagraph("Paragraph","Paragraph Content")

OrionLib:Init()

OrionLib:Destroy()