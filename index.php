<?php include("header.php"); ?>
<div class="container">
<div class="row">
<div class="col-md-12">
	<div class="line">
	Zdravo, dobrodosli na zvanicni sajt Uniq Hostinga! <br />
	Nemate server? Narucite ga vec danas i uverite se u nas kvalitet!		
	</div>
</div>
</div>
<br />
<div class="row">

<div class="col-md-7">
	<div class="omot">

 <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">

    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="assets/img/slider/cs.png" alt="Los Angeles" style="width:100%;">
      </div>

      <div class="item">
        <img src="assets/img/slider/cs.png" alt="Chicago" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="assets/img/slider/cs.png" alt="New york" style="width:100%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <img class="img-responsive" src="assets/img/slider/levo.png" style="margin-top:100%; margin-left:10px; width:30px;"/>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <img class="img-responsive" src="assets/img/slider/desno.png" style="margin-top:100%; margin-left:30px; width:25px;"/>
      <span class="sr-only">Next</span>
    </a>
  </div>	
	
	
</div>	
</div>
<div class="clean"></div>
<div class="col-md-5">
	<div class="omot">
		POGODNOSTI
		<br />
		<div class="pogodnost">
			<span class="pog_title">
				Podrska 24/7 <br />
			</span>
				Nasa podrska je tu za vas 24 casa dnevno da vam pomogne u resavanju 
				eventualnih problema sa serverima!
		</div>
		<div class="pogodnost">
			<span class="pog_title">
				Forum <br />
			</span>
				Imate neko pitanje za nas ili vas zanima druzenje sa ostalim korisnicima 
				Uniq Hostinga? Registrujte se na nas forum!
		</div>	
		<div class="pogodnost">
			<span class="pog_title">
				Povrat novca <br />
			</span>
				Ukoliko vam se korisvenje nasih usluga ne dopadne u prvih 7 dana od 
				uplate iste nudimo povrat novca u roku 24h!
		</div>			
	</div>
</div>
</div>
<br />
<div class="row">
	<div class="col-md-12">
		<img class="img-responsive" src="assets/img/akcija.png" />
	</div>
</div>
</div>
<br />
<div class="gamesCont">
	<div class="container">
	<div class="row">
	<?php 
		
		$sql = "SELECT * FROM igre ORDER by id DESC";
		$query = mysqli_query($con,$sql);
		while($game = mysqli_fetch_array($query))
		{
			$naziv 			= $game['ime'];
			$igra 			= $game['igra'];
			if($game['premium'] == "1") {
				$lokacija 		= $game['lokacija']."&".$game['lokacija_premium'];
			}
			else if($game['premium'] == "0") {
			$lokacija 		= $game['lokacija'];
			}
			$cenaSlot 		= $game['cena_slot'];
			$ping 			= $game['ping_od']."-".$game['ping_do'];
	?>
			<div class="col-md-3">
				<div class="gameBox">
					<img class="img-responsive" src="assets/img/igre/<?php echo $igra; ?>.png" />
					<br />
					<span class="game_title"><?php echo $naziv; ?></span><br />
					Lokacija: <?php echo $lokacija; ?> <br />
					Cena po slotu: <?php echo $cenaSlot; ?> rsd<br />
					Ping: <?php echo $ping; ?><br /><br />
					<div class="pull-left"> 
						<a href="GameInfo.php?id=<?php echo $game['id']; ?>" class="btninfo"><img src="assets/img/info.png"/> INFO</a>
					</div>
					<div class="pull-right"> 
						<a href="naruci.php?id=<?php echo $game['id']; ?>" class="btnnaruci"><img src="assets/img/naruci.png"/> NARUCI SERVER</a>
					</div>	
					<br /><br />
				</div>
			</div>	
		<?php }; ?>

			
		</div>
	</div>
</div>
<br />
<div class="container">
<div class="stats">
	<div class="row">
	
	<div class="col-md-12">
		
		<div class="col-md-6">
		<strong>STATISTIKE UNIQ HOSTINGA</strong><br />
		<div class="statsBox">
			<span class="tekst">
				Nasi serveri se hostuju na <b><?php echo $stats['masine']; ?></b> masine!
			</span>
		</div>
		<div class="statsBox">
			<span class="tekst">
				Imamo <b><?php echo $stats['klijenti']; ?></b> klijenta koji zadovoljno koriste nase usluge!
			</span>
		</div>
		<div class="statsBox">
			<span class="tekst">
				Broj registrovanih servera u Uniq Hostingu je <b><?php echo $stats['serveri']; ?></b>!
			</span>
		</div>		
		</div>
		<div class="col-md-6">
			<strong>ONO STO BI TREBALO DA ZNATE</strong><br />
			<span style="font-size:11px;">
				Uniq Hosting je nastao 2017 godine i sa ponosom se mozemo pohvaliti 
				dosadasnjim uspehom!
				Uniq Hosting se bavi hostovanjem gaming servera. Trenutno u ponudi od 
				igara imamo Counter Strike 1.6, SanAndreas MultiPlayer i TeamSpeak,a 
				u planu imamo da prosirimo trenutnu ponudu sa novim igrama.
				Nasi serveri se hostuju na lokaciji u Italiji. 
				Masine su pod punom protekcijom tako da nudimo popunu sigurnost vasih 
				servera. Ping se krece veoma nisko (20-50ms/s) sto pokazuje sam kvalitet
				servera koje vam nudimo. 
				Takodje, Uniq Hosting cesto organizuje akcije kojima mozete osvojiti besplatne
				servere svakog meseca! Posetite nas forum i budite u toku!
				Narucite vas server i uverite se u nas kvalitet vec danas!		
			</span>				
		</div>
		</div>
	</div>
		
	</div>
	</div>
</div>
<?php include("footer.php"); ?>
