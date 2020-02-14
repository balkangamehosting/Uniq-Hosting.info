<?php /* Smarty version Smarty-3.0.7, created on 2018-01-08 11:18:35
         compiled from "template/tiket.tpl" */ ?>
<?php /*%%SmartyHeaderCode:14327701455a53457bc77084-68176204%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'c7c45ad2cf9f34adc26d00652a55f3c4b8832c4c' => 
    array (
      0 => 'template/tiket.tpl',
      1 => 1440858790,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '14327701455a53457bc77084-68176204',
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

<div class="morph_fdl">
<h3><?php echo $_smarty_tpl->getVariable('tiket_naslov')->value;?>
</h3>

<div id="ticket">
<a href="./main.php?page=podrska"><img src="template/images/vrati_se_na_tikete.png" border="0" /></a> <br /><br />
<a href="./main.php?page=tiket&id=<?php echo $_smarty_tpl->getVariable('tiket_id')->value;?>
&zatvori=yes"><img src="template/images/zatvori.png" border="0" /></a>
</div>
</div>

<div id="lista_odgovora">

<?php  $_smarty_tpl->tpl_vars['odgovor'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('odgovori')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['odgovor']->key => $_smarty_tpl->tpl_vars['odgovor']->value){
?>
<div class="obavjest">
<div class="obavjest_top tiket_odgovor_top">
<div class="obavjest_title"><?php echo $_smarty_tpl->tpl_vars['odgovor']->value['user'];?>
 <?php echo $_smarty_tpl->tpl_vars['odgovor']->value['user1'];?>
</div> <div class="obavjest_datum"><?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['odgovor']->value['vrijeme_odgovora'],"%d.%m.%Y   %H:%M:%S");?>
</div>
<div class="clear"></div>
</div>
<div class="obavjest_text">
<div class="obavjest_top_text"></div>
<div class="obavjest_normal_text tiket_text">
<?php echo $_smarty_tpl->tpl_vars['odgovor']->value['odgovor'];?>


<div class="space123"></div>

<?php if ($_smarty_tpl->tpl_vars['odgovor']->value['napomena']==''){?><?php }else{ ?><div class="line_morph"></div> <div class="space123"></div><?php }?>
<?php echo $_smarty_tpl->tpl_vars['odgovor']->value['napomena'];?>

</div>
</div>
</div>

<br />
<?php }} ?>

<?php if ($_smarty_tpl->getVariable('tiket_zatvoren')->value==1){?>

<?php }else{ ?>
<form action="" method="post">
<textarea placeholder="Odgovori" class="input" style="width:660px;height:100px;max-width:660px;max-height:100px;" name="odgovor">
</textarea>
<input type="image" src="template/images/odgovori.png" border="0" class="odgovori_dugme" />
</form>
<?php }?>

</div>


<div class="clear"></div>
</div>
<br />



<?php }?>
</div>
