local GroupId = 0
local MinimumRank = 0
local KickTimeStart = 19 * 60 + 20
local KickTimeEnd = 21 * 60

game.Players.PlayerAdded:Connect(function(player)
	if player:GetRankInGroup(GroupId) < MinimumRank then
		local utctime = os.date("!*t")
		local minspastmidnight = utctime.hour * 60 + utctime.min
		if minspastmidnight < KickTimeStart or minspastmidnight > KickTimeEnd then
			player:Kick("Sorry, the server is now closed!")
		end
	end
end)
