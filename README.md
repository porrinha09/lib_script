# script library

## lib api load
```lua
-- api load
loadstring(game:HttpGet("https://raw.githubusercontent.com/porrinha09/lib_script/main/api%20load.lua"))()
```

## loadstring script web
```lua
loadstring(game:HttpGet("  ", true))()
```

# copiar msg para a área e transferência
```lua
setclipboard("-- msg")
```



## depois e um tempo vai executar algo
```lua
wait(3) -- em segundos
```


## criar notificações
```lua
local Players = game:GetService("Players")
local player = Players.LocalPlayer

local mensagem = "oi"

game.StarterGui:SetCore("SendNotification", {
    Title = "notificação",
    Text = mensagem,
    Duration = 5 -- Duração em segundos
})
```


## criar notificações diferentes
```lua
local Notif = Instance.new("ScreenGui") 
local TextLabel = Instance.new("TextLabel") 

Notif.Name = "Notification" 
Notif.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui") 

TextLabel.Parent = Notif 
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255) 
TextLabel.Size = UDim2.new(1, 0, 1, 0) 
TextLabel.Text = "This is a notification!" 
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0) 
TextLabel.TextScaled = true 

wait(5) -- em segundos
Notif:Destroy()
```


## script e resetar o personagem
```lua
game.Players.LocalPlayer.Character.Humanoid.Health = 0
```


## script e kick
```lua
game.Players.LocalPlayer:Kick("kick")
```


## aumentar velocidade
```lua
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid.WalkSpeed = 50 -- speed
```

## chat local
```lua
local args = {
    [1] = "oi",
    [2] = "All"
}

game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(unpack(args))
```

## teleporte
```lua
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-- posição)
```
