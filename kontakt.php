<?php include("header.php"); 


		
?>
<div class="container">
<br />
<div class="row">

<div class="col-md-7">
	<div class="omot">

		<h3><i class="fa fa-info"></i> Kontakt</h3>
	
	<?php

		if(isset($_POST['kontakt'])) {


				$ime = htmlspecialchars(mysqli_real_escape_string($con,$_POST['ime']));
				$email = htmlspecialchars(mysqli_real_escape_string($con,$_POST['email']));
				$poruka = htmlspecialchars(mysqli_real_escape_string($con,$_POST['poruka']));
				$datum = date("d.m.Y");
			$subject = "KONTAKT INFO!";

			$msg = 	"Novi kontakt:". "\r\n\r\n\r\n" .
					"Ime: $ime". "\r\n\r\n\r\n" .
					"Email: $email". "\r\n\r\n\r\n" .
					"Poruka: $poruka". "\r\n\r\n\r\n";

			$from = "From:info@uniq-hosting.info"; // OVDE VAS EMAIL 
			$to = $from;
			
			$ubaci = mysqli_query($con,"INSERT into kontakti(`ime`,`email`,`poruka`,`datum`) VALUES('$ime','$email','$poruka','$datum')");
			if($ubaci) {
			
			if(mail($to, $subject, $msg, $from)) {
				
				
				echo "<div class='succ'>Uspesno ste nas kontaktirali! Dobicete odgovor na $email u sto kracem roku! Hvala!</div>";

				
			
			}else {
				echo "<div class='error'>Doslo je do greseke!Pokusajte ponovo!</div>";

			}
			}


		}//ISET
	
	?>
	
	<form action="" method="POST">
		
		<label>Vase ime i prezime: </label><br />
		<input type="text" name="ime" class="form-control" required="required" placeholder="Vase ime i prezime..." />
		<br /> <br />
		
		<label>Email: </label><br />
		<input type="email" name="email" class="form-control" required="required" placeholder="Vas email..." />
		<br /> <br />
		
		<label>Poruka: </label><br />
		<textarea type="text" name="poruka" placeholder="Vasa poruka..." required="required" class="textarea form-control"></textarea>
		<br /> <br />
		
		<input style="color:#000" type="submit" class="btn  btn-smaller" name="kontakt" value="Posalji!" />

		
	</form>		
	
</div>	
</div>

<div class="col-md-5">
	<div class="omot">

		<i class="fa fa-info"></i> INFO <br />
		Imate pitanje za nas u vezi kupovine servera ili zelite da nam ponudite poslovnu ponudu? <br />
		Popunite formular i kontaktirajte nas vec danas! <br />
		Izacicemo u susret u najkracem mogucem roku! 
	
		
	
</div>	
</div>
</div>

	</div>

<?php include("footer.php"); ?>
