<?php

error_reporting(0);
session_start();
// KONEKCIJA NA MYSQLI

$con = mysqli_connect(
"localhost", // HOST
"root", // DATABASE USERNAME
"btrkobic123", // PASSWORD
"Uniq-Hosting"); // DATABASE
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }

$conf = mysqli_fetch_array(mysqli_query($con,"SELECT * FROM podesavanja"));
$site_title = $conf['title'];

$stats = mysqli_fetch_array(mysqli_query($con,"SELECT * FROM statistike"));





?>