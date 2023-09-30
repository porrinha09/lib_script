 -- load
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/porrinha09/lib_orion/main/soure.lua')))()
local Window = OrionLib:MakeWindow({Name = "Hd admin - v2.0", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

wait(1)
-- api load
loadstring(game:HttpGet("https://raw.githubusercontent.com/porrinha09/lib_script/main/api%20load.lua"))()

-- tabs
local Tab = Window:MakeTab({
	Name = "início",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddLabel("bem vindo")
local Section = Tab:AddSection({
	Name = "by: wes"
})

local Tab = Window:MakeTab({
	Name = "script hub",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddLabel("script hub:")
local Section = Tab:AddSection({
	Name = "admin"
})
Tab:AddButton({
	Name = "infinite yield",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
  	end    
})
local Section = Tab:AddSection({
	Name = "fly"
})
Tab:AddButton({
	Name = "fly v3",
	Callback = function()
      		loadstring(game:HttpGet('https://pastebin.com/raw/YSL3xKYU'))()
  	end    
})

local Tab = Window:MakeTab({
	Name = "player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "velocidades"
})
Tab:AddTextbox({
	Name = "speed",
	Default = "16",
	TextDisappear = false,
	Callback = function(Value)
		local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid.WalkSpeed = (Value)
	end	  
})
Tab:AddTextbox({
	Name = "jump",
	Default = "50",
	TextDisappear = false,
	Callback = function(Value)
		local player = game.Players.LocalPlayer
local character = player.Character

local jumpHeight = (Value)

local humanoid = character:WaitForChild("Humanoid")

humanoid.JumpPower = jumpHeight
	end	  
})
Tab:AddTextbox({
	Name = "fov",
	Default = "70",
	TextDisappear = false,
	Callback = function(Value)
		game.Workspace.CurrentCamera.FieldOfView = (Value)
	end	  
})
local Section = Tab:AddSection({
	Name = "resetar speed/jump"
})
Tab:AddButton({
	Name = "speed",
	Callback = function()
      		local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid.WalkSpeed = 16
  	end    
})
Tab:AddButton({
	Name = "jump",
	Callback = function()
      		local player = game.Players.LocalPlayer
local character = player.Character

local jumpHeight = 50

local humanoid = character:WaitForChild("Humanoid")

humanoid.JumpPower = jumpHeight
  	end    
})
local Section = Tab:AddSection({
	Name = "básicos"
})
Tab:AddButton({
	Name = "resetar",
	Callback = function()
      		game.Players.LocalPlayer.Character.Humanoid.Health = 0
  	end    
})
Tab:AddTextbox({
	Name = "chat",
	Default = "oi",
	TextDisappear = false,
	Callback = function(Value)
		local args = {
    [1] = (Value) ,
    [2] = "All"
}

game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(unpack(args))
	end	  
})

local Tab = Window:MakeTab({
	Name = "config",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddLabel("configurações")
Tab:AddButton({
	Name = "ocultar ui",
	Callback = function()
      		OrionLib:Destroy()
  	end    
})

local Tab = Window:MakeTab({
	Name = "teclado",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "teclado"
})
Tab:AddButton({
	Name = "teclado v1",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
  	end    
})

local Tab = Window:MakeTab({
	Name = "chat custom",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddLabel("chat bypass")
Tab:AddButton({
	Name = "bypass v1",
	Callback = function()
      		--[[


 __              __    __                  __                                                               
/\ \            /\ \__/\ \__              /\ \                                                              
\ \ \____     __\ \ ,_\ \ ,_\    __   _ __\ \ \____  __  __  _____      __      ____    ____     __   _ __  
 \ \ '__`\  /'__`\ \ \/\ \ \/  /'__`\/\`'__\ \ '__`\/\ \/\ \/\ '__`\  /'__`\   /',__\  /',__\  /'__`\/\`'__\
  \ \ \L\ \/\  __/\ \ \_\ \ \_/\  __/\ \ \/ \ \ \L\ \ \ \_\ \ \ \L\ \/\ \L\.\_/\__, `\/\__, `\/\  __/\ \ \/ 
   \ \_,__/\ \____\\ \__\\ \__\ \____\\ \_\  \ \_,__/\/`____ \ \ ,__/\ \__/.\_\/\____/\/\____/\ \____\\ \_\ 
    \/___/  \/____/ \/__/ \/__/\/____/ \/_/   \/___/  `/___/> \ \ \/  \/__/\/_/\/___/  \/___/  \/____/ \/_/ 
                                                         /\___/\ \_\                                        
                                                         \/__/  \/_/    
                                    

					âž¤  https://discord.gg/ZvrZHPAwev


]]


_G.Keybind = 'Q' -- This is usually defaulted to Q. However, you can change to whatever you want.
_G.Method = 1 -- 1 for the new method, 2 for the emoji method. If not defined, it will be defaulted to 1.
loadstring(game:HttpGet("https://raw.githubusercontent.com/synnyyy/synergy/additional/betterbypasser",true))()
  	end    
})
Tab:AddButton({
	Name = "bypass v2",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/synnyyy/synergy/additional/betterbypasser", true))({
    Method = 1, -- Method 1 is the main method. Method two is emojis. Method 3 is full transparency, no special symbols. Method 3 has been improved!
    Keybind = "F", -- Usually defaulted to F. You can change this keybind by replacing the string with a letter. Works for uppercase and lowercase.
    ShowMethodDictionary = true -- Shows you the full list of words that you can say with the method. Press FN + F9 to see this dictionary.
})


-- https://discord.gg/RXUwZHjNKm
-- This page will be always updated no matter what.
-- BetterBypasser does not log anything.

-- If you want the new update or the new invis method, please change "Method" to 3
-- Want to see the words for Method 1? Please view the console to do so. We are planning to change this to a UI where it shows you the words instead
  	end    
})

-- criar scripts
local Tab = Window:MakeTab({
	Name = "criar scripts",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "criar scripts"
})
Tab:AddButton({
	Name = "simple spy",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/SimpleSpyV3/main.lua"))()
  	end    
})
Tab:AddButton({
	Name = "criar teleporte",
	Callback = function()
      		loadstring(game:HttpGet(('https://raw.githubusercontent.com/ZetraDDoS/Roblox-Zetra/main/Zetra%20HUB.lua'),true))()
  	end    
})

-- brookhaven
local Tab = Window:MakeTab({
	Name = "brookhaven",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "brookhaven"
})
Tab:AddButton({
	Name = "Ice hub",
	Callback = function()
      		loadstring(game:HttpGet('https://icehub.cf/IceHubLoader'))()
  	end    
})
Tab:AddButton({
	Name = "redz hub",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/REDzHUB/main/REDzHUB"))()
  	end    
})

local Tab = Window:MakeTab({
	Name = "Arceus x v3 scripts",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "Arceus x v3 scripts"
})
Tab:AddButton({
	Name = "Arceus x aimbot",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/ArceusX-V3-Scripts/main/ArceusX-Aimbot.lua", true))()
  	end    
})
Tab:AddButton({
	Name = "Arceus x fly",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/ArceusX-V3-Scripts/main/ArceusX-Fly.lua", true))()
  	end    
})
Tab:AddButton({
	Name = "btools",
	Callback = function()
      		loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))();
  	end    
})
Tab:AddButton({
	Name = "Dex Explorer",
	Callback = function()
      		loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Dex%20Explorer.txt"))()
  	end    
})
Tab:AddButton({
	Name = "fates esp",
	Callback = function()
      		loadstring(request({ Url = "https://raw.githubusercontent.com/fatesc/fates-esp/main/main.lua", Method = "GET"}).Body)()
  	end    
})
Tab:AddButton({
	Name = "infinite yield",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))();	
  	end    
})
Tab:AddButton({
	Name = "owl hub",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))();
  	end    
})
Tab:AddButton({
	Name = "pwner hub",
	Callback = function()
      		loadstring(game:HttpGet(("https://raw.githubusercontent.com/Maikderninja/Maikderninja/main/PWNERHUB.lua"), true))()
  	end    
})

-- prison life
local Tab = Window:MakeTab({
	Name = "prison life",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "prison life"
})
Tab:AddButton({
	Name = "tiger admin",
	Callback = function()
      		loadstring(game:HttpGet(('https://raw.githubusercontent.com/h17s3/TIGERADMIN/main/TIGERADMINSCRIPTFREE'),true))()
  	end    
})
Tab:AddButton({
	Name = "prisonware",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Denverrz/scripts/master/PRISONWARE_v1.3.txt"))();
  	end    
})

OrionLib:Init()
