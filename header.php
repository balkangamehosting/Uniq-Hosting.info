<?php include("konektor.php"); 
	$datum = date("d.m.Y");
	$ip = $_SERVER['REMOTE_ADDR'];
	$provera = mysqli_num_rows(mysqli_query($con,"SELECT id FROM posete WHERE ip='$ip' AND datum='$datum'"));
	if($provera < 1) {
		$dodajPregled = mysqli_query($con,"INSERT into posete(`ip`,`datum`) VALUES('$ip','$datum')");
	}

?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<title><?php echo $site_title; ?></title>
		<link rel="icon" href="assets/css/favicon-check.ico" type="image/x-icon" />
		<meta name="generator" content="Bootply" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link href="assets/css/bootstrap.min.css" rel="stylesheet">
		<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
		<!--[if lt IE 9]>
			<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		<link href="assets/css/styles.css" rel="stylesheet">
	</head>
	<body>
<?php
     if(isset($_SESSION['ok'])){
	 $ok = $_SESSION['ok'];
	 echo "<a href='' id='success'>
		  
		</a>	";
	 unset($_SESSION['ok']);
     } 
	 ?>
 
	 
	 <?php 
     if(isset($_SESSION['error'])){
  	 $greske = $_SESSION['error'];
	 echo "<a href='' id='error'>
		  
		</a>	";
	 unset($_SESSION['error']);
     } 
     ?>	  
	<div class="header-line"></div>
	<div class="header"></div>
	<center>
		<a href="index.php"><img class="img-responsive logo" src="assets/img/logo.png" /></a>
	</center>
<br /> <br />	
	<div class="container">
	<div class='visible-sm-block visible-md-block visible-lg-block breadcrumbs' style="margin-top:5px; margin-left:-190px;">
  <div class='inner'>
    <ul class='cf'>
      <li>
        <a href="index.php">
          <span><i class="fa fa-home"></i></span>
          <span>POCETNA</span>
		  <div class="strela"></div>
        </a>
      </li>
      <li>
<div class="dropdown">
  <a type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    <span><i class="fa fa-shopping-cart"></i></span>
	NARUCI SERVER
	<div class="strela"></div>
  </a>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
	<?php 
		$igreSql = "SELECT * FROM igre ORDER by id DESC";
		$kveriIgre = mysqli_query($con,$igreSql);
		while($igre = mysqli_fetch_array($kveriIgre)){
	?>
    <a class="dropdown-item" href="naruci.php?id=<?php echo $igre['id']; ?>"><img style="width:10px;" src="assets/img/igre/ikonice/<?php echo $igre['igra']; ?>.png" /> <?php echo $igre['ime']; ?></a>
	<?php }; ?>
  </div>
  </div>
      </li>
      <li>
        <a href="#">
          <span><i class="fa fa-comments"></i></span>
          <span>FORUM</span>
		  <div class="strela"></div>
        </a>
      </li>
      <li>
        <a href="/gpanel">
          <span><i class="fa fa-list"></i></span>
          <span>GAMEPANEL</span>
		  <div class="strela"></div>
        </a>
      </li>
      <li>
        <a href="kontakt.php">
          <span><i class="fa fa-comment"></i></span>
          <span>KONTAKT</span>
		  <div class="strela"></div>
        </a>
      </li>
    </ul>	
  </div>
</div>



	<div class='visible-xs-block breadcrumbs2' style="margin-top:45px;	margin-left:-70px;">
  <div class='inner'>
    <ul class='cf' style="margin-left:20px;">
      <li>
        <a href="index.php">
          <span><i class="fa fa-home"></i></span>
          <span>POCETNA</span>
		  <div class="strela1"></div>
        </a>
      </li>
      <li>
<div class="dropdown">
  <a type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    <span><i class="fa fa-shopping-cart"></i></span>
	NARUCI SERVER
	<div class="strela1"></div>
  </a>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
	<?php 
		$igreSql = "SELECT * FROM igre ORDER by id DESC";
		$kveriIgre = mysqli_query($con,$igreSql);
		while($igre = mysqli_fetch_array($kveriIgre)){
	?>
    <a class="dropdown-item" href="naruci.php?id=<?php echo $igre['id']; ?>"><img style="width:10px;" src="assets/img/igre/ikonice/<?php echo $igre['igra']; ?>.png" /> <?php echo $igre['ime']; ?></a>
	<?php }; ?>
  </div>
  </div>
      </li>
      <li>
        <a href="#">
          <span><i class="fa fa-comments"></i></span>
          <span>FORUM</span>
		  <div class="strela1"></div>
        </a>
      </li>
      <li>
        <a href="/gpanel">
          <span><i class="fa fa-list"></i></span>
          <span>GAMEPANEL</span>
		  <div class="strela1"></div>
        </a>
      </li>
      <li>
        <a href="kontakt.php">
          <span><i class="fa fa-comment"></i></span>
          <span>KONTAKT</span>
		  <div class="strela1"></div>
        </a>
      </li>
    </ul>	
  </div>
</div>

	
</div>
	