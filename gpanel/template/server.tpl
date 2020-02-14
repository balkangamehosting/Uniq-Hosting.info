<div id="main">
{if $error}

<div id="error" style="display:none;">{$error}</div>

{else}

{if $message}
<div id="message" style="display:none;">{$message}</div>
{/if}

<div class="morph_act">
{$server.name}

 <span class="morph_test" style="float:right;">
 <ul>
  {if $server.startovan eq 1}
  <li><a href="main.php?page=server&id={$id}&action=restart"><img style='width:15px;height:15px;' src="template/images/restart.png"> Restart</a></li>
  <li><a href="main.php?page=server&id={$id}&action=stop"><img style='width:15px;height:15px;' src="template/images/stop.png"> Stop</a></li>
  {else}
  <li><a href="main.php?page=server&id={$id}&action=start"><img style='width:15px;height:15px;' src="template/images/start.png"> Start</a></li>
  {/if}
  </span>
 </ul>
</div>

<div class="morph_bg_sad">
{if $server_igra eq 'CS'}
<div class="morph_precice">
<ul>
  <li style="background:none;border:none;">Precice:</li>
  <li><a href="main.php?page=ftp&id={$id}&path=/cstrike/addons/amxmodx/configs/">Configs</a></li>
  <li><a href="main.php?page=ftp&id={$id}&path=/cstrike/addons/amxmodx/plugins/">Plugins</a></li>
  <li><a href="main.php?page=ftp_file&id={$id}&path=/cstrike/&file=server.cfg">server.cfg</a></li>
  <li><a href="main.php?page=ftp_file&id={$id}&path=/cstrike/addons/amxmodx/configs/&file=users.ini">users.ini</a></li>
  <li><a href="main.php?page=ftp_file&id={$id}&path=/cstrike/addons/amxmodx/configs/&file=plugins.ini">plugins.ini</a></li>
  <span style="float:right;"
<div class="morph_precice">
  <li><a href="main.php?page=ip_log"><img style='width:10px;height:10px;' src="template/images/ip_log.png"> IP Logs</a></li>
  <li><a href="main.php?page=ftp&id={$id}&path=/"><img style='width:10px;height:10px;' src="template/images/web_ftp.png"> WEBFTP</a></li>
  <li><a id="dodaj_admina_dugme" srv_id="{$id}" href="javascript:void(0)"><img style='width:10px;height:10px;' src="template/images/add_admin.png"> Dodaj admina</a></li>
  <li><a id="promeni_mod_dugme" srv_id="{$id}" href="javascript:void(0)"><img style='width:10px;height:10px;' src="template/images/change_mod.png"> Promeni mod</a></li>
  </span>
</ul>
</div>
{else}
<div class="morph_precice">
<ul>
  <li style="background:none;">Precice:</li>
  <li><a href="main.php?page=ftp_file&id={$id}&path=/&file=server.cfg">server.cfg</a></li>
  <li><a href="main.php?page=ftp&id={$id}&path=/scriptfiles">scriptfiles</a></li>
  <li><a href="main.php?page=ftp_file&id={$id}&path=/&file=server_log.txt">server_log.txt</a></li>
  <span style="float:right;left: -439px;top: -182px;position: relative;"
  <li><a href="main.php?page=ip_log"><img style='width:10px;height:10px;' src="template/images/ip_log.png"> IP Logs</a></li>
  <li><a href="main.php?page=ftp&id={$id}&path=/"><img style='width:10px;height:10px;' src="template/images/web_ftp.png"> WEBFTP</a></li>
  <li><a id="promeni_mod_dugme" srv_id="{$id}" href="javascript:void(0)"><img style='width:10px;height:10px;' src="template/images/change_mod.png"> Promeni mod</a></li>
  </span>
</ul>
</div>
{/if}

<div class="info_mor">Informacije o serveru</div>
<br />
<div class="serv_info_morph">
<div class="morph_s_info_test">Ime servera <a id="promeni_ime" srv_name="{$server.name}" srv_id="{$id}" href="javascript:void(0)">[edit]</a> : <span class="morph_color">{$server.name}</span> </div>
<div class="morph_s_info_test">Igra : <span class="morph_color">{if $server_igra eq 'CS'}Counter-Strike 1.6{else}San Andreas Multiplayer{/if}</span></div>
<div class="morph_s_info_test">Mod : <span class="morph_color">{$server_mod}</span></div>
<div class="morph_s_info_test">Default mapa <a id="default_mapa" srv_map="{$server.map}" srv_id="{$id}" href="javascript:void(0)">[edit]</a> : <span class="morph_color">{$server.map}</span></div>
<div class="morph_s_info_test">IP adresa : <span class="morph_color">{$server.ip}:{$server.port}</span></div>
<div class="morph_s_info_test">Datum isteka : <span class="morph_color">{if $server_istice|date_format:"%Y.%m.%d" lt $smarty.now|date_format:"%Y.%m.%d"}<span style='color:red;'>{$server_istice}</span>{else}{$server_istice}{/if}</span></div>
<div class="morph_s_info_test">Status : <span class="morph_color">  <input type="text" style="background:none;border:none;" disabled="disabled" class="{if $server.status eq 'Aktivan'}zelena{else}crvena{/if}"  value="{$server.status}" />  </span></div>
</div>

<br />

<div class="info_mor_ftp">FTP Informacije</div>
<br />
<div class="server_info_morph_ftp">
IP Adresa : <span class="morph_color">{$server.ip}</span> <br /><div class="space123"></div>
FTP Port : <span class="morph_color">{$ftp_port}</span> <br /><div class="space123"></div>
User : <span class="morph_color">{$server.username}</span> <br /><div class="space123"></div>
Password : <span class="morph_color">{$server.password} <img class="promeni_ftp_sifru" srv_id="{$id}" style="height:20px;" src="template/images/423434.png" border="0"  /></span> <br /><div class="space123"></div>
</div>

 <div style="height:25px;"></div>

<div class="info_mor_serv">GameServer Status</div> <div style="height:7px;"></div>
<div class="server_info_morph_server">
Server status : <span class="morph_color">{$status}</span> <br /><div class="space123"></div>
Gametracker Link: <span class="morph_color"> <a target='_blank' href='http://www.gametracker.rs/server_info/{$server.ip}:{$server.port}/'>Klikni ovde</a> </span> <br /><div class="space123"></div>
<div class="">Ime Servera<a id="" srv_name="{$server.name}" srv_id="{$id}" href="javascript:void(0)"></a> : <span class="morph_color">{$server.name}</span></div> <div class="space123"></div>
{if $server_igra eq 'CS'}Mapa :{else}Jezik : {/if}<span class="morph_color">{$server_mapa}</span> <br /><div class="space123"></div>
Igraci : <span class="morph_color">{$broj_igraca}/{$maximalan_br_igraca}</span> <br /><div class="space123"></div>
Igra : <span class="morph_color">{if $server_igra eq 'CS'}Counter-Strike 1.6{else}San Andreas Multiplayer{/if}</span> <br /><div class="space123"></div>
</div>

<br /><div style="height:5px;"></div>

<div class="info_mor_graph">Grafik igraca</div> <br />
<div class="morph_chart_bg">
{if $server_igra eq 'CS5'}{$graph}{else} <img style='margin-left:10px;width:250px;height:120px;' src='http://banners.gametracker.rs/{$server.ip}:{$server.port}/graph-day/graph-day.jpg'> {/if} </div>
<br />
<div style="margin-left:-5px;" class="morph_info_test_1">Ukoliko vam ne crta grafik posle nekog vremena, proverite da li je vas server dodat na Gametracker.rs-u <a target='_blank' href='http://www.gametracker.rs/add_server/'>Dodaj server</a> </span>
<br /><br />

{/if}
</div>




