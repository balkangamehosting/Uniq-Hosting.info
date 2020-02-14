<?php

	session_start();
	error_reporting(0);
	include('core/connect_db.php');
	
	
	ob_start();
	
?>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>ADMIN PANEL</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/datepicker3.css" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet">

<!--Icons-->
<script src="js/lumino.glyphs.js"></script>

<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->

</head>

<body>
<?php if($_SESSION['adminid'] = $_SESSION['adminid']) { ?>
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"><span>UNIQHOSTING</span>ADMINPANEL </a>
				<ul class="user-menu">
					<li class="dropdown pull-right">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg> <?php echo $_SESSION['username']; ?> <span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="podesavanje.php"><svg class="glyph stroked gear"><use xlink:href="#stroked-gear"></use></svg> Podesavanje </a></li>
							<li><a href="logout.php"><svg class="glyph stroked cancel"><use xlink:href="#stroked-cancel"></use></svg> Logout</a></li>
						</ul>
					</li>
				</ul>
			</div>
							
		</div><!-- /.container-fluid -->
	</nav>
	
		
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		<ul class="nav menu">
			<li class="active"><a href="index.php"><svg class="glyph stroked dashboard-dial"><use xlink:href="#stroked-dashboard-dial"></use></svg> Dashboard</a></li>

			<li class="parent ">
				<a href="#">
					<span data-toggle="collapse" href="#sub-item-2"><svg class="glyph stroked arrow down"><use xlink:href="#stroked-arrow-down"/></svg> Admini </span>
				</a>
				<ul class="children collapse" id="sub-item-2">
					<li>
						<a class="" href="admini.php?listaj=Sve">
							<svg class="glyph stroked chevron-right"><use xlink:href="#stroked-chevron-right"></use></svg> Lista admina
						</a>
					</li>
					<li>
						<a class="" href="admini.php?akcija=dodaj_admina">
							<svg class="glyph stroked chevron-right"><use xlink:href="#stroked-chevron-right"></use></svg> Dodaj novog admina
						</a>
					</li>
					<li>
						<a class="" href="admini.php?akcija=ukloni_admina">
							<svg class="glyph stroked chevron-right"><use xlink:href="#stroked-chevron-right"></use></svg> Ukloni admina
						</a>
					</li>
				</ul>
			</li>	
		
			<li><a href="dodaj_igru.php"><i class="glyphicon glyphicon-plus"></i> Dodaj novu igru </a></li>
			<li><a href="igre.php"><i class="glyphicon glyphicon-list"></i> Lista igara  </a></li>
			
			<li><a href="kontakti.php"><i class="glyphicon glyphicon-comment"></i> Kontakti  </a></li>
			<li><a href="narudzbine.php"><i class="glyphicon glyphicon-list"></i> Narudzbine  </a></li>
			<li><a href="statistike.php"><i class="glyphicon glyphicon-list"></i> Statistike & Podeasvanja sajta  </a></li>	
			
			<li role="presentation" class="divider"></li>
			
			
		</ul>
	</div><!--/.sidebar-->
		
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			

	<?php }?>
	<br />
	<div class="scontainer">
    <?php
     if(isset($_SESSION['ok'])){
	 $ok = $_SESSION['ok'];
	 echo "<div class='alert alert-success' role='alert'>
		  <span class='glyphicon glyphicon-exclamation-sign' aria-hidden='true'></span>
		  <span class='sr-only'>Greska:</span>
		  $ok
		</div>	";
	 unset($_SESSION['ok']);
     } 
     if(isset($_SESSION['error'])){
  	 $greske = $_SESSION['error'];
	 echo "<div class='alert alert-danger' role='alert'>
		  <span class='glyphicon glyphicon-exclamation-sign' aria-hidden='true'></span>
		  <span class='sr-only'>Greska:</span>
		  $greske
		</div>	";
	 unset($_SESSION['error']);
     } 
     ?>	  
	</div>
		
		

