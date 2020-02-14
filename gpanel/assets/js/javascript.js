window.ondragstart = function() { return false; }

function izracunaj(broj) {
	var slotovi = broj;
	var stranica = window.location.pathname;

	if(stranica == "/gpanel/cs-server.php") {
		if(slotovi == 12) {
			konacnacijena = "8";
			konacnacijenarsd = "516";
			konacnacijenaeu = "4.18";
		} else if(slotovi == 14) {
			konacnacijena = "10";
			konacnacijenarsd = "602";
			konacnacijenaeu = "4.87";
		} else if(slotovi == 16) {
			konacnacijena = "10.88";
			konacnacijenarsd = "688";
			konacnacijenaeu = "5.57";
		} else if(slotovi == 18) {
			konacnacijena = "12.24";
			konacnacijenarsd = "774";
			konacnacijenaeu = "6.27";
		} else if(slotovi == 20) {
			konacnacijena = "13.60";
			konacnacijenarsd = "860";
			konacnacijenaeu = "6.96";
		} else if(slotovi == 22) {
			konacnacijena = "14.96";
			konacnacijenarsd = "946";
			konacnacijenaeu = "7.66";
		} else if(slotovi == 24) {
			konacnacijena = "16.32";
			konacnacijenarsd = "1032";
			konacnacijenaeu = "8.36";
		} else if(slotovi == 26) {
			konacnacijena = "17.68";
			konacnacijenarsd = "1118";
			konacnacijenaeu = "9.05";
		} else if(slotovi == 28) {
			konacnacijena = "19.04";
			konacnacijenarsd = "1204";
			konacnacijenaeu = "9.75";
		} else if(slotovi == 30) {
			konacnacijena = "20.40";
			konacnacijenarsd = "1290";
			konacnacijenaeu = "10.44";
		} else if(slotovi == 32) {
			konacnacijena = "22.14";
			konacnacijenarsd = "1400";
			konacnacijenaeu = "11.34";
		} else {
			konacnacijena = "Nepoznato";
			konacnacijenarsd = "Nepoznato";
			konacnacijenaeu = "Nepoznato";
		}
	} else if(stranica == "/gpanel/samp-server.php") {
		if(slotovi == 30) {
			konacnacijena = "3.32";
			konacnacijenarsd = "210";
			konacnacijenaeu = "1.70";
		} else if(slotovi == 50) {
			konacnacijena = "5.54";
			konacnacijenarsd = "350";
			konacnacijenaeu = "2.84";
		} else if(slotovi == 70) {
			konacnacijena = "7.75";
			konacnacijenarsd = "490";
			konacnacijenaeu = "3.97";
		} else if(slotovi == 100) {
			konacnacijena = "11.";
			konacnacijenarsd = "700";
			konacnacijenaeu = "5.67";
		} else if(slotovi == 150) {
			konacnacijena = "16.62";
			konacnacijenarsd = "1050";
			konacnacijenaeu = "8.51";
		} else if(slotovi == 200) {
			konacnacijena = "22.16";
			konacnacijenarsd = "1400";
			konacnacijenaeu = "11.34";
		} else if(slotovi == 250) {
			konacnacijena = "27.70";
			konacnacijenarsd = "1750";
			konacnacijenaeu = "14.18";
		} else if(slotovi == 300) {
			konacnacijena = "31.65";
			konacnacijenarsd = "2000";
			konacnacijenaeu = "16.20";
		} else {
			konacnacijena = "Nepoznato";
			konacnacijenarsd = "Nepoznato";
			konacnacijenaeu = "Nepoznato";
		}
	} else if(stranica == "/gpanel/ts-server.php") {
		if(slotovi == 20) {
			konacnacijena = "4";
			konacnacijenarsd = "200";
			konacnacijenaeu = "2";
		} else if(slotovi == 30) {
			konacnacijena = "5";
			konacnacijenarsd = "250";
			konacnacijenaeu = "2.5";
		} else if(slotovi == 40) {
			konacnacijena = "6";
			konacnacijenarsd = "300";
			konacnacijenaeu = "3";
		} else if(slotovi == 50) {
			konacnacijena = "7";
			konacnacijenarsd = "350";
			konacnacijenaeu = "3.5";
		} else if(slotovi == 60) {
			konacnacijena = "8";
			konacnacijenarsd = "400";
			konacnacijenaeu = "4";
		} else if(slotovi == 70) {
			konacnacijena = "9";
			konacnacijenarsd = "450";
			konacnacijenaeu = "4.5";
		} else if(slotovi == 80) {
			konacnacijena = "10";
			konacnacijenarsd = "500";
			konacnacijenaeu = "5";
		} else if(slotovi == 90) {
			konacnacijena = "11";
			konacnacijenarsd = "550";
			konacnacijenaeu = "5.5";
		} else if(slotovi == 100) {
			konacnacijena = "12";
			konacnacijenarsd = "600";
			konacnacijenaeu = "6";
		} else if(slotovi == 110) {
			konacnacijena = "13";
			konacnacijenarsd = "650";
			konacnacijenaeu = "6.5";
		} else if(slotovi == 120) {
			konacnacijena = "14";
			konacnacijenarsd = "700";
			konacnacijenaeu = "7";
		} else if(slotovi == 130) {
			konacnacijena = "15";
			konacnacijenarsd = "750";
			konacnacijenaeu = "7.5";
		} else if(slotovi == 140) {
			konacnacijena = "16";
			konacnacijenarsd = "800";
			konacnacijenaeu = "8";
		} else if(slotovi == 150) {
			konacnacijena = "17";
			konacnacijenarsd = "850";
			konacnacijenaeu = "8.5";
		} else {
			konacnacijena = "Nepoznato";
			konacnacijenarsd = "Nepoznato";
			konacnacijenaeu = "Nepoznato";
		}
	} else if(stranica == "/gpanel/web-hosting.php") {
		if(slotovi == 1) {
			konacnacijena = "3.6";
			konacnacijenarsd = "180";
			konacnacijenaeu = "1.8";
		} else if(slotovi == 2) {
			konacnacijena = "4.6";
			konacnacijenarsd = "230";
			konacnacijenaeu = "2.3";
		} else if(slotovi == 3) {
			konacnacijena = "5.6";
			konacnacijenarsd = "280";
			konacnacijenaeu = "2.8";
		} else if(slotovi == 4) {
			konacnacijena = "6.6";
			konacnacijenarsd = "330";
			konacnacijenaeu = "3.3";
		} else if(slotovi == 5) {
			konacnacijena = "9";
			konacnacijenarsd = "450";
			konacnacijenaeu = "4.5";
		} else {
			konacnacijena = "Nepoznato";
			konacnacijenarsd = "Nepoznato";
			konacnacijenaeu = "Nepoznato";
		}
	} else {
		konacnacijena = "Nepoznato";
		konacnacijenarsd = "Nepoznato";
		konacnacijenaeu = "Nepoznato";
	}
	document.getElementById('kcijena').value = '' + konacnacijena +  ' KM / ' + konacnacijenarsd +  ' RSD / ' + konacnacijenaeu +' €';
}
function vigre() {
	var stranica = window.location.pathname;
	if(stranica == "/gpanel/cs-server.php") {
		if(document.narudzbina.igra.value == "Counter Strike 1.6") {
			return false;
		} else if(document.narudzbina.igra.value == "San Andreas Multiplayer") {
			document.location.href = 'samp-server.php';
		} else if(document.narudzbina.igra.value == "Teamspeak 3") {
			document.location.href = 'ts-server.php';
		} else {
			return false;
		}
	} else if(stranica == "/gpanel/samp-server.php") {
		if(document.narudzbina.igra.value == "Counter Strike 1.6") {
			document.location.href = 'cs-server.php';
		} else if(document.narudzbina.igra.value == "San Andreas Multiplayer") {
			return false;
		} else if(document.narudzbina.igra.value == "Teamspeak 3") {
			document.location.href = 'ts-server.php';
		} else {
			return false;
		}
	} else if(stranica == "/gpanel/ts-server.php") {
		if(document.narudzbina.igra.value == "Counter Strike 1.6") {
			document.location.href = 'cs-server.php';
		} else if(document.narudzbina.igra.value == "San Andreas Multiplayer") {
			document.location.href = 'samp-server.php';
		} else if(document.narudzbina.igra.value == "Teamspeak 3") {
			return false;
		} else {
			return false;
		}
	} else {
		return false;
	}
	
}