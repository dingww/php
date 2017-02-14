<?php
	$connr=mysql_connect("localhost","root","111");
	mysql_query("set names 'gb2312");
	mysql_select_db("guestbook",$connr);
?>