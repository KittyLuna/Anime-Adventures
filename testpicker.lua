task.spawn(function()
    local queue_on_teleport =
queue_on_teleport or
    syn and
        syn.queue_on_teleport [[
       repeat task.wait() until game:IsLoaded() wait(5) print("Server Hopped or rejoined")

local player = game:GetService("Players").LocalPlayer
local playergui = player:WaitForChild("PlayerGui")
local options = playergui:WaitForChild("RoguelikeSelect"):WaitForChild("Main"):WaitForChild("Main"):WaitForChild("Items"):GetChildren()
local optionframe = playergui.RoguelikeSelect.Main.Main.Items:WaitForChild("OptionFrame"):WaitForChild("bg"):WaitForChild("Main"):WaitForChild("Title"):WaitForChild("TextLabel")
optionframe.Active = true

newoptions = {}
args = {}
cards = {"+ Enemy Shield III",
    "+ Enemy Shield II",
    "+ Enemy Shield I",
    "+ Attack III",
    "+ Attack II",
    "+ Enemy Health II",
    "+ Enemy Health I", 
    "+ Attack I",
    "- Cooldown III",
    "- Cooldown II",
    "+ Range III",
    "+ Enemy Speed I",
    "+ Enemy Health III", 
    "+ Enemy Speed II",
    "+ Boss Damage III",
    "+ Boss Damage II",
    "+ Range II",
    "+ Range I",
    "- Cooldown I",
    "+ Boss Damage I",
    "+ Gain 2 Random Effects Tier 3",
    "+ Gain 2 Random Effects Tier 2",
    "+ Gain 2 Random Effects Tier 1",
    "+ Enemy Speed III",
    "+ Yen III",
    "+ Yen II",
    "+ Yen I"
}

table.remove(options,1)
table.remove(options,1)

for i,v in pairs(options) do
if v:IsA("Frame") then
table.insert(newoptions,v.bg.Main.Title.TextLabel)
end
end

playergui:FindFirstChild("RoguelikeSelect"):GetPropertyChangedSignal("Enabled"):Connect(function()

    local options = playergui:WaitForChild("RoguelikeSelect").Main.Main.Items:GetChildren()
    newoptions = {}
    for i,v in pairs(options) do
        if v.Name == "OptionFrame" then
            table.insert(newoptions,v:FindFirstChild("bg").Main.Title.TextLabel)
        end
    end
    table.remove(options,1)
    table.remove(options,1)

    for i=1,27,1 do
        if newoptions[1].Text == cards[i] then
            args = {[1] = "1"}
        elseif newoptions[2].Text == cards[i] then   
            args = {[1] = "2"}
        elseif newoptions[3].Text == cards[i] then   
            args = {[1] = "3"}
        end    
    end   
       game:GetService("ReplicatedStorage").endpoints.client_to_server.select_roguelike_option:InvokeServer(unpack(args))
end)

playergui.RoguelikeSelect.Enabled = true
playergui.RoguelikeSelect.Enabled = false
]]
end)
