local pl = tostring(player) --so it doesnt say its a player value


local load = game:GetService("ServerStorage"):FindFirstChild("Loadstring")
local loadstring=require(load)
local code=tostring(a)

local func,error=loadstring(code,getfenv())
if func then
	func()
else 
	print((error:match(".+:(.*)") or error)) --code totally not stolen from epix admin ok?
end

loadstring(a)