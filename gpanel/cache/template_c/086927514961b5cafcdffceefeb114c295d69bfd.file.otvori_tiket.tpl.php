<?php /* Smarty version Smarty-3.0.7, created on 2018-01-07 00:55:17
         compiled from "template/otvori_tiket.tpl" */ ?>
<?php /*%%SmartyHeaderCode:5859233255a5161e563abb4-12251298%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '086927514961b5cafcdffceefeb114c295d69bfd' => 
    array (
      0 => 'template/otvori_tiket.tpl',
      1 => 1440858720,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '5859233255a5161e563abb4-12251298',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<div id="main">
<?php if ($_smarty_tpl->getVariable('error')->value){?>

<div id="error" style="display:none;"><?php echo $_smarty_tpl->getVariable('error')->value;?>
</div>

<?php }else{ ?>

<?php if ($_smarty_tpl->getVariable('message')->value){?>
<div id="message" style="display:none;"><?php echo $_smarty_tpl->getVariable('message')->value;?>
</div>
<?php }?>

<div class="serveri_morph">
<img src="template/images/otvori_tiket.png" border="0" />
<br />
Popunjavanjem ovog formulara otvarate novi support tiket.<br />
Potrudite se da sto detaljnije opisete problem koji imate oko servera i nas support tim ce vam odgovoriti u najkracem roku. <br />
</div>

<br />

<div style="height:320px;" class="morph_prf"><br />
<form action="main.php?page=podrska" method="post">
<label for="tiket_title">Naslov:</label> <input style="width:350px;" class="input" type="text" name="tiket_title" />
<br /><br />

<label for="serveri">Server:</label> 
<select style="width:360px;" class="input" name="serveri" >
<?php  $_smarty_tpl->tpl_vars['srv'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('serveri')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['srv']->key => $_smarty_tpl->tpl_vars['srv']->value){
?>
<option value="<?php echo $_smarty_tpl->tpl_vars['srv']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['srv']->value['ip'];?>
:<?php echo $_smarty_tpl->tpl_vars['srv']->value['port'];?>
</option>
<?php }} ?>
</select>
<br /><br />

<label for="vrsta">Vrsta tiketa:</label> 
<select style="width:360px;" class="input" name="vrsta">
<option value="Podrska">Podrska</option>
<option value="Pitanje">Pitanje</option>
<option value="Uplata">Uplata</option>
</select>
<br /><br />

<label for="prioritet">Prioritet tiketa:</label> 
<select style="width:360px;" class="input" name="prioritet">
<option value="Hitno">Hitno</option>
<option value="Normalan">Normalan</option>
<option value="Nije hitno">Nije hitno</option>
</select>
<br /><br />

<label for="pitanje">Pitanje:</label>
<textarea name="pitanje" style="width:395px;height:70px;max-width:395px;max-height:70px;" class="input"></textarea>
<div class="clear"></div>
<input style="margin:auto;" type="image" src="template/images/otvori_novi_tiket.png" class="otvori_tiket_dugme" name="otvori_tiket" />
</form>
</div>

<br />

<?php }?>
</div>
