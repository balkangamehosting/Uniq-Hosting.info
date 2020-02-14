<?php 

	include("header.php");  


	if ($_SESSION['adminid'] == "") {
		$_SESSION['error'] = "Morate se prijaviti!";
		header("Location:login.php");
		die();
	} else {
	
    if(!ctype_digit($_GET['id']) && $_GET['id'] != "") // proveravamo da li je $id broj
    {
      die("Mmmmm :)"); // ukoliko $id nije broj skripta ce se prekinuti
    }
    $id = htmlspecialchars($_GET['id'], ENT_QUOTES); // uzimamo id od novosti 
	
	
	$info = mysqli_fetch_array(mysqli_query($con,"SELECT * FROM `narudzbine` WHERE id='$id'"));
	
	if(!$info OR $info == "") {
		$_SESSION['error'] = "Narudzbina ne postoji!";
		header("Location:narudzbine.php");
		die();
	} else {	

	$igra = $info['igra'];
	switch($igra) {
		case $igra == "cs":
		$nazivIgre = "Counter Strike 1.6";
		break;
		case $igra == "samp":
		$nazivIgre = "SanAndreas MultiPlayer";
		break;
		case $igra == "csgo":
		$nazivIgre = "Counter Strike Global Offensive";
		break;
		case $igra == "css":
		$nazivIgre = "Counter Strike Source";
		break;
		case $igra == "mc":
		$nazivIgre = "Minecraft";
		break;
		case $igra == "cod2":
		$nazivIgre = "Call of Duty 2";
		break;
		case $igra == "cod4":
		$nazivIgre = "Call of Duty 4";
		break;
		case $igra == "ts3":
		$nazivIgre = "TeamSpeak 3";
		break;
		
		
	}
?>


	<br />

	<h3> <i class="glyphicon glyphicon-eye-open"></i> Pregled narudzbine 
	<span class="pull-right"><a class="btn btn-primary btn-small" href="narudzbine.php">NAZAD NA LISTU narudzbina</a></span>
	</h3> 

	
	
	<div id="omot" style="font-size:12px;font-weight:none;">
	<div class="row">
	<div class="col-md-12">
	<div class="panel panel-default">
	<div class="panel-heading">
	<?php echo $nazivIgre; ?> <small>(<?php echo $info['lokacija']; ?> slotova)</small>
	<div class="pull-right">
		<i class="glyphicon glyphicon-calendar"></i> <?php echo $info['datum']; ?>
	</div>
	</div>
	<div class="panel-body">
	<p>
	
	<b>Osnovne informacije: </b> <br />
	Ime i prezime: <b><?php echo $info['ime']; ?></b> <br />
	Email adresa: <b><?php echo $info['email']; ?></b> <br />
	Datum narucivanja: <b><?php echo $info['datum']; ?></b> <br />
	IP Adresa porucioca: <b><?php echo $info['ip']; ?></b> <br />
	<br /> <br />
	<b>Informacije o serveru: </b> <br />
	Igra: <b><?php echo $nazivIgre; ?></b> <br />
	Lokacija: <b><?php echo $info['lokacija']; ?></b> <br />
	Broj slotova: <b><?php echo $info['slotovi']; ?></b> <br />
	<br /> <br />
	<b>Informacije o placanju: </b> <br />
	Nacin placanja: <b><?php echo $info['nacinplacanja']; ?></b> <br />
	Cena za uplatu: <b><?php echo $info['cena']; ?> dinara</b> <br />
	Uplata na: <b><?php echo $info['unapred']; ?> meseci!</b> <br />
	<br /> <br />
	
	</p>
	</div>
	</div>	
	

	</div> 
	</div>
	</div>

	



<?php 



	include("footer.php"); 
	}} // SESSIJA
	?>