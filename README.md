Instructions:

1. Upload index.php to your webserver
2. Make a folder in the directory of index.php logs and inside that make a .txt named iplogs.txt if you want to log all ips going to index.php
3. In the folder client_lua put the client.lua in your garrysmod/lua folder in YOUR garrys mod local files.
4. Upload the file in server_lua "server.lua" onto your garrysmod server.
5. Make sure there is a server_list.txt file in the directory of index.php

Info:

The information logged onto server_list.txt is as followed:

-Server IP

-Server Port

-Player Count


Connect the the server and run client.lua once you are in, then you type into your in-game concole "exploit_cfg" and you should get all the data on server.cfg printed into your console.

If you want this to work you MUST have the server.lua uploaded to the remote server. All the information of the server will be logged back to your website (in server_list.txt) making it easy to see which servers have the server.lua file on it. 

CLIENT LUA LOCATION: garrysmod/lua

SERVER LUA LOCATION: garrysmod/lua/autorun OR any addon directory that allows it to run on startup.

-mal0x
