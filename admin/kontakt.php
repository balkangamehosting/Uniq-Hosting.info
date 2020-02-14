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
	
	
	$info = mysqli_fetch_array(mysqli_query($con,"SELECT * FROM `kontakti` WHERE id='$id'"));
	
	if(!$info OR $info == "") {
		$_SESSION['error'] = "Kontakt ne postoji!";
		header("Location:kontakti.php");
		die();
	} else {	


?>


	<br />

	<h3> <i class="glyphicon glyphicon-eye-open"></i> Pregled kontakta 
	<span class="pull-right"><a class="btn btn-primary btn-small" href="kontakti.php">NAZAD NA LISTU KONTAKTA</a></span>
	</h3> 

	
	
	<div id="omot" style="font-size:12px;font-weight:none;">
	<div class="row">
	<div class="col-md-12">
	<div class="panel panel-default">
	<div class="panel-heading">
	<?php echo $info['email']; ?> <small>(<?php echo $info['ime']; ?>)</small>
	<div class="pull-right">
		<i class="glyphicon glyphicon-calendar"></i> <?php echo $info['datum']; ?>
	</div>
	</div>
	<div class="panel-body">
	<p>
	<?php echo nl2br($info['poruka']); ?>
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