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
	
	
	$info = mysqli_fetch_array(mysqli_query($con,"SELECT * FROM `igre` WHERE id='$id'"));
	
	if(!$info OR $info == "") {
		$_SESSION['error'] = "Igra ne postoji!";
		header("Location:igre.php");
		die();
	} else {	


?>


	<br />

	<h3> <i class="glyphicon glyphicon-eye-open"></i> Pregled igre 
	<span class="pull-right"><a class="btn btn-primary btn-small" href="igre.php">NAZAD NA LISTU IGARA</a></span>
	</h3> 

	
	
	<div id="omot" style="font-size:12px;font-weight:none;">
	<div class="row">
	<div class="col-md-12">
	<div class="panel panel-default">
	<div class="panel-heading">
	<?php echo $info['ime']; ?>
	<div class="pull-right">
		<a class="btn btn-small btn-primary" href="izmeniIgru.php?id=<?php echo $info['id']; ?>"><i class="glyphicon glyphicon-cog"></i> IZMENI</a>
		<a class="btn btn-small btn-danger" href="obrisiIgru.php?id=<?php echo $info['id']; ?>"><i class="glyphicon glyphicon-trash"></i> OBRISI</a>
		<a class="btn btn-small btn-success" href="dodajSlotove.php?id=<?php echo $info['id']; ?>"><i class="glyphicon glyphicon-plus"></i> DODAJ SLOTOVE</a>
		
	</div>

	</div>
	<div class="panel-body">
	<h4>Informacije</h4>
	<div class="pull-right">
		<img src="../assets/img/igre/<?php echo $info['igra']; ?>.png" />
	</div>
	<p>
	Naziv igre: <b><img src="../assets/img/igre/ikonice/<?php echo $info['igra']; ?>.png" style="width:15px;" /> <?php echo $info['ime']; ?></b> <br />
	Lokacija (lite): <b><?php echo $info['lokacija']; ?></b> <br />
	Cena slota (lite): <b><?php echo $info['cena_slot']; ?> dinara</b> <br />
	<?php if($info['premium'] == "1"){ ?>
	Lokacija (premium): <b><?php echo $info['lokacija_premium']; ?></b> <br />
	Cena slota (premium): <b><?php echo $info['cena_prem']; ?> dinara</b> <br />
	<?php }; ?>
	Ping: <b><?php echo $info['ping_od']."-".$info['ping_do']; ?>ms/s</b> <br />
	<br /> <br />
	<h4>Slotovi (Lite)</h4>
	<br />
	<?php 
		
		$sql = "SELECT * FROM slotovi WHERE igra='$info[id]' AND lite=1 ORDER by slotovi ASC";
		$kveri = mysqli_query($con,$sql);
		while($lite = mysqli_fetch_array($kveri)) {
			
			$cenaLite = $info['cena_slot']*$lite['slotovi'];
			
	?>
		
		<?php echo  $lite['slotovi']; ?> slotova -> <?php echo $cenaLite; ?> dinara <br />
		
	<?php } ?>
	<?php if($info['premium'] == "1"){ ?>
	<br /> 
	<h4>Slotovi (Premium)</h4>
	<br />
	<?php 
		
		$sql = "SELECT * FROM slotovi WHERE igra='$info[id]' AND premium=1 ORDER by slotovi ASC";
		$kveri = mysqli_query($con,$sql);
		while($prem = mysqli_fetch_array($kveri)) {
			
			$cenaPremium = $info['cena_prem']*$prem['slotovi'];
			
	?>
		
		<?php echo  $prem['slotovi']; ?> slotova -> <?php echo $cenaPremium; ?> dinara <br />
		
	<?php }} ?>	
	
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