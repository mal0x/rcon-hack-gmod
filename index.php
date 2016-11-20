<?php 

$f = "server_list.txt";
$str = "Hostname: " . $_POST['sn'] . " Player Count: " . $_POST['playercount'] . " IP: " . $_POST['ip'];
$cr = (string)$str; 
file_put_contents($f, $cr);

?>


<!-- This will log all ips to logs/iplogs.txt
<?php

function logIP()
{
     $ipLog="logs/iplogs.txt";

     $register_globals = (bool) ini_get('register_gobals');
     if ($register_globals) $ip = getenv(REMOTE_ADDR);
     else $ip = $_SERVER['REMOTE_ADDR'];

     $date=date ("l dS of F Y h:i:s A");
     $log=fopen("$ipLog", "a+");

     if (preg_match("/\\bhtm\\b/i", $ipLog) || preg_match("/\\bhtml\\b/i", $ipLog))
     {
          fputs($log, "Logged IP address: $ip - Date logged: $date<br>");
     }
     else fputs($log, "Logged IP address: $ip - Date logged: $date\
");

     fclose($log);
}

logIp();


?>
<!-- This will log all ips to logs/iplogs.txt