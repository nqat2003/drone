<?php

class ItemModel
{
    public static function GetConfirmedItems(){
    	$con=mysqli_connect ("localhost", 'root', '','drone');
    	if (!$con) {
        	die('Not connected : ' . mysqli_connect_error());
    	}
    	$sql = "SELECT * FROM `items` AS iscomfirmed";
    	$data = mysqli_query($con,$sql);
    	$rows = array();
    	while($r = mysqli_fetch_assoc($data)) {
    		$rows[] = $r;
    	}

    	$indexed = array_map('array_values', $rows);
    //  $array = array_filter($indexed);
    	echo json_encode($indexed);
    }
}
