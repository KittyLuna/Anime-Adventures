repeat task.wait() until game.Loaded

local queue_on_teleport = queue_on_teleport or fluxus.queue_on_teleport or function(...) return ... end

game.Players.LocalPlayer.OnTeleport:Connect(function(state)

    if state ~= Enum.TeleportState.Started or state ~= Enum.TeleportState.InProgress then return end

    queue_on_teleport([[

        repeat task.wait() until game:IsLoaded()

        wait(2)
            
        loadstring(game:HttpGet("https://raw.githubusercontent.com/KittyLuna/Anime-Adventures/main/cardpickerbeta"))()
    ]])

end)

loadstring(game:HttpGet("https://raw.githubusercontent.com/KittyLuna/Anime-Adventures/main/cardpickerbeta"))()
