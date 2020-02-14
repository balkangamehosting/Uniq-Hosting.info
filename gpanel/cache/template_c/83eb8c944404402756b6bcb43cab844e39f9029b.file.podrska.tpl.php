<?php /* Smarty version Smarty-3.0.7, created on 2018-01-07 14:42:58
         compiled from "template/podrska.tpl" */ ?>
<?php /*%%SmartyHeaderCode:7583640075a5223e264c335-24144712%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '83eb8c944404402756b6bcb43cab844e39f9029b' => 
    array (
      0 => 'template/podrska.tpl',
      1 => 1515331231,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '7583640075a5223e264c335-24144712',
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


<div class="serveri_morph">
<img src="template/images/podrska_title.png" border="0" />
<br />
Dobrodosli na Uniq Hosting support center.<br />
Ovde mozete otvarati nove tikete ukoliko vam treba pomoc ili podrska oko servera.<br />
Ako ste dobili odgovor molimo Vas ZATVORITE tiket!<br />
</div>

<div id="podrska_menu">
<a href="./main.php?page=podrska&arhiva=yes"><img src="template/images/pogledaj_sve_tikete.png" border="0" /></a> <br /><br /> <a href="./main.php?page=otvori_tiket"><img src="template/images/otvori_novi_tiket.png" border="0" /></a>
</div>

<br /><br /><br />

<table style="margin-left:9px;" class="morphtbl">
<tr>
<th>Status</th>
<th>ID</th>
<th>Datum</th>
<th>Server</th>
<th>Naslov tiketa</th>
<th>Broj odgovora</th>
<th>Poslednji odgovor</th>
</tr>

<?php  $_smarty_tpl->tpl_vars['tiket'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('tiketi')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['tiket']->key => $_smarty_tpl->tpl_vars['tiket']->value){
?>

<tr>
<td><?php if ($_smarty_tpl->tpl_vars['tiket']->value['status']=='Odgovoren'){?><span style='color:green;'><?php echo $_smarty_tpl->tpl_vars['tiket']->value['status'];?>
</span><?php }elseif($_smarty_tpl->tpl_vars['tiket']->value['status']=='Neodgovoren'){?> <span style='color:#FFF;'><?php echo $_smarty_tpl->tpl_vars['tiket']->value['status'];?>
 </span> <?php }else{ ?><span style='color:red;'><?php echo $_smarty_tpl->tpl_vars['tiket']->value['status'];?>
</span><?php }?></td>
<td><a href="main.php?page=tiket&id=<?php echo $_smarty_tpl->tpl_vars['tiket']->value['id'];?>
">#<?php echo $_smarty_tpl->tpl_vars['tiket']->value['id'];?>
</a></td>
<td><?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['tiket']->value['datum'],"%d.%m.%Y");?>
</td>
<td><?php echo $_smarty_tpl->tpl_vars['tiket']->value['ip'];?>
:<?php echo $_smarty_tpl->tpl_vars['tiket']->value['port'];?>
</td>
<td><a href="main.php?page=tiket&id=<?php echo $_smarty_tpl->tpl_vars['tiket']->value['id'];?>
">
<?php if (((mb_detect_encoding($_smarty_tpl->tpl_vars['tiket']->value['naslov'], 'UTF-8, ISO-8859-1') === 'UTF-8') ? preg_match_all('#[^\s\pZ]#u', $_smarty_tpl->tpl_vars['tiket']->value['naslov'], $tmp) : preg_match_all('/[^\s]/',$_smarty_tpl->tpl_vars['tiket']->value['naslov'], $tmp))>21){?> 
<?php echo substr($_smarty_tpl->tpl_vars['tiket']->value['naslov'],0,21);?>
...
<?php }else{ ?>
<?php echo $_smarty_tpl->tpl_vars['tiket']->value['naslov'];?>

<?php }?>
</a></td>
<td><?php echo $_smarty_tpl->tpl_vars['tiket']->value['broj_odgovora'];?>
</td>
<td><?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['tiket']->value['zadnji_odgovor'],"%Y-%m-%d %H:%M");?>
</td>
</tr>

<?php }} else { ?>

</table>

<span style="font-family:TAHOMA;font-size:12px;font-weight:bold;margin-left:10px;">Nema tiketa</span>


<?php } ?>

<?php }?>
</div>

</table>
<div id="novipodrska-novi">
				<div id="novipodrska-novi-novi">
					<div class="footer-copyright">Copyright 2018 Uniq Hosting. Sva prava zadrzana.</div> 
					<div class="footer-kontakt">Designed and coded by: Uniq-Hosting www.uniq-hosting.info</div>
				</div>
<br />