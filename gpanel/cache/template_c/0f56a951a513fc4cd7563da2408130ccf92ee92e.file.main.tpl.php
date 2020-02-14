<?php /* Smarty version Smarty-3.0.7, created on 2018-01-07 00:45:21
         compiled from "template/main.tpl" */ ?>
<?php /*%%SmartyHeaderCode:239247025a515f911506c4-58622714%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '0f56a951a513fc4cd7563da2408130ccf92ee92e' => 
    array (
      0 => 'template/main.tpl',
      1 => 1515282295,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '239247025a515f911506c4-58622714',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php if (!is_callable('smarty_modifier_date_format')) include '/var/www/html/gpanel/includes/libs/plugins/modifier.date_format.php';
?><div class="obv1">Dobrodosao u GamePanel
<br /><br />

<img src='template/images/test.png'>

</div>



<div class="novosti_morph">

<?php  $_smarty_tpl->tpl_vars['nws'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('news')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['nws']->key => $_smarty_tpl->tpl_vars['nws']->value){
?>
<div class="obavjest">
<div class="obavjest_top">
<div class="obavjest_title"><?php echo $_smarty_tpl->tpl_vars['nws']->value['title'];?>
</div> <div class="obavjest_datum"><?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['nws']->value['date'],"%d.%m.%Y");?>
  <?php if (smarty_modifier_date_format($_smarty_tpl->tpl_vars['nws']->value['date'],"%d.%m.%Y")==smarty_modifier_date_format(time(),"%d.%m.%Y")){?><span class='blink_me' style='color:green;font-size:12px;font-weight:bold;margin-left:20px;'>NOVA PORUKA!</span><?php }else{ ?><?php }?></div>
<div class="clear"></div>
</div>
<div class="obavjest_text">
<div class="obavjest_top_text"></div>
<div class="obavjest_normal_text">
<?php echo $_smarty_tpl->tpl_vars['nws']->value['text'];?>

</div>
<div class="obavjest_bottom_text"></div>
</div>
</div>
<br />
<?php }} else { ?>
<div class="obavjest">
<div class="obavjest_top">
<div class="obavjest_title">Nema Obavijestenja</div> <div class="obavjest_datum"><?php echo smarty_modifier_date_format(time(),"%d.%m.%Y");?>
</div>
<div class="clear"></div>
</div>
<div class="obavjest_text">
<div class="obavjest_top_text"></div>
<div class="obavjest_normal_text">
Trenutno nema vijesti ni obavijestenja.
</div>
<div class="obavjest_bottom_text"></div>
</div>
</div>
<?php } ?>

<div id="novi-novi">
				<div id="novi-novi-novi">
					<div class="footer-copyright">Copyright 2018 Uniq Hosting. Sva prava zadrzana.</div> 
					<div class="footer-kontakt">Designed and coded by: Uniq-Hosting www.uniq-hosting.info</div>
				</div>


</div>

</div>

</div>
