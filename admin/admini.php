<?php 

	include("header.php");  


	if ($_SESSION['adminid'] == "") {
		$_SESSION['error'] = "Morate se prijaviti!";
		header("Location:login.php");
		die();
	} else {
	
	$listajValue = $_GET['listaj'];
	if($listajValue == "Sve") {
		$listaTiketatxt = "Lista svih admina";
	}
	
	else if($listajValue == "" OR !$listajValue) {
		$listaTiketatxt = "Lista svih admina";
	}
	
	
	if(isset($_GET['akcija']) && $_GET['akcija'] == "dodaj_admina") {
	
	
	if(isset($_POST['kreirajAdmina'])) {
		
	$ime = htmlspecialchars(mysqli_real_escape_string($con,$_POST['ime']));
	$prezime = htmlspecialchars(mysqli_real_escape_string($con,$_POST['prezime']));	
	$username = htmlspecialchars(mysqli_real_escape_string($con,$_POST['username']));	
	$password = htmlspecialchars(mysqli_real_escape_string($con,$_POST['password']));	
	$kriptovanaSifra = md5($password);
	
	if(trim($ime) !="" OR trim($prezime) !="" OR trim($username) !="" OR trim($password) !="") {
		
		$dodajAdmina = mysqli_query($con,"INSERT into admin(`ime`,`prezime`,`username`,`password`) VALUES('$ime','$prezime','$username','$kriptovanaSifra')");
		if(!$dodajAdmina OR $dodajAdmina == "") {
			$_SESSION['error'] = "Doslo je do greske! Pokusajte ponovo!";
			header("Location:admini.php?akcija=dodaj_admina");
			die();
		} else {
			$_SESSION['ok'] = "Uspesno ste kreirali novog admina!";
			header("Location:admini.php?akcija=dodaj_admina");
			die();
		}
	}
	
	else {
		
		$_SESSION['error'] = "Polja ne smeju biti prazna!";
		header("Location:admini.php?akcija=dodaj_admina");
		die();
		
	}
	
	}
	
	
	
	
	
?>


	<h3> <i class="glyphicon glyphicon-plus"></i> Administracija <small>(Dodajte novog admina)</small></h3> 
	
		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						Kreirajte novi admin racun: 
					</div>
					<div class="panel-body">
					
						<form action="" method="POST">
							
							<label>Ime: </label>
							<input type="text" name="ime" class="form-control" placeholder="Ime admina..." />
							<br />
							
							<label>Prezime: </label>
							<input type="text" name="prezime" class="form-control" placeholder="Prezime admina..." />
							<br />
							
							<label>Username: </label>
							<input type="text" name="username" class="form-control" placeholder="Username admina..." />
							<br />
								
							<label>Password: </label>
							<input type="password" name="password" class="form-control"/>
							<br />
							
							<button type="submit" name="kreirajAdmina" class="btn btn-primary btn-lg"> <i class="glyphicon glyphicon-plus"></i> Kreiraj admina</button>
							
						</form>
						
					</div>
				</div>
			</div>	
		</div>

<?php } 


else if(isset($_GET['akcija']) && $_GET['akcija'] == "ukloni_admina") { 


if(isset($_POST['ukloniAdmina'])) {
	
	$adminID = $_POST['admin'];
	$provera = mysqli_num_rows(mysqli_query($con,"SELECT adminid FROM admin WHERE adminid='$adminID'"));
	if($provera <1) {
		$_SESSION['error'] = "Admin ne postoji!";
		header("Location:admini.php?akcija=ukloni_admina");
		die();
	}
	else {
		$ukloniAdmina = mysqli_query($con,"DELETE FROM admin WHERE adminid='$adminID'");
		if(!$ukloniAdmina OR $ukloniAdmina == "") {
			$_SESSION['error'] = "Doslo je do greske!";
			header("Location:admini.php?akcija=ukloni_admina");
			die();
		}
		else {
			$_SESSION['ok'] = "Uspesno ste uklonili admina!!";
			header("Location:admini.php?akcija=ukloni_admina");
			die();			
		}
	}
}



?>




	<h3> <i class="glyphicon glyphicon-trash"></i> Administracija <small>(Uklonite admina)</small></h3> 

		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						Odaberite admina kojeg zelite da uklonite
					</div>
					<div class="panel-body">
					
						<form action="" method="POST">
							
							<label>Odaberite admina: </label>
						<select name="admin" data-placeholder="Odaberi admina" class="select form-control" tabindex="1">
						  <option value="">Odaberite admina</option>
							<?php
							$kveri = mysqli_query($con,"SELECT * FROM admin ORDER by adminid DESC");
							while($red = mysqli_fetch_assoc($kveri)){
							$ime = $red['ime'];
							$prezime = $red['prezime'];
							$server_id = $red['adminid'];
							echo "<option value='$server_id'>$ime $prezime ($red[username])</option>";
							}
							?>
						</select>	
							<br />
							
							
							<button type="submit" name="ukloniAdmina" class="btn btn-danger btn-lg"> <i class="glyphicon glyphicon-trash"></i> Ukloni admina</button>
							
						</form>
						
					</div>
				</div>
			</div>	
		</div>


<?php
} else { ?>



	<h3> <i class="glyphicon glyphicon-user"></i> Administracija <small>(<?php echo $listaTiketatxt; ?>)</small><h3> 


<table class="table table-striped" style="font-size:13px;">

<th> AdminID </th>	
<th> Ime </th>	
<th> Prezime </th>	
<th> Username </th>
<th> Rank </th>	






<?php


	if($listajValue == "Sve") {
	$kveri = mysqli_query($con,"SELECT * FROM admin");
	}

	
	
	$broj_artikala = mysqli_num_rows($kveri);
	if(isset($_GET['stranica'])){
		$page = preg_replace('#[^0-9]#i', '', $_GET['stranica']);
	} else {
		$page = 1;
	}
	//Podataka po stranici * kps *
	$kps = 10; //Broj podataka po stranici
	$zadnja = ceil($broj_artikala/$kps);

	if ($page < 1){
		$page = 1;	
	} elseif ($page > $zadnja){
		$page = $zadnja;	
	}

	$centar = "";
	$sub1 = $page - 1;
	$sub2 = $page - 2;
	$add1 = $page + 1;
	$add2 = $page + 2;
	

	
    if ($page == 1) {
	    $centar .= '<div class="pagination"><ul>';
		$centar .= '<li class="active"><a href="admini.php?listaj='.$listajValue.'&stranica=' . $page . '">' . $page . '</a></li>';
		$centar .= '<li><a href="admini.php?listaj='.$listajValue.'&stranica=' . $add1 . '">' . $add1 . '</a></li> ';
	} else if ($page == $zadnja) {
		$centar .= '<a href="admini.php?listaj='.$listajValue.'&stranica=' . $sub1 . '">' . $sub1 . '</a> ';
		$centar .= '<li><span style="color:#999999;">' . $page . '</span></li>';
	} else if ($page > 2 && $page < ($zadnja - 1)) {
		$centar .= '<a href="admini.php?listaj='.$listajValue.'&stranica=' . $sub2 . '">' . $sub2 . '</a> ';
		$centar .= '<a href="admini.php?listaj='.$listajValue.'&stranica=' . $sub1 . '">' . $sub1 . '</a> ';
		$centar .= '<span style="color:#999999;">' . $page . '</span>';
		$centar .= '<a href="admini.php?listaj='.$listajValue.'&stranica=' . $add1 . '">' . $add1 . '</a> ';
		$centar .= '<a href="admini.php?listaj='.$listajValue.'&stranica=' . $add2 . '">' . $add2 . '</a> ';
	} else if ($page > 1 && $page < $zadnja) {
		$centar .= '<a href="admini.php?listaj='.$listajValue.'&stranica=' . $sub1 . '">' . $sub1 . '</a> ';
		$centar .= '<span style="color:#999999;">' . $page . '</span>';
		$centar .= '<a href="admini.php?listaj='.$listajValue.'&stranica=' . $add1 . '">' . $add1 . '</a> ';
	}	
	
	

	
	$prvi = (($page-1)*$kps);
	$drugi = $kps;

	if($listajValue == "Sve") {
	$kveri2 = mysqli_query($con,"SELECT * FROM admin ORDER by adminid DESC LIMIT $prvi,$drugi");
	}

	
	
	$prikazi = "";



	if ($zadnja != "1"){
		if ($page != 1) {
			$prethodna = $page - 1;
			$prikazi .=  '<div class="pagination"><ul><li> <a href="admini.php?listaj='.$listajValue.'&stranica='.$prethodna.'">Prethodna</a> </li>';
		} 
		$prikazi .= '<li>'.$centar.'</li>';
		if ($page != $zadnja) {
			$sledeca = $page + 1;
			$prikazi .=  '<li><a href="admini.php?listaj='.$listajValue.'&stranica='.$sledeca.'">Sledeca</a></li></ul></div>';
		} 
	}
	
	



      $vreme = time() + 60;
	  
		while($k = mysqli_fetch_array($kveri2)){
	      
		
		$rank = $k['type'];
		if($rank == "1" OR $rank == "0") {
			$rank = "Administrator";
		}
		
		
	    echo " 
		<tr>
			
			<td>#$k[adminid]</td>
			<td>$k[ime]</td> 
			<td>$k[prezime]</td>
			<td>$k[username]</td>
			<td>$rank</td>
			

			
			
		</tr> ";
	  }
	  
      $br = mysqli_num_rows($kveri2);
	  if($br == ""){
		  
		if($listajValue == "Sve") {
			$poruka = "Nema admina";
		}
		else if($listajValue == "" OR !$listajValue) {
			$poruka = "Nema admina";
		} 
			  
		  
	    echo "<tr><td>$poruka</td></tr>";
	  }
?>
</table>


<?php
if(isset($prikazi) && !empty($prikazi)) {
?>
<div class="pagination"><?php echo $prikazi; ?></div>
<?php
} }
?>
</div>
	
	


<?php 
	include("footer.php"); 
	} // SESSIJA
	?>