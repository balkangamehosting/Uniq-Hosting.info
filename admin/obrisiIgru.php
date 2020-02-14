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
	
	$obrisiNarudzbine 	= mysqli_query($con,"DELETE FROM `narudzbine` WHERE igra='$info[igra]'");
	$obrisiSlotove 		= mysqli_query($con,"DELETE FROM `slotovi` WHERE igra='$info[id]'");
	$obrisiIgru 		= mysqli_query($con,"DELETE FROM `igre` WHERE id='$info[id]'");
	
	if(!$obrisiNarudzbine OR !$obrisiSlotove OR !$obrisiIgru){
		$_SESSION['error'] = "Doslo je do greske!";
		header("Location:igra.php?id=$info[id]");
		die();
	}
	else {	
		$_SESSION['ok'] = "Uspesno ste obrisali igru!";
		header("Location:igre.php");
		die();		
	}
	
	
?>





<?php 



	include("footer.php"); 
	}} // SESSIJA
	?>