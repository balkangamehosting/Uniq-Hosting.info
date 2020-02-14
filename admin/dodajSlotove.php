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
	
	if(isset($_POST['dodajSlot'])) {
		
		$brojSlotova 	= htmlspecialchars(mysqli_real_escape_string($con,$_POST['slotova']));
		$slotLokacija 	= htmlspecialchars(mysqli_real_escape_string($con,$_POST['slotLokacija']));
		if($slotLokacija == "lite"){
			$lite = "1";
			$premium = "0";
		}
		else 
		if($slotLokacija == "premium"){
			$lite = "0";
			$premium = "1";
		}
		$dodaj = mysqli_query($con,"INSERT into slotovi (`igra`,`slotovi`,`lite`,`premium`) VALUES ('$info[id]','$brojSlotova','$lite','$premium')");
		
		if(!$dodaj) {
			$_SESSION['error'] = "Doslo je do greske!";
			header("Location:dodajSlotove.php?id=$info[id]");
			die();
		}
		else {
			$_SESSION['ok'] = "Uspesno ste dodali slotove za ovu igru!!";
			header("Location:dodajSlotove.php?id=$info[id]");
			die();
		}			
		
	}
	
	
?>


	<br />

	<h3> <i class="glyphicon glyphicon-eye-open"></i> Dodajte slotove za ovu igru
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
			
			<label>Broj slotova:</label>
			<input type="text" name="slotova" placeholder="Broj slotova" class="form-control" /> <br />
			
			<label>Slot lokacija</label>
			<select type="text" name="slotLokacija" class="form-control">
				<option value="lite">Lite</option>
				<option value="premium">Premium</option>
			</select>
			<br />
			<input type="submit" name="dodajSlot" value="Dodaj slot" class="btn btn-small btn-success" />
			
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