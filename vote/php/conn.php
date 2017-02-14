<?php		
	error_reporting(E_ALL ^ E_DEPRECATED);
	$conn=new mysqli();
	$conn->connect('localhost','root','111');
	$conn->select_db('guestbook');
	$conn-> query("set names utf8");
?>