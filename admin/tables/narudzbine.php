<?php 

	include("../core/connect_db.php");

    $sql = "SELECT * FROM serveri";
    $result = mysqli_query($con, $sql) or die("Greska pri selekciji " . mysqli_error($con));
	
	
    $serveri = array();
    while($row =mysqli_fetch_assoc($result))
    {
        $serveri[] = $row;
		
    }	
	
	
	echo json_encode($serveri);
	
	
	//write to json file
    $fp = fopen('data1.json', 'w');
    fwrite($fp, json_encode($serveri));
    fclose($fp);
	
?>