<?php include("header.php"); ?>
 
<?php 
	
	  $vreme = time();
	  $datum = date("d.m.Y");	
	
	if($_SESSION['adminid'] = $_SESSION['adminid']) { 
	
	
	$stats = mysqli_fetch_array(mysqli_query($con,"SELECT * FROM statistike"));
	$br_masina = $stats['masine'];
	$br_klijenata = $stats['klijenti'];
	$br_servera = $stats['serveri'];
			
	if(isset($_POST['sacuvaj1'])){
		
		$masine = htmlspecialchars(mysqli_real_escape_string($con,$_POST['br_masina']));
		$klijenti = htmlspecialchars(mysqli_real_escape_string($con,$_POST['br_klijenata']));
		$serveri = htmlspecialchars(mysqli_real_escape_string($con,$_POST['br_servera']));
		
		$update = mysqli_query($con,"UPDATE statistike SET `masine` = '$masine',`klijenti`='$klijenti', `serveri`='$serveri'");
		if(!$update){
			$_SESSION['error'] = "Doslo je do greske!";
			header("Location:statistike.php");
			die();
		}
		else
		{
			$_SESSION['ok'] = "Uspesno ste obnovili statistiku!";
			header("Location:statistike.php");
			die();
		}
		
		
	}
	
	$site = mysqli_fetch_array(mysqli_query($con,"SELECT * FROM podesavanja"));
	$site_title = $site['title'];

	
	if(isset($_POST['sacuvaj2'])){
		
		$title = htmlspecialchars(mysqli_real_escape_string($con,$_POST['nazivSajta']));
		
		$update = mysqli_query($con,"UPDATE podesavanja SET `title` = '$title'");
		if(!$update){
			$_SESSION['error'] = "Doslo je do greske!";
			header("Location:statistike.php");
			die();
		}
		else
		{
			$_SESSION['ok'] = "Uspesno!!";
			header("Location:statistike.php");
			die();
		}
		
		
	}	
	
	
?>
	<div class="row">
	


	  
      
      <!-- edit form column -->
      <div class="col-md-7 personal-info">

	<div class="panel panel-default">
	  <div class="panel-heading">Podesavanje statistike</div>
	  <div class="panel-body">

        <form action="" method="POST">
			<label>Broj masina: </label>
			<input type="text" name="br_masina" placeholder="Upisite broj masina" value="<?php echo $br_masina; ?>" class="form-control" />
			<br />
			<label>Broj klijenata: </label>
			<input type="text" name="br_klijenata" placeholder="Upisite broj masina" value="<?php echo $br_klijenata; ?>" class="form-control" />
			<br />
			<label>Broj servera: </label>
			<input type="text" name="br_servera" placeholder="Upisite broj servera" value="<?php echo $br_servera; ?>" class="form-control" />
			<br />		
			<input type="submit" name="sacuvaj1" value="Sacuvaj" class="btn btn-small btn-success" />
		</form>
		
		
      </div>
  </div>
  </div>
  
  
      <div class="col-md-5 personal-info">

	<div class="panel panel-default">
	  <div class="panel-heading"> Podeasvanje sajta </div>
	  <div class="panel-body">

        <form class="form-horizontal" action="" method="POST" role="form">

			
			<label>Ime sajta:</label>
			<input type="text" name="nazivSajta" class="form-control" value="<?php echo $site_title; ?>" />
			<br />
			<input type="submit" name="sacuvaj2" value="Sacuvaj" class="btn btn-small btn-success"/>
          
		  
        </form>
		
		
      </div>
  </div>
  </div>  
  
  
  
  </div>

</br></br>

<?php } else {
	
	$_SESSION['error'] = "Greska!";
	header("Location:index.php");
	
}?>
<?php include("footer.php"); ?>