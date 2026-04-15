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

Tab:AddParagraph("Paragraph","Paragraph Content")

OrionLib:Init()

OrionLib:Destroy()