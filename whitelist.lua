local Players = game:GetService("Players")
local player = Players.LocalPlayer

local whitelist = {
    9477571655,
    9670086844
}

if not table.find(whitelist, player.UserId) then
    player:Kick("You are not authorized to use this script.")
    return
end

print("Access granted ✅")
