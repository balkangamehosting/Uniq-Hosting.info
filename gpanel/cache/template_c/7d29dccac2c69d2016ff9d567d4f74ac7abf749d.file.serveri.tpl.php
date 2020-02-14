<?php /* Smarty version Smarty-3.0.7, created on 2018-01-07 00:45:24
         compiled from "template/serveri.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2414236815a515f94093f80-85782333%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '7d29dccac2c69d2016ff9d567d4f74ac7abf749d' => 
    array (
      0 => 'template/serveri.tpl',
      1 => 1515266638,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2414236815a515f94093f80-85782333',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php if (!is_callable('smarty_modifier_date_format')) include '/var/www/html/gpanel/includes/libs/plugins/modifier.date_format.php';
?>
<div class="serveri_morph">
<img src="template/images/serveri2.png" border="0" />
<br />
Lista svih vasih servera
</div>

<br />

<table class="morphtbl">
<tr>
<th>Ime servera</th>
<th>IP adresa</th>
<th>Slotova</th>
<th>Cena</th>
<th>Istice</th>
<th>Status</th>
</tr>

<?php  $_smarty_tpl->tpl_vars['srv'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('serveri')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['srv']->key => $_smarty_tpl->tpl_vars['srv']->value){
?>
<tr>
<td><a href="main.php?page=server&id=<?php echo $_smarty_tpl->tpl_vars['srv']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['srv']->value['name'];?>
</a></td>  <td><?php if ($_smarty_tpl->tpl_vars['srv']->value['mod']=='52'){?><img style='height:10px;width:10px;' src='template/images/game-samp.png'><?php }else{ ?><img style='height:10px;width:10px;' src='template/images/game-cs.png'><?php }?> <?php echo $_smarty_tpl->tpl_vars['srv']->value['ip'];?>
:<?php echo $_smarty_tpl->tpl_vars['srv']->value['port'];?>
</<td> <td><?php echo $_smarty_tpl->tpl_vars['srv']->value['slotovi'];?>
</<td> <td><?php echo $_smarty_tpl->tpl_vars['srv']->value['cena'];?>
</td> <td><?php if (smarty_modifier_date_format($_smarty_tpl->tpl_vars['srv']->value['istice'],"%Y.%m.%d")>smarty_modifier_date_format(time(),"%Y.%m.%d")){?> <?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['srv']->value['istice'],"%d.%m.%Y");?>
 <?php }else{ ?> <font color="red"><?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['srv']->value['istice'],"%d.%m.%Y");?>
</font> <?php }?></td> <td><span class="server_list_status <?php if ($_smarty_tpl->tpl_vars['srv']->value['status']=='Aktivan'){?>zelena<?php }else{ ?>crvena<?php }?>"><?php echo $_smarty_tpl->tpl_vars['srv']->value['status'];?>
 </span> </td>
</tr>
<div class="clear"></div>
<?php }} else { ?>


</table>

<span style="font-family:TAHOMA;font-size:12px;font-weight:bold;margin-left:10px;">Jos uvek nemate server kod nas.</span><br />

<?php } ?>


<br />

</div>


</div>

</table>
<div id="novii-novi">
				<div id="novii-novi-novi">
					<div class="footer-copyright">Copyright 2018 Uniq Hosting. Sva prava zadrzana.</div> 
					<div class="footer-kontakt">Designed and coded by: Uniq-Hosting www.uniq-hosting.info</div>
				</div>
<br />

