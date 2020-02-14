<?php /* Smarty version Smarty-3.0.7, created on 2018-01-11 21:15:21
         compiled from "template/server.tpl" */ ?>
<?php /*%%SmartyHeaderCode:15158861585a57c5d9040c31-34434525%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '30cd373c7fc26ee28c0920b9bd97a6332f73b773' => 
    array (
      0 => 'template/server.tpl',
      1 => 1515701717,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '15158861585a57c5d9040c31-34434525',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php if (!is_callable('smarty_modifier_date_format')) include '/var/www/html/gpanel/includes/libs/plugins/modifier.date_format.php';
?><div id="main">
<?php if ($_smarty_tpl->getVariable('error')->value){?>

<div id="error" style="display:none;"><?php echo $_smarty_tpl->getVariable('error')->value;?>
</div>

<?php }else{ ?>

<?php if ($_smarty_tpl->getVariable('message')->value){?>
<div id="message" style="display:none;"><?php echo $_smarty_tpl->getVariable('message')->value;?>
</div>
<?php }?>

<div class="morph_act">
<?php echo $_smarty_tpl->getVariable('server')->value['name'];?>


 <span class="morph_test" style="float:right;">
 <ul>
  <?php if ($_smarty_tpl->getVariable('server')->value['startovan']==1){?>
  <li><a href="main.php?page=server&id=<?php echo $_smarty_tpl->getVariable('id')->value;?>
&action=restart"><img style='width:15px;height:15px;' src="template/images/restart.png"> Restart</a></li>
  <li><a href="main.php?page=server&id=<?php echo $_smarty_tpl->getVariable('id')->value;?>
&action=stop"><img style='width:15px;height:15px;' src="template/images/stop.png"> Stop</a></li>
  <?php }else{ ?>
  <li><a href="main.php?page=server&id=<?php echo $_smarty_tpl->getVariable('id')->value;?>
&action=start"><img style='width:15px;height:15px;' src="template/images/start.png"> Start</a></li>
  <?php }?>
  </span>
 </ul>
</div>

<div class="morph_bg_sad">
<?php if ($_smarty_tpl->getVariable('server_igra')->value=='CS'){?>
<div class="morph_precice">
<ul>
  <li style="background:none;border:none;">Precice:</li>
  <li><a href="main.php?page=ftp&id=<?php echo $_smarty_tpl->getVariable('id')->value;?>
&path=/cstrike/addons/amxmodx/configs/">Configs</a></li>
  <li><a href="main.php?page=ftp&id=<?php echo $_smarty_tpl->getVariable('id')->value;?>
&path=/cstrike/addons/amxmodx/plugins/">Plugins</a></li>
  <li><a href="main.php?page=ftp_file&id=<?php echo $_smarty_tpl->getVariable('id')->value;?>
&path=/cstrike/&file=server.cfg">server.cfg</a></li>
  <li><a href="main.php?page=ftp_file&id=<?php echo $_smarty_tpl->getVariable('id')->value;?>
&path=/cstrike/addons/amxmodx/configs/&file=users.ini">users.ini</a></li>
  <li><a href="main.php?page=ftp_file&id=<?php echo $_smarty_tpl->getVariable('id')->value;?>
&path=/cstrike/addons/amxmodx/configs/&file=plugins.ini">plugins.ini</a></li>
  <span style="float:right;"
<div class="morph_precice">
  <li><a href="main.php?page=ip_log"><img style='width:10px;height:10px;' src="template/images/ip_log.png"> IP Logs</a></li>
  <li><a href="main.php?page=ftp&id=<?php echo $_smarty_tpl->getVariable('id')->value;?>
&path=/"><img style='width:10px;height:10px;' src="template/images/web_ftp.png"> WEBFTP</a></li>
  <li><a id="dodaj_admina_dugme" srv_id="<?php echo $_smarty_tpl->getVariable('id')->value;?>
" href="javascript:void(0)"><img style='width:10px;height:10px;' src="template/images/add_admin.png"> Dodaj admina</a></li>
  <li><a id="promeni_mod_dugme" srv_id="<?php echo $_smarty_tpl->getVariable('id')->value;?>
" href="javascript:void(0)"><img style='width:10px;height:10px;' src="template/images/change_mod.png"> Promeni mod</a></li>
  </span>
</ul>
</div>
<?php }else{ ?>
<div class="morph_precice">
<ul>
  <li style="background:none;">Precice:</li>
  <li><a href="main.php?page=ftp_file&id=<?php echo $_smarty_tpl->getVariable('id')->value;?>
&path=/&file=server.cfg">server.cfg</a></li>
  <li><a href="main.php?page=ftp&id=<?php echo $_smarty_tpl->getVariable('id')->value;?>
&path=/scriptfiles">scriptfiles</a></li>
  <li><a href="main.php?page=ftp_file&id=<?php echo $_smarty_tpl->getVariable('id')->value;?>
&path=/&file=server_log.txt">server_log.txt</a></li>
  <span style="float:right;left: -439px;top: -182px;position: relative;"
  <li><a href="main.php?page=ip_log"><img style='width:10px;height:10px;' src="template/images/ip_log.png"> IP Logs</a></li>
  <li><a href="main.php?page=ftp&id=<?php echo $_smarty_tpl->getVariable('id')->value;?>
&path=/"><img style='width:10px;height:10px;' src="template/images/web_ftp.png"> WEBFTP</a></li>
  <li><a id="promeni_mod_dugme" srv_id="<?php echo $_smarty_tpl->getVariable('id')->value;?>
" href="javascript:void(0)"><img style='width:10px;height:10px;' src="template/images/change_mod.png"> Promeni mod</a></li>
  </span>
</ul>
</div>
<?php }?>

<div class="info_mor">Informacije o serveru</div>
<br />
<div class="serv_info_morph">
<div class="morph_s_info_test">Ime servera <a id="promeni_ime" srv_name="<?php echo $_smarty_tpl->getVariable('server')->value['name'];?>
" srv_id="<?php echo $_smarty_tpl->getVariable('id')->value;?>
" href="javascript:void(0)">[edit]</a> : <span class="morph_color"><?php echo $_smarty_tpl->getVariable('server')->value['name'];?>
</span> </div>
<div class="morph_s_info_test">Igra : <span class="morph_color"><?php if ($_smarty_tpl->getVariable('server_igra')->value=='CS'){?>Counter-Strike 1.6<?php }else{ ?>San Andreas Multiplayer<?php }?></span></div>
<div class="morph_s_info_test">Mod : <span class="morph_color"><?php echo $_smarty_tpl->getVariable('server_mod')->value;?>
</span></div>
<div class="morph_s_info_test">Default mapa <a id="default_mapa" srv_map="<?php echo $_smarty_tpl->getVariable('server')->value['map'];?>
" srv_id="<?php echo $_smarty_tpl->getVariable('id')->value;?>
" href="javascript:void(0)">[edit]</a> : <span class="morph_color"><?php echo $_smarty_tpl->getVariable('server')->value['map'];?>
</span></div>
<div class="morph_s_info_test">IP adresa : <span class="morph_color"><?php echo $_smarty_tpl->getVariable('server')->value['ip'];?>
:<?php echo $_smarty_tpl->getVariable('server')->value['port'];?>
</span></div>
<div class="morph_s_info_test">Datum isteka : <span class="morph_color"><?php if (smarty_modifier_date_format($_smarty_tpl->getVariable('server_istice')->value,"%Y.%m.%d")<smarty_modifier_date_format(time(),"%Y.%m.%d")){?><span style='color:red;'><?php echo $_smarty_tpl->getVariable('server_istice')->value;?>
</span><?php }else{ ?><?php echo $_smarty_tpl->getVariable('server_istice')->value;?>
<?php }?></span></div>
<div class="morph_s_info_test">Status : <span class="morph_color">  <input type="text" style="background:none;border:none;" disabled="disabled" class="<?php if ($_smarty_tpl->getVariable('server')->value['status']=='Aktivan'){?>zelena<?php }else{ ?>crvena<?php }?>"  value="<?php echo $_smarty_tpl->getVariable('server')->value['status'];?>
" />  </span></div>
</div>

<br />

<div class="info_mor_ftp">FTP Informacije</div>
<br />
<div class="server_info_morph_ftp">
IP Adresa : <span class="morph_color"><?php echo $_smarty_tpl->getVariable('server')->value['ip'];?>
</span> <br /><div class="space123"></div>
FTP Port : <span class="morph_color"><?php echo $_smarty_tpl->getVariable('ftp_port')->value;?>
</span> <br /><div class="space123"></div>
User : <span class="morph_color"><?php echo $_smarty_tpl->getVariable('server')->value['username'];?>
</span> <br /><div class="space123"></div>
Password : <span class="morph_color"><?php echo $_smarty_tpl->getVariable('server')->value['password'];?>
 <img class="promeni_ftp_sifru" srv_id="<?php echo $_smarty_tpl->getVariable('id')->value;?>
" style="height:20px;" src="template/images/423434.png" border="0"  /></span> <br /><div class="space123"></div>
</div>

 <div style="height:25px;"></div>

<div class="info_mor_serv">GameServer Status</div> <div style="height:7px;"></div>
<div class="server_info_morph_server">
Server status : <span class="morph_color"><?php echo $_smarty_tpl->getVariable('status')->value;?>
</span> <br /><div class="space123"></div>
Gametracker Link: <span class="morph_color"> <a target='_blank' href='http://www.gametracker.rs/server_info/<?php echo $_smarty_tpl->getVariable('server')->value['ip'];?>
:<?php echo $_smarty_tpl->getVariable('server')->value['port'];?>
/'>Klikni ovde</a> </span> <br /><div class="space123"></div>
<div class="">Ime Servera<a id="" srv_name="<?php echo $_smarty_tpl->getVariable('server')->value['name'];?>
" srv_id="<?php echo $_smarty_tpl->getVariable('id')->value;?>
" href="javascript:void(0)"></a> : <span class="morph_color"><?php echo $_smarty_tpl->getVariable('server')->value['name'];?>
</span></div> <div class="space123"></div>
<?php if ($_smarty_tpl->getVariable('server_igra')->value=='CS'){?>Mapa :<?php }else{ ?>Jezik : <?php }?><span class="morph_color"><?php echo $_smarty_tpl->getVariable('server_mapa')->value;?>
</span> <br /><div class="space123"></div>
Igraci : <span class="morph_color"><?php echo $_smarty_tpl->getVariable('broj_igraca')->value;?>
/<?php echo $_smarty_tpl->getVariable('maximalan_br_igraca')->value;?>
</span> <br /><div class="space123"></div>
Igra : <span class="morph_color"><?php if ($_smarty_tpl->getVariable('server_igra')->value=='CS'){?>Counter-Strike 1.6<?php }else{ ?>San Andreas Multiplayer<?php }?></span> <br /><div class="space123"></div>
</div>

<br /><div style="height:5px;"></div>

<div class="info_mor_graph">Grafik igraca</div> <br />
<div class="morph_chart_bg">
<?php if ($_smarty_tpl->getVariable('server_igra')->value=='CS5'){?><?php echo $_smarty_tpl->getVariable('graph')->value;?>
<?php }else{ ?> <img style='margin-left:10px;width:250px;height:120px;' src='http://banners.gametracker.rs/<?php echo $_smarty_tpl->getVariable('server')->value['ip'];?>
:<?php echo $_smarty_tpl->getVariable('server')->value['port'];?>
/graph-day/graph-day.jpg'> <?php }?> </div>
<br />
<div style="margin-left:-5px;" class="morph_info_test_1">Ukoliko vam ne crta grafik posle nekog vremena, proverite da li je vas server dodat na Gametracker.rs-u <a target='_blank' href='http://www.gametracker.rs/add_server/'>Dodaj server</a> </span>
<br /><br />

<?php }?>
</div>




