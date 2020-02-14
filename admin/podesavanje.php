<?php include("header.php"); ?>
 
<?php 
	
	  $vreme = time();
	  $datum = date("d.m.Y");	
	
	if($_SESSION['adminid'] = $_SESSION['adminid']) { 
	
	
	// PODESAVANJE KORISNIKA 
	
	if(isset($_POST["podesi"]))
	{
		
		$ime = htmlspecialchars(mysqli_real_escape_string($con,$_POST['ime']));
		$prezime = htmlspecialchars(mysqli_real_escape_string($con,$_POST['prezime']));
		
		$update = mysqli_query($con,"UPDATE admin SET ime='$ime', prezime='$prezime' WHERE adminid='$user[adminid]'");	
		if($update == "" OR !$update) {
			
			$_SESSION['error'] = "Doslo je do greske!";
			header("Location:podesavanje.php");
			
		}
		else {
			
			$_SESSION['ok'] = "Uspesno!";
			header("Location:podesavanje.php");
			   			
		}
		
	}	
	
	
	// PODESAVANJE KRAJ 	
	
	if(isset($_POST["promeniPW"]))
	{
		
		$tpw = htmlspecialchars(mysqli_real_escape_string($con,$_POST['tpw']));
		$npw = htmlspecialchars(mysqli_real_escape_string($con,$_POST['npw']));
		
		if(trim($tpw) != "" OR trim($npw) != "") {	
		
		$tpw1 = md5($tpw);
		$npw1 = md5($npw);
		
		if($user['password'] == $tpw1) {
		
		$update = mysqli_query($con,"UPDATE admin SET password='$npw1' WHERE adminid='$user[adminid]'");	
		if($update == "" OR !$update) {
			
			$_SESSION['error'] = "Doslo je do greske!";
			header("Location:podesavanje.php");
			die();
		}
		else {
			$vreme = time();
			$_SESSION['ok'] = "Uspesno ste sacuvali izmene!";
			header("Location:podesavanje.php");
			die(); 			
		}
		
	} else {
		
		$_SESSION['error'] = "Stara lozinka nije ispravna!";
		header("Location:podesavanje.php");
		die();
		
	}	
	} else {
		
		$_SESSION['error'] = "Morate popuniti polja!";
		header("Location:podesavanje.php");
		die();		
		
	}	
	}

	
?>

        
		<h3><div class="plavo2"><i class="glyphicon glyphicon-cog"></i> Podesavanje naloga </div></h3>

		<br />


		
	<div class="row">
	


	  
      
      <!-- edit form column -->
      <div class="col-md-7 personal-info">

	<div class="panel panel-default">
	  <div class="panel-heading">Podesite informacije o vasem nalogu</div>
	  <div class="panel-body">

        <form class="form-horizontal" action="" method="POST" role="form">
          <div class="form-group">
            <label class="col-lg-3 control-label">Ime:</label>
            <div class="col-lg-8">
              <input class="form-control" name="ime" type="text" value="<?php echo $user['ime']; ?>">
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Prezime:</label>
            <div class="col-lg-8">
              <input class="form-control" name="prezime" type="text" value="<?php echo $user['prezime']; ?>">
            </div>
          </div>
          <div class="form-group">
            <label class="col-md-3 control-label">Korisnicko ime:</label>
            <div class="col-md-8">
              <input disabled class="form-control" type="text" value="<?php echo $user['username']; ?>">
            </div>
          </div>


		  
          <div class="form-group">
            <label class="col-md-3 control-label"></label>
            <div class="col-md-8">
              <input type="submit" name="podesi" class="btn btn-primary" value="Sacuvaj">
              <span></span>
              <input type="reset" class="btn btn-danger" value="Cancel">
            </div>
          </div>
        </form>
		
		
      </div>
  </div>
  </div>
  
  
      <div class="col-md-5 personal-info">

	<div class="panel panel-default">
	  <div class="panel-heading"> Podesavanje lozinke </div>
	  <div class="panel-body">

        <form class="form-horizontal" action="" method="POST" role="form">


          <div class="form-group">
            <label class="col-md-3 control-label">Trenutna lozinka:</label>
            <div class="col-md-8">
              <input class="form-control" name="tpw" type="password" placeholder='Upisite novu lozinku'>
            </div>
          </div>

          <div class="form-group">
            <label class="col-md-3 control-label">Nova lozinka:</label>
            <div class="col-md-8">
              <input class="form-control" name="npw" type="password" placeholder='Upisite novu lozinku'>
            </div>
          </div>

		  
          <div class="form-group">
            <label class="col-md-3 control-label"></label>
            <div class="col-md-8">
              <input type="submit" name="promeniPW" class="btn btn-primary" value="Sacuvaj">
              <span></span>
              <input type="reset" class="btn btn-danger" value="Cancel">
            </div>
          </div>
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