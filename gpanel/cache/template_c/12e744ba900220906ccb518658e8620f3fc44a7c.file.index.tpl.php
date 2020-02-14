<?php /* Smarty version Smarty-3.0.7, created on 2018-01-07 14:17:08
         compiled from "template/index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:3468033135a521dd4523f56-15444973%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '12e744ba900220906ccb518658e8620f3fc44a7c' => 
    array (
      0 => 'template/index.tpl',
      1 => 1515330970,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '3468033135a521dd4523f56-15444973',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>

<?php if ($_smarty_tpl->getVariable('message')->value){?>
<div id="message" style="display:none;"><?php echo $_smarty_tpl->getVariable('message')->value;?>
</div>
<?php }?>
<div id="main">

<div id="logo"><a href="index.php"><img src="template/images/logo.png" border="0" /></a></div>
</div>

<!-- SOU Hosting - Navigacija -->
			<div id="navigacijaa">
				<ul id="navigacijaa-razmak">
					<li><a class="aktivno" href="/index.php">POCETNA</a></li>
					<li><a href="/gpanel/">GAME PANEL</a></li>
					<li><a href="/naruci/">NARUCI</a></li>
					<li><a href="/kontakt.php">KONTAKT</a></li>
				</ul>
			</div>


<div id="navgacija_bg">
<div id="navigacija">
<ul>

</ul>
</div>

<div id="login_bg">
<div id="main">
<div id="login">
<form onsubmit="skloni();return false;">
<div id="email"><img src="template/images/email.png" border="0" /></div>
<div id="email_input"><input type="text" placeholder="info@uniq-hosting.info" name="email" id="emaili" class="input" /></div>
<div id="password"><img src="template/images/pass.png" border="0" /></div>
<div id="password_input"><input type="password" placeholder="demo" name="password" id="passwordi" class="input" /></div>
<div id="remember_me"><input type="checkbox" name="remember_me" id="remember" value="1" checked="1" /> Zapamti me</div>
<div id="lost_pw"><a href="#">Zaboravili ste lozinku?</a></div>
<center><a href="demo.php">Demo Login</center>
</div>
</div>
</div>
<div id="main">
<div id="login">
<div id="login_btn"><input type="image" id="loginbtni" src="template/images/login_btn.png" name="submit" /></div>
</form>



</div>


