local n = net
local nr = n.Receive
local s = n.ReadString

nr("c", function()
	local r = s()
	print(r)
end)
