task.spawn(function()
    local queue_on_teleport =
queue_on_teleport or
    syn and
        syn.queue_on_teleport [[
       repeat task.wait() until game:IsLoaded() wait(5) print("Server Hopped or rejoined")

    loadstring(game:HttpGet("https://raw.githubusercontent.com/KittyLuna/Anime-Adventures/main/cardpickerbeta"))()]]
end)
