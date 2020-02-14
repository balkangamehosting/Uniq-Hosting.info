<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<!-- Meta -->
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="distribution" content="global" /> 
	<meta name="robots" content="index, follow" /> 
	<meta name="og:site_name" property="og:site_name" content="LSD Hosting » Game Hosting" /> 
	<meta name="fb:admins" property="fb:admins" content="rloveution" />
	<meta name="og:type" property="og:type" content="website" />
	<meta property="og:description" content="LSD Hosting » Game Hosting" />
	<meta property='og:image' content='assets/images/ogimage-souhosting.png'/>
	<title>Kontakt » LSD Hosting</title>

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

	<!-- LSD Hosting - Bar -->
	<div id="bar-bg">
		<div id="bar-wrapper">
			<img src="assets/images/arrow.png" class="novosti-arrow" alt="" />
			<span class="novosti-text">Dobrodosli na nas sajt. Zelimo vam srecnu Novu Godinu, i Novogodosinje praznike!.<//?php echo $obavjest; ?></span>
			<span class="novosti-gplink"><a href="https://www.facebook.com/LSDHOSTING/">Facebook</a></span>
		</div>
	</div>

	<!-- LSD Hosting - Wrapper -->
	<div id="wrapper">
		<!-- LSD Hosting - Logo -->
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






			<!-- LSD Hosting - Main -->
			<div id="main">
				<div id="main-wrapper">
					<div id="container">
						<div id="container-wrapper">
							<p class="obavjests">Ovde nas mozete kontaktirati<//?php echo $obavjestenje; ?></p>
						</div>
					</div><?php require('forme.php'); ?>

					<br />
					<br />
					<div id="container">
						<div id="container-wrapper">
							<h1 class="zakupi-hone" style="padding:20px 0 20px 20px;color:#75A2BF;border-bottom:1px dotted #1a3644;">KONTAKTIRAJ NAS</h1>
							<form action="" method="post" name="narudzbina" id="zakupi-forma">
								<input type="text" name="ime" class="input" style="display:inline-block;" placeholder="IME" />
								<input type="text" name="prezime" class="pzinput" style="display:inline-block;" placeholder="PREZIME" />
								<input type="text" name="email" class="eminput" style="display:inline-block;" placeholder="E-MAIL" />
								<input type="text" name="provjera" class="prinput" style="display:inline-block;" placeholder="2+12" />
								<textarea name="kporuka" class="textarea" placeholder="Upišite vašu poruku ovdje..."></textarea>
								<input type="submit" value="POŠALJI" name="kontakts" class="kontakt-button" />
							</form>
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