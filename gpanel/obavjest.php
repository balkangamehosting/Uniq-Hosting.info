<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<!-- Meta -->
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="distribution" content="global" /> 
	<meta name="robots" content="index, follow" /> 
	<meta name="og:site_name" property="og:site_name" content="galaxy Hosting » Game Hosting" /> 
	<meta name="fb:admins" property="fb:admins" content="rloveution" />
	<meta name="og:type" property="og:type" content="website" />
	<meta property="og:description" content="Galaxy Hosting » Game Hosting" />
	<meta property='og:image' content='assets/images/ogimage-souhosting.png'/>
	<title>Obavještenja :: Galaxy Hosting</title>

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
			<span class="novosti-gplink"><a href="/gpanel">Game Panel</a></span>
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
					<li><a href="index.php">GLAVNA</a></li>
					<li><a href="/forum">FORUM</a></li>
					<li><a href="/gpanel">GAME PANEL</a></li>
					<li><a href="naruci.php">GAME HOSTING</a></li>
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
							<center><br /><br /><h1 class="zakupi-hone" style="color:#75A2BF;">OBAVJEŠTENJE</h1><br /></center>
							<p class="obavjests" style="text-align:center;"><?php echo $obavjestenje; ?></p>
							<p class="obavjests" style="text-align:center;"><?php echo $obavjestenja1; ?></p>
							<p class="obavjests" style="text-align:center;"><?php echo $obavjestenja2; ?></p>
							<br />
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
					<div class="footer-copyright">Copyright © 2017 Galaxy Hosting. Sva prava zadržana.</div>
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