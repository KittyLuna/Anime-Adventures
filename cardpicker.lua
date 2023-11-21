local queue_on_teleport = queue_on_teleport or fluxus.queue_on_teleport or function(...) return ... end

game.Players.LocalPlayer.OnTeleport:Connect(function(state)

    if state ~= Enum.TeleportState.Started and state ~= Enum.TeleportState.InProgress then return end

    queue_on_teleport([[

        repeat task.wait() until game:IsLoaded()

        wait(2)

        if getgenv().Executed then return end -- avoid multiple executions

        loadstring(game:HttpGet("https://raw.githubusercontent.com/KittyLuna/Anime-Adventures/main/cardpickerbeta"))()

    ]])

end)
