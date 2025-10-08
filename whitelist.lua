local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local player = Players.LocalPlayer

local whitelist = {
    9477571655, -- senap
    9670086844 -- alt account
}

local function checkWhitelist()
	if not table.find(whitelist, player.UserId) then
		player:Kick("You are not authorized to use this script.")
		return
	end
	print("Access granted ✅")
end
checkWhitelist()

RunService.Heartbeat:Connect(function(step)
	if not _G.whitelistCheckTimer then
		_G.whitelistCheckTimer = 0
	end

	_G.whitelistCheckTimer = _G.whitelistCheckTimer + step
	if _G.whitelistCheckTimer >= 60 then
		_G.whitelistCheckTimer = 0
		checkWhitelist()
	end
end)
