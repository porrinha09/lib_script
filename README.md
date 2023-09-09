# script library

## lib api load
```lua
-- api load
loadstring(game:HttpGet("https://raw.githubusercontent.com/porrinha09/lib_script/main/api%20load.lua"))()
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
