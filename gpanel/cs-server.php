<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<!-- Meta -->
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="distribution" content="global" /> 
	<meta name="robots" content="index, follow" /> 
	<meta name="og:site_name" property="og:site_name" content="Plus Hosting » Game Hosting" /> 
	<meta name="fb:admins" property="fb:admins" content="rloveution" />
	<meta name="og:type" property="og:type" content="website" />
	<meta property="og:description" content="Plus Hoster » Game Hosting" />
	<meta property='og:image' content='assets/images/ogimage-souhosting.png'/>
	<title>PLUS HOSTER NARUCIVANJE</title>

	<!-- Includes -->
	<link rel="stylesheet" type="text/css" href="assets/css/style.css" />
	<script type="text/javascript" src="assets/js/jquery-1.8.3.js"></script>
	<script type="text/javascript" src="assets/js/javascript.js"></script>

	<!-- Google analytics -->
	<script type="text/javascript">
	var _gaq = _gaq || [];
	_gaq.push(['_setAccount', 'UA-XXXXX-X']);
	_gaq.push(['_trackPageview']);

	(function() {
		var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
		ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
		var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
	})();
	</script>

	<!-- Blink function -->
	<script type="text/javascript">
		function blink() {
			var blinks = document.getElementsByTagName('blink');
			for (var i = blinks.length - 1; i >= 0; i--) {
				var s = blinks[i];
				s.style.visibility = (s.style.visibility === 'visible') ? 'hidden' : 'visible';
			}
			window.setTimeout(blink, 500);
		}
		if (document.addEventListener) document.addEventListener("DOMContentLoaded", blink, false);
		else if (window.addEventListener) window.addEventListener("load", blink, false);
		else if (window.attachEvent) window.attachEvent("onload", blink);
		else window.onload = blink;
	</script>


<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-90017566-1', 'auto');
  ga('send', 'pageview');

</script>


</head>
<body>
	<?php require('konfiguracija.php'); ?>

	<!-- PLUS HOSTER - Bar -->
	<div id="bar-bg">
		<div id="bar-wrapper">
			<img src="assets/images/arrow.png" class="novosti-arrow" alt="" />
			<span class="novosti-text">Dobrodosli na nas sajt. Zelimo vam srecnu Novu Godinu, i Novogodosinje praznike!.<//?php echo $obavjest; ?></span>
			<span class="novosti-gplink"><a href="https://www.facebook.com/plushoster/">Facebook</a></span>
		</div>
	</div>


	<!-- LSD HOSTING - Wrapper -->
	<div id="wrapper">
		<!-- LSD HOSTING - Logo -->
		<div id="logo-wrapper">
			<a href="index.php"></a>
		</div>

<!-- SOU Hosting - Navigacija -->
			<div id="navigacijaa">
				<ul id="navigacijaa-razmak">
					<li><a class="aktivno" href="index.php">POCETNA</a></li>
					<li><a href="/gpanel/main.php">GAME PANEL</a></li>
					<li><a href="/gpanel/cs-server.php">NARUCI</a></li>
					<li><a href="web-usluge.php">WEB HOSTING</a></li>
					<li><a href="vps.php">VPS</a></li>
					<li><a href="kontakt.php">KONTAKT</a></li>
				</ul>
			</div>


			<!-- PLUS HOSTER - Main -->
			<div id="main">

				<div id="main-wrapper">
					<div id="container">
						<div id="container-wrapper">
							<p class="obavjests">Uz svaki kupljeni Counter Strike 1.6 server 32 slota dobijete 5boosta gratis + cw server 12 slotova.<//?php echo $obavjestenje; ?></p>
						</div>
					</div><?php require('forme.php'); ?>

					<br />
					<br />
					<div id="container">
						<div id="container-wrapper">
							<form action="" method="post" name="narudzbina" id="zakupi-forma">
								<h1 class="zakupi-hone">ZAKUPI SVOJ SERVER</h1><br />
								<div class="zakupi-selects">
									<select name="drzava" class="select">
										<option ="Bosna i Hercegovina">Bosna i Hercegovina</option>
										<option value="Srbija">Srbija</option>
									</select>
									<select name="lokacija" class="select">
										<option value="Lite-Nemacka">Lite-Nemacka</option>
									</select>
									<select name="igra" class="select" id="igra" onchange="vigre();">
										<option value="Counter Strike 1.6">Counter Strike 1.6</option>
										<option value="San Andreas Multiplayer">San Andreas Multiplayer</option>
										<option value="Teamspeak 3">Teamspeak 3</option>
									</select>
									<select name="slotovi" class="select" id="slotovi" onchange="izracunaj(this.value);">
										<option value="12">12</option>
										<option value="14">14</option>
										<option value="16">16</option>
										<option value="18">18</option>
										<option value="20">20</option>
										<option value="22">22</option>
										<option value="24">24</option>
										<option value="26">26  --->2 boost gratis+cw 12slota</option>
										<option value="28">28  --->3 boosta gratis+cw 12slota</option>
										<option value="30">30  --->4 boosta gratis+cw 12slota</option>
										<option value="32">32  --->5 boosta gratis+cw 12slota</option>
									</select>
									<input type="text" value="8 KM / 516 RSD / 4.19 €" name="cijena" class="cjinput" id="kcijena" readonly />
									<input type="submit" value="NARUČI" name="narucics" class="zakupi-button" />
								</div>
								<div class="zakupi-inputs">
									<input type="text" name="ime" class="input" placeholder="IME" />
									<input type="text" name="prezime" class="pzinput" placeholder="PREZIME" />
									<input type="text" name="email" class="eminput" placeholder="E-MAIL" />
									<input type="text" name="provjera" class="prinput" placeholder="7+6" />
								</div>							</form>
							<div id="test-srvs">
								<h1 class="zakupi-hone">OSTALE PONUDE</h1>
								<input type="text" value="San Andreas Multiplayer" class="tstinput" style="margin-top:10px;" readonly />
								<input type="text" value="Team Speak 3" class="tstinput" style="margin-top:10px;" readonly />
								<input type="text" value="VPS" class="tstinput" style="margin-top:10px;" readonly />
								<input type="text" value="Web Hosting" class="tstinput" style="margin-top:10px;" readonly />
								<p>Serveri se hostaju na mašini od 8 GB rama i i7 procesoru..</p>
							</div>
							<div class="clear"></div><br />
													</div>
					</div>
				</div>
			</div>

						<div id="footer-bar">
				<div id="footer-bar-wrapper">
					<div class="footer-copyright">Copyright © 2017 Plus Hoster. Sva prava zadržana.</div>
					<div class="footer-kontakt">Designed and coded by: Milos Stefanovic » www.plushoster.com</div>
				</div>
			</div>
		</div>
	</div>
	<br />
	<br />
	<br />
</body>
</html>