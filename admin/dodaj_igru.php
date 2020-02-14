<?php include("header.php"); ?>
 
<?php 
	
	  $vreme = time();
	  $datum = date("d.m.Y");	
	
	if($_SESSION['adminid'] = $_SESSION['adminid']) { 


	if(isset($_POST['dodajigru'])) {

		
	 
	  $igra = htmlspecialchars(mysqli_real_escape_string($con,$_POST['igra']));
	  switch($igra){
		  case $igra == "cs":
		  $nazivIgre = "Counter Strike 1.6";
		  break;
		  case $igra == "css":
		  $nazivIgre = "Counter Strike Source";
		  break;		
		  case $igra == "csgo":
		  $nazivIgre = "Counter Strike Global Offensive";
		  break;		  
		  case $igra == "mc":
		  $nazivIgre = "Minecraft";
		  break;		  
		  case $igra == "ts3":
		  $nazivIgre = "TeamSpeak3";
		  break;		  
		  case $igra == "cod2":
		  $nazivIgre = "Call of Duty 2";
		  break;		  
		  case $igra == "cod4":
		  $nazivIgre = "Call of Duty 4";
		  break;
		  case $igra == "samp":
		  $nazivIgre = "SanAndreas MultiPlayer";
		  break;		  
	  }
	  
	  $ping_od 							= htmlspecialchars(mysqli_real_escape_string($con,$_POST['ping_od']));
	  $ping_do 							= htmlspecialchars(mysqli_real_escape_string($con,$_POST['ping_do']));
	  $lokacija 						= htmlspecialchars(mysqli_real_escape_string($con,$_POST['lokacija']));	  
	  $cena_slot 						= htmlspecialchars(mysqli_real_escape_string($con,$_POST['cena_slot']));
	  
	  $premium 							= htmlspecialchars(mysqli_real_escape_string($con,$_POST['premium']));
	  $lokacija_premium 				= htmlspecialchars(mysqli_real_escape_string($con,$_POST['lokacija_premium']));	  
	  $cena_prem 						= htmlspecialchars(mysqli_real_escape_string($con,$_POST['cena_prem']));
	  
	  
		if(trim($lokacija) != "" OR trim($cena_slot) != "") {	
  

			$dodajIgru = mysqli_query($con,"INSERT into igre (`ime`,`igra`,`lokacija`,`cena_slot`,`ping_od`,`ping_do`,`premium`,`lokacija_premium`,`cena_prem`) VALUES('$nazivIgre','$igra','$lokacija','$cena_slot','$ping_od','$ping_do','$premium','$lokacija_premium','$cena_prem')");
			if(!$dodajIgru) {
				$_SESSION['error'] = "Doslo je do greske!";
				header("Location:dodaj_igru.php");
				die();
			}
			else {
				$_SESSION['ok'] = "Uspesno ste dodali <b>$nazivIgre</b>!";
				header("Location:dodaj_igru.php");
				die();				
			}
			
	
		
	} else {
		
		  $_SESSION['error'] = "Polja ne smeju biti prazna!";
		  header("Location:dodaj_igru.php");
		  die();
		  		
		
	}
	
	
	}

	
?>

		
	<div class="row">
	


	  
      
      <!-- edit form column -->
      <div class="col-md-12">

	<div class="panel panel-default">
	  <div class="panel-heading">Dodavanje igre</div>
	  <div class="panel-body">
		
					<form action="" method="POST" enctype="multipart/form-data">
					<label>Igra:</label>
						<select type="text" name="igra" class="form-control"> 
							<option value="cs">Counter Strike 1.6</option>
							<option value="samp">SanAndreas MultiPlayer</option>
							<option value="csgo">Counter Strike Global Offensive</option>
							<option value="ts3">TeamSpeak3</option>
							<option value="mc">Minecraft</option>
							<option value="cod2">Call Of Duty 2</option>
							<option value="cod4">Call of Duty 4</option>
							<option value="css">Counter Strike Source</option>
						</select>
						<br />
						
						<input type="text" placeholder="Ping od (ex:20)" name="ping_od" class="form-control" style="width:200px;" /> 
						-
						<input type="text" placeholder="Ping do (ex:50)" name="ping_do" class="form-control" style="width:200px;" />
						<br />
						
						<h4>Lite serveri (podesavanja)</h4>
						<label>Lokacija:</label>
						<input type="text" name="lokacija" placeholder="Upisite lokaciju (primer: Nemacka / Hetzner)" class="form-control" />
						<br />
						
						<label>Cena (lite):</label>
						<input type="text" name="cena_slot" placeholder="Cena 1 slota (primer: 10)" class="form-control" />
						<small>Upisite samo broj npr: 10 ako je cena 10 dinara<br />
						Cena je u RSD valuti!
						</small>
						<br />

						<br />
						<h4>Premium serveri (podesavanja)</h4>
						
						<label>Igra poseduje premium servere?</label>
						<select type="text" name="premium">
							<option value="0"> Ne </option>
							<option value="1"> Da </option>
						</select>
						<small>Ukoliko ne prodajete premium servere za ovu igru onda korake ispod ne morate popunjavati. <br />
						Ukoliko prodajete premium servere za ovu igru oznacite sa <b>Da</b> a zatim popunite polja ispod!</small>
						<br />
						<label>Lokacija:</label>
						<input type="text" name="lokacija_premium" placeholder="Upisite lokaciju (primer: Nemacka / Hetzner)" class="form-control" />
						<br />
						
						<label>Cena (premium):</label>
						<input type="text" name="cena_prem" placeholder="Cena 1 slota (primer: 20)" class="form-control" />
						<small>Upisite samo broj npr: 20 ako je cena 20 dinara<br />
						Cena je u RSD valuti!
						</small>
						<br />
						
						<button class="btn btn-deafult" name="dodajigru"> <i class="glyphicon glyphicon-plus"></i> Dodaj </button>
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