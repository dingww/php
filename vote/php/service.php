<?php
	session_start();
	ini_set("display_errors", 0);
	error_reporting(E_ALL ^ E_NOTICE);
	error_reporting(E_ALL ^ E_WARNING);
	header("Content-type:text/html;charset=utf8");	
	require('conn.php');
	$id=$_GET["id"];
	$sql="Select * from news where id=$id";
	if($_SESSION["id".$id<>""]){
		$result=$conn->query($sql);
		if ($result->num_rows==0) {
			echo "NoData";
		}else{
			$row=$result->fetch_assoc();
			echo 'yt|'.$row["dig"];
		}
	}else{
		$result=$conn->query($sql);
		if ($result->num_rows==0) {
			echo "NoData";
		}else{
			$row=$result->fetch_assoc();
			$dig=$row["dig"];
			$sql="Update news Set dig=$dig + 1 where id=$id";
			$conn->query($sql);
			$_SESSION["id".$id]=$id;
			echo ++$dig;

		}
	}
?>