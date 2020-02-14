<?php
if(isset($_POST['narucics'])) {
$vrijeme = date("d/m/y", time());
$hosting = "info@lsd-hosting.info";
$uspijesno = "
					<br />
					<br />
					<div id=\"container\">
						<div id=\"containers-wrapper\">
							<p>Uspješno! Dobili ste informacije na vaš E-mail.  (Ako vam mejl nije stigao proverite stranice Sva posta,Nepozeljne ili Kategorije.)</p>
						</div>
					</div>
";
$neuspijesno = "
					<br />
					<br />
					<div id=\"container\">
						<div id=\"containers-wrapper\">
							<p>Dogodila se greška prilikom slanja E-maila...</p>
						</div>
					</div>
";
$valinfo = "
					<br />
					<br />
					<div id=\"container\">
						<div id=\"containers-wrapper\">
							<p>Unesite validne informacije..</p>
						</div>
					</div>
";
$valprovjera = "
					<br />
					<br />
					<div id=\"container\">
						<div id=\"containers-wrapper\">
							<p>Sigurnosni kod za provjeru nije tačan..</p>
						</div>
					</div>
";
$valemail = "
					<br />
					<br />
					<div id=\"container\">
						<div id=\"containers-wrapper\">
							<p>E-mail nije validan..</p>
						</div>
					</div>
";

$drzava = $_POST['drzava'];
$lokacija = $_POST['lokacija'];
$igra = $_POST['igra'];
$slotovi = $_POST['slotovi'];
$ime = $_POST['ime'];
$prezime = $_POST['prezime'];
$email = $_POST['email'];
$provjera = $_POST['provjera'];
$cijena = $_POST['cijena'];

$subjekt = 'Info :: LSD Hosting';
$poruka = "
Zdravo $ime $prezime,

Uspješno ste naručili server te popunili polja sa sl. podacima:
Ime i prezime: $ime $prezime
Email: $email
Država: $drzava
Tip: $lokacija
Usluga: $igra
Slotovi: $slotovi

Da bi dobili vaš server morate uplatiti vaš server u najbližoj pošti po cijeni $cijena na sledecoj uplatnici:
Bosna: http://lsd-hosting.info/uplatnice/bosna.jpg
Srbija: http://lsd-hosting.info/uplatnice/srbija.jpg

Server je moguće uplatiti samo iz Bosne i Hercegovine & Srbije do daljnjeg..
Kada uplatite vaš server u pošti pošaljite formular za uplatu na mail lsdhosting@gmail.com te će vam naš tim odobriti vašu uplatu i podici vam server...

FORMULAR ZA UPLATU:


IME PREZIME: ~~
EMAIL: ~~
DRŽAVA: ~~
DATUM UPLATE: ~~
SLIKA UPLATNICE: ~~
USLUGA: ~~
NAZIV SERVERA: ~~
SLOTOVI: ~~
MOD SERVERA: ~~

Vaš LSD Hosting,
www.LSD-HOSTING.info
";
$msg = "
$ime $prezime je naručio server sa sl. podacima:
Ime i prezime: $ime $prezime
Email: $email
Država: $drzava
Lokacija servera: $lokacija
Usluga: $igra
Slotovi: $slotovi

Datum: $vrijeme

Script by rloveution <-
";
$headers = "MIME-Version: 1.0" . "\r\n";
$headers .= "From: $hosting" . "\r\n";

if($drzava == "" || $lokacija == "" || $igra == "" || $slotovi == "" || $ime == "" || $prezime == "" || $email == "" || $provjera == "" || $cijena == "") {
	echo $valinfo;
} else {
	if(!filter_var($email, FILTER_VALIDATE_EMAIL)) {
		echo $valemail;
	} else {
		if($provjera != "13") {
			echo $valprovjera;
		} else {
			if(mail($email,$subjekt,$poruka,$headers)) {
				echo $uspijesno;
				mail("lsdhosting@gmail.com","$ime $prezime je poručio server",$msg,$headers);
			} else {
				echo $neuspijesno;
			}
		}
	}
}
}
if(isset($_POST['narucisamp'])) {
$vrijeme = date("d/m/y", time());
$hosting = "lsdhosting@gmail.com";
$uspijesno = "
					<br />
					<br />
					<div id=\"container\">
						<div id=\"containers-wrapper\">
							<p>Uspješno! Dobili ste informacije na vaš E-mail..</p>
						</div>
					</div>
";
$neuspijesno = "
					<br />
					<br />
					<div id=\"container\">
						<div id=\"containers-wrapper\">
							<p>Dogodila se greška prilikom slanja E-maila...</p>
						</div>
					</div>
";
$valinfo = "
					<br />
					<br />
					<div id=\"container\">
						<div id=\"containers-wrapper\">
							<p>Unesite validne informacije..</p>
						</div>
					</div>
";
$valprovjera = "
					<br />
					<br />
					<div id=\"container\">
						<div id=\"containers-wrapper\">
							<p>Sigurnosni kod za provjeru nije tačan..</p>
						</div>
					</div>
";
$valemail = "
					<br />
					<br />
					<div id=\"container\">
						<div id=\"containers-wrapper\">
							<p>E-mail nije validan..</p>
						</div>
					</div>
";

$drzava = $_POST['drzava'];
$lokacija = $_POST['lokacija'];
$igra = $_POST['igra'];
$slotovi = $_POST['slotovi'];
$ime = $_POST['ime'];
$prezime = $_POST['prezime'];
$email = $_POST['email'];
$provjera = $_POST['provjera'];
$cijena = $_POST['cijena'];

$subjekt = 'Info :: LSD Hosting';
$poruka = "
Zdravo $ime $prezime,

Uspješno ste naručili server te popunili polja sa sl. podacima:
Ime i prezime: $ime $prezime
Email: $email
Država: $drzava
Tip: $lokacija
Usluga: $igra
Slotovi: $slotovi

Da bi dobili vaš server morate uplatiti vaš server u najbližoj pošti po cijeni $cijena na sl. uplatnici:
Bosna: http://lsd-hosting.info/uplatnice/bosna.jpg
Srbija: http://lsd-hosting.info/uplatnice/srbija.jpg

Server je moguće uplatiti samo iz Bosne i Hercegovine & Srbije do daljnjeg..
Kada uplatite vaš server u pošti pošaljite formular za uplatu na mail lsdhosting@gmail.com te će vam naš tim odobriti vašu uplatu...

NAPOMENA: Podrška za SAMP Servere nije dužna da ubacuje modove na vaš server te pomaže u skriptanju ukoliko vaš server nema 100+ slotova...

FORMULAR ZA UPLATU:


IME PREZIME: ~~
EMAIL: ~~
DRŽAVA: ~~
DATUM UPLATE: ~~
SLIKA UPLATNICE: ~~
USLUGA: ~~
NAZIV SERVERA: ~~
SLOTOVI: ~~
VERZIJA: ~~ (default = 0.3z)
DODATNE INFORMACIJE: ~~


Vaš LSD Hosting,
www.lsd-hosting.info
";
$msg = "
$ime $prezime je naručio server sa sl. podacima:
Ime i prezime: $ime $prezime
Email: $email
Država: $drzava
Lokacija servera: $lokacija
Usluga: $igra
Slotovi: $slotovi

Datum: $vrijeme

Script by rloveution <-
";
$headers = "MIME-Version: 1.0" . "\r\n";
$headers .= "From: $hosting" . "\r\n";

if($drzava == "" || $lokacija == "" || $igra == "" || $slotovi == "" || $ime == "" || $prezime == "" || $email == "" || $provjera == "" || $cijena == "") {
	echo $valinfo;
} else {
	if(!filter_var($email, FILTER_VALIDATE_EMAIL)) {
		echo $valemail;
	} else {
		if($provjera != "17") {
			echo $valprovjera;
		} else {
			if(mail($email,$subjekt,$poruka,$headers)) {
				echo $uspijesno;
				mail("lsdhosting@gmail.com","$ime $prezime je poručio server",$msg,$headers);
			} else {
				echo $neuspijesno;
			}
		}
	}
}
}
if(isset($_POST['narucits'])) {
$vrijeme = date("d/m/y", time());
$hosting = "lsdhosting@gmail.com";
$uspijesno = "
					<br />
					<br />
					<div id=\"container\">
						<div id=\"containers-wrapper\">
							<p>Uspješno! Dobili ste informacije na vaš E-mail..</p>
						</div>
					</div>
";
$neuspijesno = "
					<br />
					<br />
					<div id=\"container\">
						<div id=\"containers-wrapper\">
							<p>Dogodila se greška prilikom slanja E-maila...</p>
						</div>
					</div>
";
$valinfo = "
					<br />
					<br />
					<div id=\"container\">
						<div id=\"containers-wrapper\">
							<p>Unesite validne informacije..</p>
						</div>
					</div>
";
$valprovjera = "
					<br />
					<br />
					<div id=\"container\">
						<div id=\"containers-wrapper\">
							<p>Sigurnosni kod za provjeru nije tačan..</p>
						</div>
					</div>
";
$valemail = "
					<br />
					<br />
					<div id=\"container\">
						<div id=\"containers-wrapper\">
							<p>E-mail nije validan..</p>
						</div>
					</div>
";

$drzava = $_POST['drzava'];
$lokacija = $_POST['lokacija'];
$igra = $_POST['igra'];
$slotovi = $_POST['slotovi'];
$ime = $_POST['ime'];
$prezime = $_POST['prezime'];
$email = $_POST['email'];
$provjera = $_POST['provjera'];
$cijena = $_POST['cijena'];

$subjekt = 'Info :: LSD Hosting';
$poruka = "
Zdravo $ime $prezime,

Uspješno ste naručili server te popunili polja sa sl. podacima:
Ime i prezime: $ime $prezime
Email: $email
Država: $drzava
Tip: $lokacija
Usluga: $igra
Slotovi: $slotovi

Da bi dobili vaš server morate uplatiti vaš server u najbližoj pošti po cijeni $cijena na sl. uplatnici:
Bosna: http://lsd-hosting.info/uplatnice/bosna.jpg
Srbija: http://lsd-hosting.info/uplatnice/srbija.jpg

Server je moguće uplatiti samo iz Bosne i Hercegovine & Srbije do daljnjeg..
Kada uplatite vaš server u pošti pošaljite formular za uplatu na mail lsdhosting@gmail.com te će vam naš tim odobriti vašu uplatu...

NAPOMENA: Uz vaš Teamspeak3 server će te dobiti query token, te podršku LSD Hosting-a..

FORMULAR ZA UPLATU:


IME PREZIME: ~~
EMAIL: ~~
DRŽAVA: ~~
DATUM UPLATE: ~~
SLIKA UPLATNICE: ~~
USLUGA: ~~
NAZIV SERVERA: ~~
SLOTOVI: ~~
DODATNE INFORMACIJE: ~~


Vaš LSD Hosting,
www.lsd-hosting.info
";
$msg = "
$ime $prezime je naručio server sa sl. podacima:
Ime i prezime: $ime $prezime
Email: $email
Država: $drzava
Lokacija servera: $lokacija
Usluga: $igra
Slotovi: $slotovi

Datum: $vrijeme

Script by rloveution <-
";
$headers = "MIME-Version: 1.0" . "\r\n";
$headers .= "From: $hosting" . "\r\n";

if($drzava == "" || $lokacija == "" || $igra == "" || $slotovi == "" || $ime == "" || $prezime == "" || $email == "" || $provjera == "" || $cijena == "") {
	echo $valinfo;
} else {
	if(!filter_var($email, FILTER_VALIDATE_EMAIL)) {
		echo $valemail;
	} else {
		if($provjera != "9") {
			echo $valprovjera;
		} else {
			if(mail($email,$subjekt,$poruka,$headers)) {
				echo $uspijesno;
				mail("lsdhosting@gmail.com","$ime $prezime je poručio server",$msg,$headers);
			} else {
				echo $neuspijesno;
			}
		}
	}
}
}
if(isset($_POST['naruciwh'])) {
$vrijeme = date("d/m/y", time());
$hosting = "info@lsd-hosting.info";
$uspijesno = "
					<br />
					<br />
					<div id=\"container\">
						<div id=\"containers-wrapper\">
							<p>Uspješno! Dobili ste informacije na vaš E-mail..</p>
						</div>
					</div>
";
$neuspijesno = "
					<br />
					<br />
					<div id=\"container\">
						<div id=\"containers-wrapper\">
							<p>Dogodila se greška prilikom slanja E-maila...</p>
						</div>
					</div>
";
$valinfo = "
					<br />
					<br />
					<div id=\"container\">
						<div id=\"containers-wrapper\">
							<p>Unesite validne informacije..</p>
						</div>
					</div>
";
$valprovjera = "
					<br />
					<br />
					<div id=\"container\">
						<div id=\"containers-wrapper\">
							<p>Sigurnosni kod za provjeru nije tačan..</p>
						</div>
					</div>
";
$valemail = "
					<br />
					<br />
					<div id=\"container\">
						<div id=\"containers-wrapper\">
							<p>E-mail nije validan..</p>
						</div>
					</div>
";

$drzava = $_POST['drzava'];
$lokacija = $_POST['lokacija'];
$paket = $_POST['paket'];
$dns = $_POST['dns'];
$ime = $_POST['ime'];
$prezime = $_POST['prezime'];
$email = $_POST['email'];
$provjera = $_POST['provjera'];
$cijena = $_POST['cijena'];

if($paket = 1) {
	$paket = "WEB Host paket #1";
} else if($paket = 2) {
	$paket = "WEB Host paket #2";
} else if($paket = 3) {
	$paket = "WEB Host paket #3";
} else if($paket = 4) {
	$paket = "WEB Host paket #4";
} else if($paket = 5) {
	$paket = "WEB Host paket #5";
} else {
	$paket = "WEB Host paket";
}
if($dns = 1) {
	$dns = "LSD HOSTING DNS";
} else {
	$dns = "Sopstveni DNS";
}

$subjekt = 'Info :: LSD Hosting';
$poruka = "
Zdravo $ime $prezime,

Uspješno ste naručili server te popunili polja sa sl. podacima:
Ime i prezime: $ime $prezime
Email: $email
Država: $drzava
Tip: $lokacija
Usluga: $paket
DNS: $dns

Da bi dobili vaš server morate uplatiti vaš server u najbližoj pošti po cijeni $cijena na sl. uplatnici:
Bosna: http://lsd-hosting.info/uplatnice/bosna.jpg
Srbija: http://lsd-hosting.info/uplatnice/bosna.jpg
Server je moguće uplatiti samo iz Bosne i Hercegovine za web hosting do daljnjeg..
Kada uplatite vaš server u pošti pošaljite formular za uplatu na mail lsdhosting@gmail.com te će vam naš tim odobriti vašu uplatu...

NAPOMENA: Formular za uplatu šaljite na e-mail lsdhosting@gmail.com , gde ce vam nas tim odobriti uplatu i podici zeljeni prizvod.

FORMULAR ZA UPLATU:


IME PREZIME: ~~
EMAIL: ~~
DRŽAVA: ~~
DATUM UPLATE: ~~
SLIKA UPLATNICE: ~~
PAKET: ~~
DOMENA: ~~
DODATNE INFORMACIJE: ~~


Vaš LSD Hosting,
www.LSD-HOSTING.info
";
$msg = "
$ime $prezime je naručio web hosting sa sl. podacima:
Ime i prezime: $ime $prezime
Email: $email
Država: $drzava
Lokacija servera: $lokacija
Paket: $paket
DNS: $dns

Datum: $vrijeme

Script by rloveution <-
";
$headers = "MIME-Version: 1.0" . "\r\n";
$headers .= "From: $hosting" . "\r\n";

if($drzava == "" || $lokacija == "" || $paket == "" || $dns == "" || $ime == "" || $prezime == "" || $email == "" || $provjera == "" || $cijena == "") {
	echo $valinfo;
} else {
	if(!filter_var($email, FILTER_VALIDATE_EMAIL)) {
		echo $valemail;
	} else {
		if($provjera != "9") {
			echo $valprovjera;
		} else {
			if(mail($email,$subjekt,$poruka,$headers)) {
				echo $uspijesno;
				mail("lsdhosting@gmail.com","$ime $prezime je poručio web uslugu",$msg,$headers);
			} else {
				echo $neuspijesno;
			}
		}
	}
}
}
if(isset($_POST['kontakts'])) {
$hosting = "lsdhosting@gmail.com";
$aemail = "lsdhosting@gmail.com";
$uspijesno = "
					<br />
					<br />
					<div id=\"container\">
						<div id=\"containers-wrapper\">
							<p>Uspješno! Dobit ćete odgovor u roku od 24 sata. (Ako vam nije stigao povratni mejl proverite stranice Sva posta,Nepozeljne ili Kategorije.) </p>
						</div>
					</div>
";
$neuspijesno = "
					<br />
					<br />
					<div id=\"container\">
						<div id=\"containers-wrapper\">
							<p>Dogodila se greška prilikom slanja E-maila...</p>
						</div>
					</div>
";
$valinfo = "
					<br />
					<br />
					<div id=\"container\">
						<div id=\"containers-wrapper\">
							<p>Unesite validne informacije..</p>
						</div>
					</div>
";
$valprovjera = "
					<br />
					<br />
					<div id=\"container\">
						<div id=\"containers-wrapper\">
							<p>Sigurnosni kod za provjeru nije tačan..</p>
						</div>
					</div>
";
$valemail = "
					<br />
					<br />
					<div id=\"container\">
						<div id=\"containers-wrapper\">
							<p>E-mail nije validan..</p>
						</div>
					</div>
";

$ime = $_POST['ime'];
$prezime = $_POST['prezime'];
$email = $_POST['email'];
$provjera = $_POST['provjera'];
$poruka = $_POST['kporuka'];

$porukak = "
Ime: $ime
Prezime: $prezime
E-mail: $email
Poruka:
$poruka
";
$msg = "
Zdravo $ime $prezime,

Uspješno ste kontaktirali LSD Hosting administraciju te će te vaš odgovor dobiti u najkraćem mogućem roku..

Vaš LSD Hosting,
www.LSD-HOSTING.info
";
$subjekt = 'Kontakt forma :: LSD Hosting';
$headers = "MIME-Version: 1.0" . "\r\n";
$headers .= "From: $email" . "\r\n";
$headersu = "MIME-Version: 1.0" . "\r\n";
$headersu .= "From: $aemail" . "\r\n";

if($ime == "" || $prezime == "" || $email == "" || $provjera == "" || $poruka == "") {
	echo $valinfo;
} else {
	if(!filter_var($email, FILTER_VALIDATE_EMAIL)) {
		echo $valemail;
	} else {
		if($provjera != "14") {
			echo $valprovjera;
		} else {
			if(mail($hosting,$subjekt,$porukak,$headers)) {
				echo $uspijesno;
				mail($email,$subjekt,$msg,$headersu);
			} else {
				echo $neuspijesno;
			}
		}
	}
}
}
?>