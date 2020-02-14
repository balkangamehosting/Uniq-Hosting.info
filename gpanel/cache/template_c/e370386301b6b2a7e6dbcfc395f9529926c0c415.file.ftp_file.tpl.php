<?php /* Smarty version Smarty-3.0.7, created on 2018-01-07 00:58:25
         compiled from "template/ftp_file.tpl" */ ?>
<?php /*%%SmartyHeaderCode:8713498285a5162a115d700-37958455%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e370386301b6b2a7e6dbcfc395f9529926c0c415' => 
    array (
      0 => 'template/ftp_file.tpl',
      1 => 1440858662,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '8713498285a5162a115d700-37958455',
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
<img src="template/images/web_ftp2.png" border="0" />
<br />
Direktan pristup fajlovima servera putem FTP protokola.<br />
</div>

<br />

<div id="ftp_path">
<div id="ftp_home">
<a href="main.php?page=ftp&id=<?php echo $_smarty_tpl->getVariable('id')->value;?>
&path=/"><img src="template/images/ftp_home.png" border="0" /></a> 
</div>

<?php echo $_smarty_tpl->getVariable('ftp_path')->value;?>



<div class="ftp_path_folder">
<a href="main.php?page=ftp_file&id=<?php echo $_smarty_tpl->getVariable('id')->value;?>
&path=<?php echo $_smarty_tpl->getVariable('old_path')->value;?>
&file=<?php echo $_smarty_tpl->getVariable('file')->value;?>
"><?php echo $_smarty_tpl->getVariable('file')->value;?>
</a>
</div>
<div class="clear"></div>
</div>

<div id="edit_file">
<div class="obavjest_top_text"></div>
<div class="obavjest_normal_text">

<form method="post" name="file_edit" id="file_edit" action="">
<textarea name="new_file" spellcheck="false" cols="100%" class="edit_file_textare"><?php echo $_smarty_tpl->getVariable('ftp_contents')->value;?>
</textarea>
</div>
<div class="obavjest_bottom_text"></div>
<div class="clear"></div>
<input type="image" src="template/images/sacuvaj.png" name="submit" class="sacuvaj_fajl" />
</form>
</div>

</div>

<?php }?>
</div>

