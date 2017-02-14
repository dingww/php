<?php
	require('connr.php');
	$username=$_POST["username"];
	$password=$_POST["password"];
	$email=$_POST["email"];
	$sql="insert into register(username,password,email) values('$username','$password','$email')";

	echo $sql;
	mysql_query($sql) or die('执行失败');
	// header("index.html");
?>