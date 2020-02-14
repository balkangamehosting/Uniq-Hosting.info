
{if $message}
<div id="message" style="display:none;">{$message}</div>
{/if}
<div id="main">

<div id="logo"><a href="index.php"><img src="template/images/logoplushoster.png" border="0" /></a></div>
</div>

<!-- SOU Hosting - Navigacija -->
			<div id="navigacijaa">
				<ul id="navigacijaa-razmak">
					<li><a class="aktivno" href="index2.php">POCETNA</a></li>
					<li><a href="/gpanel/main.php">GAME PANEL</a></li>
					<li><a href="/gpanel/cs-server.php">NARUCI</a></li>
					<li><a href="web-usluge.php">WEB HOSTING</a></li>
					<li><a href="vps.php">VPS</a></li>
					<li><a href="kontakt.php">KONTAKT</a></li>
				</ul>
			</div>


<div id="navgacija_bg">
<div id="navigacija">
<ul>
<li><a href="main.php" id="menuitem" class="menu_item">OBAVESTENJA</a></li>
<li><a href="main.php?page=serveri" id="menuitem" class="menu_item">SERVERI</a></li>
<li><a href="main.php?page=podrska" id="menuitem" class="menu_item">PODRSKA</a></li>
<li><a href="main.php?page=profil" id="menuitem" class="menu_item">KORISNICKI PANEL</a></li>
<li><a href="logout.php" id="menuitem" class="menu_item">ODJAVI SE</a></li>
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



</div>


