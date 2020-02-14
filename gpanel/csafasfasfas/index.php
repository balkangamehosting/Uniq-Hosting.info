<?php
session_start();

if($_SESSION["admin"]){
	header('location: admin.php');	
}
ini_set('display_errors', 0);
	
// put full path to Smarty.class.php

define("GPANEL", "YES");
include "../config.php";
require('../includes/libs/Smarty.class.php');
$smarty = new Smarty();

$smarty->setTemplateDir('template');
$smarty->setCompileDir('../cache/template_c');
$smarty->setCacheDir('../cache/other_c');
$smarty->setConfigDir('../includes/configs');
$smarty->assign('config', $configs);

if($_POST["login"]){
  $username = $_POST["login"];
  $password = $_POST["pass"];
  $username = stripslashes($username);
  $password = stripslashes($password);
  $username = mysql_real_escape_string($username);
  $password = mysql_real_escape_string($password);
	
  $check_login = mysql_query('SELECT * FROM admin WHERE username="'.$username.'" AND password="'.$password.'"');
  if(mysql_num_rows($check_login)==1){
	  mysql_query('UPDATE admin SET `lastactivity` = "'.$_SERVER['REQUEST_TIME'].'" WHERE id="'.$userinfo["id"].'"');
  	  $userinfo = mysql_fetch_array($check_login);	
  	  $_SESSION["admin"] = $userinfo["status"];
  	  $_SESSION["admin_id"] = $userinfo["id"];
  	  header("Location: admin.php");
  } else {
     $smarty->assign('error', 'Podatci za prijavu su netaÄni.');	  
  }
	
}


$smarty->display('login.tpl');
?>