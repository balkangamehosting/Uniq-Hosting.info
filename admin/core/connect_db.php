<?php
error_reporting(0);

// KONEKCIJA NA MYSQL

$con = mysqli_connect(
"localhost", // HOST
"root", // DATABASE USERNAME
"btrkobic123", // PASSWORD
"Uniq-Hosting"); // DATABASE
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }

  
	$ip = $_SERVER['REMOTE_ADDR'];	

  
function time_ago($timestamp){
	$difference = time() - $timestamp;
	if($difference < 60){
		return $difference." sekundi";
	} else {
		$difference = round($difference / 60);
		if($difference < 60){
			return $difference." minuta";
		} else {
			$difference = round($difference / 60);
			if($difference < 24){
				return $difference." sati";
			} else {
				$difference = round($difference / 24);
				if($difference < 7){
					return $difference." dana";
				} else {
					$difference = round($difference / 7);
					return $difference." nedelja";
				}
			}
		}
	}
}

if($_SESSION['adminid'] == $_SESSION['adminid']) {
$user = mysqli_fetch_array(mysqli_query($con,"SELECT * FROM admin WHERE adminid='$_SESSION[adminid]'"));
}