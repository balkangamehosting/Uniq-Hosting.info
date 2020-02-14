<?php /* Smarty version Smarty-3.0.7, created on 2018-01-07 00:52:16
         compiled from "template/profil.tpl" */ ?>
<?php /*%%SmartyHeaderCode:20216466605a51613013f065-80776762%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '9127185940d0638a3a18456ae04fac9a7453f274' => 
    array (
      0 => 'template/profil.tpl',
      1 => 1515266670,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '20216466605a51613013f065-80776762',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_smarty_tpl->getVariable('message')->value){?>
<div id="message" style="display:none;"><?php echo $_smarty_tpl->getVariable('message')->value;?>
</div>
<?php }?>

<div class="serveri_morph">
<img src="template/images/profil_title.png" border="0" />
<br />
Ovde mozete izmeniti vase informacije.
</div>

<br />

<div class="morph_prf"><br />
<form action="" method="post">
<label for="fname">Ime :</label> <input type="text" style="width:395px;" class="input" name="fname" value="<?php echo $_smarty_tpl->getVariable('profil_fname')->value;?>
" /> <br /><br />
<label for="lname">Prezime :</label> <input type="text" style="width:395px;" class="input" name="lname" value="<?php echo $_smarty_tpl->getVariable('profil_lname')->value;?>
" /> <br /><br />
<label for="email">Email :</label> <input type="text" style="width:395px;" class="input" name="email" value="<?php echo $_smarty_tpl->getVariable('profil_email')->value;?>
" /> <br /><br />
<label for="password">Sifra :</label> <input type="password" style="width:395px;" class="input" name="password" autocomplete="off" /> <br /><br />
<input type="submit" class="profile_submit" style="border:none;margin:auto;" name="submit" value="" />
</form>
</div>
<div id="novipodrska-novi">
				<div id="novipodrska-novi-novi">
					<div class="footer-copyright">Copyright 2018 Uniq Hosting. Sva prava zadrzana.</div> 
					<div class="footer-kontakt">Designed and coded by: Uniq-Hosting www.uniq-hosting.info</div>
				</div>
<br />