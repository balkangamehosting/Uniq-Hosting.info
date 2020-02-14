<?php
if(!defined('GPANEL')) die('Hoce to majstore :D');

$mysql_server = 'localhost';
$mysql_username = 'root';
$mysql_password = 'btrkobic123';
$mysql_database = 'gpanel';
$mysql_charset = 'utf8';
$link = 'http://uniq-hosting.info/gpanel/';
$configs["email"] = 'Uniq@uniq-hosting.info';
$configs["host"] = 'Uniq Hosting';

$connect = mysql_connect($mysql_server, $mysql_username, $mysql_password) or die('Cannot connect to database!');
$select = mysql_select_db($mysql_database) or die('Cannot select database!');
mysql_query('SET  NAMES \''.$mysql_charset.'\'',$connect);
?>