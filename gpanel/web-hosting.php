﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!-- Meta -->
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="distribution" content="global" /> 
	<meta name="robots" content="index, follow" /> 
	<meta name="og:site_name" property="og:site_name" content="Galaxy Hosting » Game Hosting" /> 
	<meta name="fb:admins" property="fb:admins" content="rloveution" />
	<meta name="og:type" property="og:type" content="website" />
	<meta property="og:description" content="Galaxy Hosting » Game Hosting" />
	<meta property='og:image' content='assets/images/ogimage-souhosting.png'/>
	<title>Web Hosting :: Galaxy Hosting</title>

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
</head>
<body>
	<?php require('konfiguracija.php'); ?>

	<!-- SOU Hosting - Bar -->
	<div id="bar-bg">
		<div id="bar-wrapper">
			<img src="assets/images/arrow.png" class="novosti-arrow" alt="" />
			<span class="novosti-text">Dobrodosli na nas sajt. Zelimo vam srecnu Novu Godinu, i Novogodosinje praznike!.<//?php echo $obavjest; ?></span>
			<span class="novosti-gplink"><a href="https://www.facebook.com/LSDHOSTING/">Facebook</a></span>
		</div>
	</div>

	<!-- SOU Hosting - Wrapper -->
	<div id="wrapper">
		<!-- SOU Hosting - Logo -->
		<div id="logo-wrapper">
			<a href="index.php"></a>
		</div>

		<div id="pozadina">
			<!-- SOU Hosting - Navigacija -->
			<div id="navigacija">
				<ul id="navigacija-razmak">
					<li><a class="aktivno" href="index.php">GLAVNA</a></li>
					<li><a href="/forum">FORUM</a></li>
					<li><a href="/gpanel">GAME PANEL</a></li>
					<li><a href="/cs-server.php">GAME HOSTING</a></li>
					<li><a href="web-usluge.php">WEB HOSTING</a></li>
					<li><a href="domene.php">DOMENE</a></li>
					<li><a href="kontakt.php">KONTAKT</a></li>
				</ul>
			</div>

			<!-- SOU Hosting - Main -->
			<div id="main">
				<div id="main-wrapper">
					<div id="container">
						<div id="container-wrapper">
							<h2 class="obavjestenje"><blink>VAŽNO OBAJEŠTENJE</blink></h2>
							<p class="obavjests"><?php echo $obavjestenje; ?></p>
						</div>
					</div><?php require('forme.php'); ?>

					<br />
					<br />
					<div id="container">
						<div id="container-wrapper">
							<form action="" method="post" name="narudzbina" id="zakupi-forma">
								<h1 class="zakupi-hone">ZAKUPI SVOJ PROSTOR</h1><br />
								<div class="zakupi-selects">
									<select name="drzava" class="select">
										<option value="Bosna i Hercegovina">Bosna i Hercegovina</option>
										<option value="Srbija">Srbija</option>
									</select>
									<select name="lokacija" class="select">
										<option value="Lite">Lite</option>
									</select>
									<select name="paket" class="select" id="paket" onchange="izracunaj(this.value);">
										<option value="1">Paket #1</option>
										<option value="2">Paket #2</option>
										<option value="3">Paket #3</option>
										<option value="4">Paket #4</option>
										<option value="5">Paket #5</option>
									</select>
									<select name="dns" class="select" id="dns">
										<option value="1">Koristite Galaxy Hosting DNS Servere</option>
										<option value="2">Koristite sopstvene DNS Servere</option>
									</select>
									<input type="text" value="3.6 KM / 180 RSD / 1.8 €" name="cijena" class="cjinput" id="kcijena" readonly />
									<input type="submit" value="NARUČI" name="naruciwh" class="zakupi-button" />
								</div>
								<div class="zakupi-inputs">
									<input type="text" name="ime" class="input" placeholder="IME" />
									<input type="text" name="prezime" class="pzinput" placeholder="PREZIME" />
									<input type="text" name="email" class="eminput" placeholder="E-MAIL" />
									<input type="text" name="provjera" class="prinput" placeholder="4+5" />
								</div>
							</form>
							<div id="test-srvs">
								<h1 class="zakupi-hone">TEST SERVERI</h1>
								<input type="text" value="&#8595;  WEB HOST TEST  &#8595;" class="tstinput" style="margin-top:22px;" readonly />
								<input type="text" value="WWW.GALAXY-HOSTING.INFO" class="tstinput" style="margin-top:10px;" readonly />
								<input type="text" value="&#8595;  WEB HOST TEST  &#8595;" class="tstinput" style="margin-top:10px;" readonly />
								<input type="text" value="WWW.GALAXY-HOSTING.INFO" class="tstinput" style="margin-top:10px;" readonly />
								<p>Serveri se hostaju na mašini od 16 GB rama i i7 procesoru..</p>
							</div>
							<div class="clear"></div><br />
							<div id="zakupi-opis">
								<h1 class="zakupi-hone">WEB SERVERI</h1>
								<br />
								<p class="zakupi-pclass"><?php echo $webserveri; ?></p>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- SOU Hosting - Footer -->
			<div id="footer">
				<div id="footer-wrapper">
					<div id="footer-payments">
						<div id="footer-logo"></div>
						<div id="footer-paypal"></div>
					</div>
					<div id="footer-linkovi">
						<div id="footer-link">
							<h1>GAME HOSTING</h1>
							<ul>
								<li><a href="cs-server.php">Counter Strike 1.6</a></li>
								<li><a href="samp-server.php">SA-MP</a></li>
								<li><a href="ts-server.php">Teamspeak 3</a></li>
								<li><a href="web-usluge.php">Web usluge</a></li>
							</ul>
						</div>
						<div id="footer-link">
							<h1>LINKOVI</h1>
							<ul>
								<li><a href="/gpanel">Game Panel</a></li>
								<li><a href="naruci.php">Cijenovnik</a></li>
								<li><a href="domene.php">Domene</a></li>
							</ul>
						</div>
						<div id="footer-link">
							<h1>OSTALO</h1>
							<ul>
								<li><a href="tos.pdf">Uslovi korišćenja</a></li>
								<li><a href="kontakt.php">Kontakt</a></li>
								<li><a href="mailto:lsdhosting@gmail.com">Email</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div id="footer-bar">
				<div id="footer-bar-wrapper">
					<div class="footer-copyright">Copyright © 2016 LSD Hosting. Sva prava zadržana.</div>
					<div class="footer-kontakt">Designed and coded by: LSD Hosting » www.LSD-HOSTING.info</div>
				</div>
			</div>
		</div>
	</div>
	<br />
	<br />
	<br />
</body>
</html>