<?php include("header.php"); 

	    if(!ctype_digit($_GET['id']) && $_GET['id'] != "") // proveravamo da li je $id broj
	    {
		  die("Mmmmm :)"); // ukoliko $id nije broj skripta ce se prekinuti
	    }
	    $id = htmlspecialchars($_GET['id'], ENT_QUOTES); // uzimamo id od novosti 	
		$sql = "SELECT * FROM igre WHERE id='$id'";

		$igra = mysqli_fetch_array(mysqli_query($con,$sql));
		
		if(!$igra OR $igra == "") {
			
			$_SESSION['error'] = "Igra ne postoji!";
			header("Location:index.php");
			die();
			
		}
			
		if($igra['premium'] == "1") {
			$lokacija = $igra['lokacija']." & ".$igra['lokacija_premium'];
		}
		else 
		{
			$lokacija = $igra['lokacija'];
		}
		


				if(isset($_POST['naruciserver'])) {
					
					
				$ime = htmlspecialchars(mysqli_real_escape_string($con,$_POST['ime']));  				
				$email = htmlspecialchars(mysqli_real_escape_string($con,$_POST['email']));  		
				$igra = htmlspecialchars(mysqli_real_escape_string($con,$_POST['igra']));  		
				if($_POST['odaberiteigru'] == "1"){
					$slotovi = htmlspecialchars(mysqli_real_escape_string($con,$_POST['odaberiteslotove']));  	
				}
				else 
				if($_POST['odaberiteigru'] == "2"){
					$slotovi = htmlspecialchars(mysqli_real_escape_string($con,$_POST['odaberiteslotove2']));  	
				}					
				
				$nacin_placanja = htmlspecialchars(mysqli_real_escape_string($con,$_POST['nacinplacanja']));  		
				$cena = htmlspecialchars(mysqli_real_escape_string($con,$_POST['cijenaserverainput'])); 
				$unapred = htmlspecialchars(mysqli_real_escape_string($con,$_POST['mjeseci'])); 				
				$datum = date("d.m.Y");
				$ip = $_SERVER['REMOTE_ADDR'];
			

				$subject = "Narucili ste server! INFO";

				$msg = 	"Zdravo $ime, uspesno ste narucili server na uniq-hosting.info.". "\r\n" .
						"Podaci o narudzbini:". "\r\n" .
						"Ime: $ime". "\r\n" .
						"Email: $email". "\r\n" .
						"Igra: $igra". "\r\n" .	
						"Broj slotova: $slotovi slotova". "\r\n" .	
						"Nacin placanja: $nacin_placanja". "\r\n" .
						"Lokacija: $lokacija". "\r\n" .						
						"Cena za uplatu: $cena dinara". "\r\n\r\n" .
						"Slika uplatnice za Srbiju: http://uniq-hosting.info/uplatnice/Srbija.jpg ". "\r\n\r\n" .						
						"Kada uplatite server slikate uplatnicu i sliku posaljite na hostinguniq@gmail.com". "\r\n" .
						"Takodje mozete nam poslati uplatnicu na nasoj zvanicnoj facebook stranici: https://www.facebook.com/hostinguniq/". "\r\n\r\n\r\n";
				
				$from = "From: UniqHosting@gmail.com";;
				$to = $email;
				$ubaci = mysqli_query($con,"INSERT into narudzbine(`ime`,`email`,`igra`,`nacinplacanja`,`lokacija`,`slotovi`,`unapred`,`cena`,`datum`,`ip`) VALUES('$ime','$email','$igra','$nacin_placanja','$lokacija','$slotovi','$unapred','$cena','$datum','$ip')");
				if($ubaci) {
				
				if(mail($to, $subject, $msg, $from)) {
				echo "<div class='container succ'>Uspesno ste narucili server! Podaci za uplatu su poslati na $email</div>";
				}else	
				{
				echo "<div class='container error'>Doslo je do greske!</div>";
				}
				}
				}
						
		
		
		
		
?>
<div class="container">
<br />

		<script>
			function izracunajCenu(){
				var slot=$("option:selected","#slotovi").val();
				var flag=$("#flag").attr("title");
				var Izdvajanje=$("#odaberiigru").val();
				if(Izdvajanje == 1){
					var Izdvajanjep = '<?php echo $igra['cena_slot']; ?>|dinara';
					$('.prem').css('display', 'none');
					$('.cs').css('display', 'block');
					var slot=$("option:selected",".cs").val();
				}else{
					if(Izdvajanje == 2){
						var Izdvajanjep = '<?php echo $igra['cena_prem']; ?>|dinara';
						$('.cs').css('display', 'none');
						$('.prem').css('display', 'block');
						var slot=$("option:selected",".prem").val();
					}
				}
				var Izdvajanje=Izdvajanjep.split("|");
				var CenaSlota=Izdvajanje[0];
				var Valuta=Izdvajanje[1];
				var Mesec=$("#meseci").val();
				var Cena=slot;
				var Popust=0;
				if(Mesec==2)Popust=5/100;else
				if(Mesec==3)Popust=10/100;else
				if(Mesec==6)Popust=15/100;else
				if(Mesec==12)Popust=20/100;
				var CenaPopust=Math.round(Cena*Mesec*100)/100;
				Cena*=CenaSlota;
				Cena-=(Cena*Popust);
				CenaPopust*=CenaSlota;
				CenaPopust=Math.round(CenaPopust*100)/100;
				Cena*=Mesec;Cena=Cena.toFixed(2);
				Cena=Cena.replace(".00","");
				var cena_valuta_zemlja=Cena+" "+Valuta;
				var cena_valuta_zemljaa=Cena;
				if(!(slot>0))cena_valuta_zemlja="Izaberite broj slotova";
				$("#cena").html(cena_valuta_zemlja);
				$("#cijenaserverainput").val(cena_valuta_zemljaa);
			}
		</script>

<div class="omot">

<div class="row">


<div class="col-md-12">
	

		<h3><i class="fa fa-list" aria-hidden="true"></i> Narucite novi server</h3>
		Cena jednog slota je: <strong><?php echo $igra['cena_slot']; ?></strong> rsd<br />




			<form action="" method="POST">
				
				<div class="col-md-6">
									<p class='informacija'>Ime i prezime:</p>
									<input type="text" required="required" placeholder="Upisite vase Ime i Prezime" name="ime" class="input form-control" />		
									
									<p class='informacija'>Email:</p>
									<input type="email" required="required" placeholder="Upisite vasu Email Adresu" name="email" class="input form-control" />					
						
									<p class='informacija'>Igra:</p>
									<select name='igra' class='inputselect form-control' id='igra' onchange='izracunajCenu();'>
										<option selected value='<?php echo $igra['igra']; ?>'><?php echo $igra['ime']; ?></option>
									</select>

									<p class='informacija'>Nacin placanja:</p>
									<select name='nacinplacanja' class='inputselect form-control'>
										<option value='Bank/Posta'>Banka/Posta</option>
									</select>
									
					</div>
				
				<div class="col-md-6">
									<p class='informacija'>Lokacija:</p>
									<select name='odaberiteigru' class='inputselect form-control' id='odaberiigru' onchange='izracunajCenu();'>
										<option value='1'>Lite</option>
										<?php if($igra['premium'] == "1"){ ?>
										<option value='2'>Premium</option>
										<?php }; ?>
									</select>
								
									<p class='informacija'>Izaberite broj slotova:</p>
									<select name='odaberiteslotove' class='inputselect cs form-control' id='slotovi' style='display: block;' onChange='izracunajCenu();'>
										<option value='0'>Izaberite broj slotova</option>
										<?php
										$kveri = mysqli_query($con,"SELECT * FROM slotovi WHERE igra='$igra[id]' AND lite='1' ORDER by slotovi ASC");
										while($red = mysqli_fetch_assoc($kveri)){
										$name = $red['slotovi'];
										$aid = $red['slotovi'];
										echo "<option value='$aid'>$name slotova</option>";
										}
										?>
									</select>
									<?php if($igra['premium'] == "1" ) { ?>
									<select name='odaberiteslotove2' class='inputselect prem form-control' id='slotovi' style='display: none;' onChange='izracunajCenu();'>
										<option value='0'>Izaberite broj slotova</option>
										<?php
										$kveri = mysqli_query($con,"SELECT * FROM slotovi WHERE igra='$igra[id]' AND premium='1' ORDER by slotovi ASC");
										while($red = mysqli_fetch_assoc($kveri)){
										$name = $red['slotovi'];
										$aid = $red['slotovi'];
										echo "<option value='$aid'>$name slotova</option>";
										}
										?>

									</select>
									<?php };?>
									<p class='informacija'>Placate unaprijed:</p>
									<select name='mjeseci' class='inputselect form-control' id='meseci' onChange='izracunajCenu();'>
										<option value='1'>1 Mesec</option>
										<option value='2'>2 Meseca ( 5 % popusta )</option>
										<option value='3'>3 Meseca ( 10 % popusta )</option>
										<option value='6'>6 Meseci ( 15 % popusta )</option>
										<option value='12'>12 Meseci ( 20 % popusta )</option>
									</select>
									<h3>Cena servera:</h3>
									<div readonly='readonly' class='input' id='cena' style='line-height: 20px;'></div>
									<input type='hidden' id='cijenaserverainput' name='cijenaserverainput' >
									<br />
									<input style="color:#000;" type="submit" class="btn btn-small" name="naruciserver" value="NARUCI SERVER" />
					</div>
					
					
			</form>	
		
	
</div>	
</div>

</div>

	</div>

<?php include("footer.php"); ?>
