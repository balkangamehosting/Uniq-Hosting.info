<?php /* Smarty version Smarty-3.0.7, created on 2018-01-07 12:59:55
         compiled from "template/ip_logs.tpl" */ ?>
<?php /*%%SmartyHeaderCode:15199182435a520bbba822c6-61472017%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'b5800358097970cd29929b57d0193b76b2dcb85e' => 
    array (
      0 => 'template/ip_logs.tpl',
      1 => 1440858684,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '15199182435a520bbba822c6-61472017',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php if (!is_callable('smarty_modifier_date_format')) include '/var/www/html/gpanel/includes/libs/plugins/modifier.date_format.php';
?><?php if ($_smarty_tpl->getVariable('message')->value){?>
<div id="message" style="display:none;"><?php echo $_smarty_tpl->getVariable('message')->value;?>
</div>
<?php }?>

<br /><br />

<table class="morphtbl">
<tr>
<th>IP</th>
<th>Hostname</th>
<th>Vreme</th>
</tr>

<?php  $_smarty_tpl->tpl_vars['log'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('logovi')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['log']->key => $_smarty_tpl->tpl_vars['log']->value){
?>
<tr>
<td><?php echo $_smarty_tpl->tpl_vars['log']->value['ip'];?>
 </td> <td><?php echo $_smarty_tpl->tpl_vars['log']->value['hostname'];?>
</td> <td><?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['log']->value['vreme'],"%Y-%m-%d %H:%M");?>
</td>
</tr>
<div class="clear"></div>
<?php }} else { ?>

</table>

<span style="font-family:TAHOMA;font-size:12px;font-weight:bold;margin-left:10px;">Jos uvek nema logova.</span><br /><br />

<?php } ?>

</table>

<br />