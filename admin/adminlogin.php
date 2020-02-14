<?php

include("core/connect_db.php");
session_start();



if (isset($_POST['loguj'])) {
	$username = htmlspecialchars(mysqli_real_escape_string($con,$_POST['username']));
	$password = htmlspecialchars(mysqli_real_escape_string($con,$_POST['password']));
	$cpass = md5($password);
	$kveri = mysqli_query($con,"SELECT * FROM admin WHERE username='$username' AND password='$cpass'");
	if (mysqli_num_rows($kveri)) {
		$user = mysqli_fetch_array($kveri);
		$_SESSION['adminid'] = $user['adminid'];
		$_SESSION['username'] = $user['username'];
		$mesec = 24*60*60*31; // mesec dana
		
		$sesija = md5($user['username'] . $cpass);
		
		setcookie("adminid", $_SESSION['adminid'], time()+ $mesec);
		setcookie("username", $_SESSION['username'], time()+ $mesec);
		setcookie("sesija", $sesija, time() + $mesec);
		$_SESSION['ok'] = "Dobrodosli nazad, $_SESSION[username]";
		header("Location:index.php");
		die();
	} else {
	    $_SESSION['error'] = "Doslo je do greske";
		header("location:login.php");
		die();
	}
}
		
?>
