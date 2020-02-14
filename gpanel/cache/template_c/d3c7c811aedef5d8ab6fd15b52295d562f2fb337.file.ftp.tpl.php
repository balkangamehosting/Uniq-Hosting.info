<?php /* Smarty version Smarty-3.0.7, created on 2018-01-07 00:58:31
         compiled from "template/ftp.tpl" */ ?>
<?php /*%%SmartyHeaderCode:15098638625a5162a7416fe2-44359614%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'd3c7c811aedef5d8ab6fd15b52295d562f2fb337' => 
    array (
      0 => 'template/ftp.tpl',
      1 => 1497709597,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '15098638625a5162a7416fe2-44359614',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php if (!is_callable('smarty_function_math')) include '/var/www/html/gpanel/includes/libs/plugins/function.math.php';
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


<div class="clear"></div>
</div>
</div>

<br />


<table style="margin-left:25px;width:900px;" class="morphtbl">
<tr>
<th>File</th>
<th>Size</th>
<th>User</th>
<th>Group</th>
<th>Prems</th>
<th>Action</th>
</tr>

<?php  $_smarty_tpl->tpl_vars['x'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('ftp_folderi')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['x']->key => $_smarty_tpl->tpl_vars['x']->value){
?>

<tr>
<td>
<img src="template/images/ftp_folder.png" border="0" /> <a href="main.php?page=ftp&id=<?php echo $_smarty_tpl->getVariable('id')->value;?>
&path=<?php echo $_smarty_tpl->getVariable('old_path')->value;?>
<?php echo $_smarty_tpl->tpl_vars['x']->value[8];?>
">
<?php if (((mb_detect_encoding($_smarty_tpl->tpl_vars['x']->value[8], 'UTF-8, ISO-8859-1') === 'UTF-8') ? preg_match_all('#[^\s\pZ]#u', $_smarty_tpl->tpl_vars['x']->value[8], $tmp) : preg_match_all('/[^\s]/',$_smarty_tpl->tpl_vars['x']->value[8], $tmp))>18){?> 
<?php echo substr($_smarty_tpl->tpl_vars['x']->value[8],0,18);?>
...
<?php }else{ ?>
<?php echo $_smarty_tpl->tpl_vars['x']->value[8];?>

<?php }?></a>
</td>

<td>
<?php if ($_smarty_tpl->tpl_vars['x']->value[4]<1024){?> 
<?php echo $_smarty_tpl->tpl_vars['x']->value[4];?>
 B
<?php }elseif($_smarty_tpl->tpl_vars['x']->value[4]<1048576){?> 
<?php ob_start();?><?php echo smarty_function_math(array('equation'=>"size / 1024",'size'=>$_smarty_tpl->tpl_vars['x']->value[4]),$_smarty_tpl);?>
<?php echo sprintf("%.2f",ob_get_clean())?> KB 
<?php }else{ ?> 
<?php ob_start();?><?php echo smarty_function_math(array('equation'=>"size / 1024 / 1024",'size'=>$_smarty_tpl->tpl_vars['x']->value[4]),$_smarty_tpl);?>
<?php echo sprintf("%.2f",ob_get_clean())?> MB 
<?php }?> 
</td>

<td>
<?php echo $_smarty_tpl->tpl_vars['x']->value[2];?>

</td>

<td>
<?php echo $_smarty_tpl->tpl_vars['x']->value[3];?>

</td>

<td>
<?php echo $_smarty_tpl->tpl_vars['x']->value[0];?>

</td>

<td>
<img id="delete_folder" class="delete_folder" informacije="<?php echo $_smarty_tpl->getVariable('id')->value;?>
,<?php echo $_smarty_tpl->getVariable('old_path')->value;?>
,<?php echo $_smarty_tpl->tpl_vars['x']->value[8];?>
" src="template/images/ftp_delete.png" border="0" />
</td>

<?php }} ?>

<?php  $_smarty_tpl->tpl_vars['x'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('ftp_fajlovi')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['x']->key => $_smarty_tpl->tpl_vars['x']->value){
?>

<tr>
<td>
<img src="template/images/ftp_fajl.png" border="0" /> 
<?php if ($_smarty_tpl->tpl_vars['x']->value[9]){?> 
<a href="main.php?page=ftp_file&id=<?php echo $_smarty_tpl->getVariable('id')->value;?>
&path=<?php echo $_smarty_tpl->getVariable('old_path')->value;?>
&file=<?php echo $_smarty_tpl->tpl_vars['x']->value[8];?>
">
<?php if (((mb_detect_encoding($_smarty_tpl->tpl_vars['x']->value[8], 'UTF-8, ISO-8859-1') === 'UTF-8') ? preg_match_all('#[^\s\pZ]#u', $_smarty_tpl->tpl_vars['x']->value[8], $tmp) : preg_match_all('/[^\s]/',$_smarty_tpl->tpl_vars['x']->value[8], $tmp))>18){?> 
<?php echo substr($_smarty_tpl->tpl_vars['x']->value[8],0,18);?>
...
<?php }else{ ?>
<?php echo $_smarty_tpl->tpl_vars['x']->value[8];?>

<?php }?>
</a>
<?php }else{ ?>

<?php if (((mb_detect_encoding($_smarty_tpl->tpl_vars['x']->value[8], 'UTF-8, ISO-8859-1') === 'UTF-8') ? preg_match_all('#[^\s\pZ]#u', $_smarty_tpl->tpl_vars['x']->value[8], $tmp) : preg_match_all('/[^\s]/',$_smarty_tpl->tpl_vars['x']->value[8], $tmp))>18){?> 
<?php echo substr($_smarty_tpl->tpl_vars['x']->value[8],0,18);?>
...
<?php }else{ ?>
<?php echo $_smarty_tpl->tpl_vars['x']->value[8];?>

<?php }?>

<?php }?>
</td>

<td>
<?php if ($_smarty_tpl->tpl_vars['x']->value[4]<1024){?> 
<?php echo $_smarty_tpl->tpl_vars['x']->value[4];?>
 B
<?php }elseif($_smarty_tpl->tpl_vars['x']->value[4]<1048576){?> 
<?php ob_start();?><?php echo smarty_function_math(array('equation'=>"size / 1024",'size'=>$_smarty_tpl->tpl_vars['x']->value[4]),$_smarty_tpl);?>
<?php echo sprintf("%.2f",ob_get_clean())?> KB 
<?php }else{ ?> 
<?php ob_start();?><?php echo smarty_function_math(array('equation'=>"size / 1024 / 1024",'size'=>$_smarty_tpl->tpl_vars['x']->value[4]),$_smarty_tpl);?>
<?php echo sprintf("%.2f",ob_get_clean())?> MB 
<?php }?> 
</td>

<td>
<?php echo $_smarty_tpl->tpl_vars['x']->value[2];?>

</td>

<td>
<?php echo $_smarty_tpl->tpl_vars['x']->value[3];?>

</td>

<td>
<?php echo $_smarty_tpl->tpl_vars['x']->value[0];?>

</td>

<td>
<img id="delete_file" class="delete_file" ftp_id="<?php echo $_smarty_tpl->getVariable('id')->value;?>
" ftp_path="<?php echo $_smarty_tpl->getVariable('old_path')->value;?>
" ftp_fname="<?php echo $_smarty_tpl->tpl_vars['x']->value[8];?>
" src="template/images/ftp_delete.png" border="0" />
<?php if ($_smarty_tpl->tpl_vars['x']->value[9]){?> 
<a href="main.php?page=ftp_file&id=<?php echo $_smarty_tpl->getVariable('id')->value;?>
&path=<?php echo $_smarty_tpl->getVariable('old_path')->value;?>
&file=<?php echo $_smarty_tpl->tpl_vars['x']->value[8];?>
"><img src="template/images/ftp_edit.png" border="0" /></a>
<?php }?> 
</td>
</th>
<?php }} ?>

</table>




<br /><br />

<div id="upload_file">
<div id="upload_file_title"><img src="template/images/upload_file.png" border="0" /></div>
<div id="upload_form">
<form action="main.php?page=ftp&id=<?php echo $_smarty_tpl->getVariable('id')->value;?>
&path=<?php echo $_smarty_tpl->getVariable('old_path')->value;?>
" method="post" enctype="multipart/form-data">
<input type="hidden" name="upload_file" value="yes" />
<input type="file" name="file" class="filename" size="25" /> 
<input type="image" src="template/images/upload_button.png" class="upload_button" />
</form>
</div>
</div>

<div id="create_folder">
<div id="create_folder_title"><img src="template/images/make_new_folder.png" border="0" /></div>
<div id="create_folder_form">
<form method="post" action="main.php?page=ftp&id=<?php echo $_smarty_tpl->getVariable('id')->value;?>
&path=<?php echo $_smarty_tpl->getVariable('old_path')->value;?>
">
<input type="text" class="create_folder_input" name="folder_name" />
<input type="image" src="template/images/ftp_yes.png" class="input_yes" />
</form>
</div>
</div>

<div class="clear"></div>
</div>


<br /><br />

<?php }?>
</div>

