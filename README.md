# script library

## lib api load
```lua
-- api load
loadstring(game:HttpGet("https://raw.githubusercontent.com/porrinha09/lib_script/main/api%20load.lua"))()
```

## loadstring script web
```lua
loadstring(game:HttpGet(('-- link'),true))()
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


## aumentar velocidade (padrão: 16)
```lua
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid.WalkSpeed = 50 -- speed
```

## aumentar pulo (padrão: 50)
```lua
local player = game.Players.LocalPlayer
local character = player.Character

local jumpHeight = 50

local humanoid = character:WaitForChild("Humanoid")

humanoid.JumpPower = jumpHeight
```

## mudar pov (padrão: 70)
```lua
game.Workspace.CurrentCamera.FieldOfView = 70
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


## ocultar ui
```lua
local ui = script.Parent ui.Visible = false
```


## rejoin
```lua
wait(1)	
game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
```

## ativar noclip
```lua
local player = game.Players.LocalPlayer
local noclipEnabled = true

game:GetService("RunService").Stepped:Connect(function()
    if noclipEnabled then
        player.Character:Move(Vector3.new(0, 0, 0))
    end
end)

print("Noclip ativado")
```

## desativar noclip
```lua
local player = game.Players.LocalPlayer
local noclipEnabled = false

print("Noclip desativado")
```

## teleporte pelo nick da pessoa
```lua
local TeleportService = game:GetService("TeleportService")

-- coloca o "EditText" pelo nome o Edit text
local editText = script.Parent:WaitForChild("EditText")

local function teleportPlayer()
    local playerName = editText.Text

    local player = game.Players:FindFirstChild(playerName)

    -- Teleportar se o jogador existir
    if player then
        local destination = Vector3.new(0, 5, 0)
        TeleportService:TeleportToPlaceInstance(game.PlaceId, player.UserId, destination)
    else
        print("Jogador não encontrado")
    end
end

script.Parent.MouseButton1Click:Connect(teleportPlayer)
```


