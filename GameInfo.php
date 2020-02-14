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



<div class="row">

<div class="col-md-7">
	<div class="omot">

		<h3><i class="fa fa-info"></i> GameInfo</h3>
		Naziv igre: <strong><img style="width:15px;" src="assets/img/igre/ikonice/<?php echo $igra['igra']; ?>.png"/> <?php echo $igra['ime']; ?></strong> <br />
		Lokacija: <strong><?php echo $lokacija; ?></strong> <br />
		Ping: <strong><?php echo $igra['ping_od']."-".$igra['ping_do']; ?></strong>ms/s <br />
		
	
</div>	
</div>

<div class="col-md-5">
	<div class="omot">

		<h3><i class="fa fa-list" aria-hidden="true"></i> Kalkulator</h3>
		Cena jednog slota je: <strong><?php echo $igra['cena_slot']; ?></strong> rsd<br />




			<form action="" method="POST">
			

									<p class='informacija'>Lokacija:</p>
									<select name='odaberiteigru' class='inputselect form-control' id='odaberiigru' onchange='izracunajCenu();'>
										<option value='1'>Lite</option>
										<?php if($igra['premium'] == "1"){ ?>
										<option value='2'>Premium</option>
										<?php }; ?>
									</select>
								
									<p class='informacija'>Izaberite broj slotova:</p>
									<select name='odaberiteslotove' class='inputselect cs form-control' id='slotovi' onChange='izracunajCenu();'>
										<option value='0'>Izaberite broj slotova</option>
										<?php
										$kveri = mysqli_query($con,"SELECT * FROM slotovi WHERE igra='$igra[id]' AND lite=1 ORDER by slotovi ASC");
										while($red = mysqli_fetch_assoc($kveri)){
										$name = $red['slotovi'];
										$aid = $red['slotovi'];
										echo "<option value='$aid'>$name slotova</option>";
										}
										?>
									</select>
									<select name='odaberiteslotove' class='inputselect prem form-control' id='slotovi' style='display: none;' onChange='izracunajCenu();'>
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
			</form>	
		
	
</div>	
</div>

</div>

	</div>

<?php include("footer.php"); ?>
