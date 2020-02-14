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
	
	if($info['premium'] == "0") {
		$stanje = "Ne";
	}
	if($info['premium'] == "1") {
		$stanje = "Da";
	}
	
	if(isset($_POST['izmeni'])) {
		
		$nazivIgre 	= htmlspecialchars(mysqli_real_escape_string($con,$_POST['naziv']));
		$cenalite 	= htmlspecialchars(mysqli_real_escape_string($con,$_POST['cena_slot']));
		$premium 	= htmlspecialchars(mysqli_real_escape_string($con,$_POST['premium']));
		$cena_prem 	= htmlspecialchars(mysqli_real_escape_string($con,$_POST['cena_prem']));
		
		$izmeni = mysqli_query($con,"UPDATE igre SET `ime`='$nazivIgre',`cena_slot`='$cenalite',`premium`='$premium',`cena_prem`='$cena_prem' WHERE id='$info[id]'");
		
		if(!$izmeni) {
			$_SESSION['error'] = "Doslo je do greske!";
			header("Location:izmeniIgru.php?id=$info[id]");
			die();
		}
		else {
			$_SESSION['ok'] = "Uspesno ste izmenili igru!";
			header("Location:izmeniIgru.php?id=$info[id]");
			die();
		}			
		
	}
	
	
?>


	<br />

	<h3> <i class="glyphicon glyphicon-eye-open"></i> Izmeni igru
	</h3> 

	
	
	<div id="omot" style="font-size:12px;font-weight:none;">
	<div class="row">
	<div class="col-md-12">
	<div class="panel panel-default">
	<div class="panel-heading">
	<?php echo $info['ime']; ?>
	<span class="pull-right"><a class="btn btn-primary btn-small" href="igra.php?id=<?php echo $info['id']; ?>">INFO IGRE</a></span>


	</div>
	<div class="panel-body">
	
	
	<p>
			
		<form action="" method="POST">
			
			<label>Ime igre:</label>
			<input type="text" name="naziv" placeholder="Naziv igre" class="form-control" value="<?php echo $info['ime']; ?>" /> <br />
			
			<label>Cena slota (Lite):</label>
			<input type="text" name="cena_slot" placeholder="Cena slota" class="form-control" value="<?php echo $info['cena_slot']; ?>" /> <br />			

			<label>Omoguci premium servere?</label>
			<select class="form-control" type="text" name="premium">
				<option value="<?php echo $info['premium']; ?>">Trenutno stanje: <?php echo $stanje; ?></option>
				<?php if($info['premium'] == "0"){ ?>
				<option value="1">Da</option>
				<?php } ?>
				<?php if($info['premium'] == "1"){ ?>
				<option value="0">Ne</option>
				<?php } ?>				
			</select>
			<label>Cena slota (Premium):</label>
			<input type="text" name="cena_prem" placeholder="Cena slota" class="form-control" value="<?php echo $info['cena_prem']; ?>" /> <br />			
			
			<input type="submit" name="izmeni" value="Sacuvaj" class="btn btn-small btn-success" />
			
		</form>
			
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