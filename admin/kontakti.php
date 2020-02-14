<?php 

	include("header.php");  


	if ($_SESSION['adminid'] == "") {
		$_SESSION['error'] = "Morate se prijaviti!";
		header("Location:login.php");
		die();
	} else {
	
	

?>

	<h3> <i class="glyphicon glyphicon-comment"></i> Kontakti<h3> 


<table class="table table-striped" style="font-size:13px;">

<th> ID </th>	
<th> Ime i prezime</th>	
<th> Email adresa </th>	
<th> Datum </th>
<th> Akcija </th>	






<?php


	$kveri = mysqli_query($con,"SELECT * FROM kontakti");

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
		$centar .= '<li class="active"><a href="kontakti.php?stranica=' . $page . '">' . $page . '</a></li>';
		$centar .= '<li><a href="kontakti.php?stranica=' . $add1 . '">' . $add1 . '</a></li> ';
	} else if ($page == $zadnja) {
		$centar .= '<a href="kontakti.php?stranica=' . $sub1 . '">' . $sub1 . '</a> ';
		$centar .= '<li><span style="color:#999999;">' . $page . '</span></li>';
	} else if ($page > 2 && $page < ($zadnja - 1)) {
		$centar .= '<a href="kontakti.php?stranica=' . $sub2 . '">' . $sub2 . '</a> ';
		$centar .= '<a href="kontakti.php?stranica=' . $sub1 . '">' . $sub1 . '</a> ';
		$centar .= '<span style="color:#999999;">' . $page . '</span>';
		$centar .= '<a href="kontakti.php?stranica=' . $add1 . '">' . $add1 . '</a> ';
		$centar .= '<a href="kontakti.php?stranica=' . $add2 . '">' . $add2 . '</a> ';
	} else if ($page > 1 && $page < $zadnja) {
		$centar .= '<a href="kontakti.php?stranica=' . $sub1 . '">' . $sub1 . '</a> ';
		$centar .= '<span style="color:#999999;">' . $page . '</span>';
		$centar .= '<a href="kontakti.php?stranica=' . $add1 . '">' . $add1 . '</a> ';
	}	
	
	

	
	$prvi = (($page-1)*$kps);
	$drugi = $kps;


	$kveri2 = mysqli_query($con,"SELECT * FROM kontakti ORDER by id DESC LIMIT $prvi,$drugi");
	
	
	
	$prikazi = "";



	if ($zadnja != "1"){
		if ($page != 1) {
			$prethodna = $page - 1;
			$prikazi .=  '<div class="pagination"><ul><li> <a href="kontakti.php?stranica='.$prethodna.'">Prethodna</a> </li>';
		} 
		$prikazi .= '<li>'.$centar.'</li>';
		if ($page != $zadnja) {
			$sledeca = $page + 1;
			$prikazi .=  '<li><a href="kontakti.php?stranica='.$sledeca.'">Sledeca</a></li></ul></div>';
		} 
	}
	
	



      $vreme = time() + 60;
	  
		while($k = mysqli_fetch_array($kveri2)){
	    
		$vreme = time_ago($k['vreme']);
		
		$naslov = $k['naslov'];
		if(strlen($naslov) > 60) {
		$naslov  = substr($naslov,0,60);
		$naslov .= "...";
		}
	
		
	    echo " 
		<tr>
			
			<td>#$k[id]</td>
			<td>$k[ime]</td>
			<td>$k[email]</td>
			<td>$k[datum]</td>
			<td><a href='kontakt.php?id=$k[id]'><i class='glyphicon glyphicon-eye-open'></i> Pogledaj poruku</a></td>
			


			
			
		</tr> ";
	  }
	  
      $br = mysqli_num_rows($kveri2);
	  if($br == ""){
		  
	if($listajValue == "Sve") {
		$poruka = "Nema tema!";
	}
	else 
	if($listajValue == "Sport")  {
		$poruka = "Nema tema u kategoriji $listajValue!";
	}
	else 
	if($listajValue == "Stars") {
		$poruka = "Nema tema u kategoriji $listajValue!";
	}
	else 
	if($listajValue == "Hronika") {
		$poruka = "Nema tema u kategoriji $listajValue!";
	}	
	else 
	if($listajValue == "Zabava") {
		$poruka = "Nema tema u kategoriji $listajValue!";
	}	
	else 
	if($listajValue == "Kultura") {
		$poruka = "Nema tema u kategoriji $listajValue!";
	}
	else 
	if($listajValue == "Auto") {
		$poruka = "Nema tema u kategoriji $listajValue!";
	}	
	else 
	if($listajValue == "It") {
		$poruka = "Nema tema u kategoriji $listajValue!";
	}	
	else 
	if($listajValue == "Svet") {
		$poruka = "Nema tema u kategoriji $listajValue!";
	}	
	else if($listajValue == "" OR !$listajValue) {
		$poruka = "Nema tema u kategoriji $listajValue!";
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
}
?>
</div>
	
	


<?php 
	include("footer.php"); 
	} // SESSIJA
	?>