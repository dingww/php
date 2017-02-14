<?php
	session_start();
	header("Content-type:text/html;charset=utf8");
	require('conn.php');
	
	$username=$_POST['username'];
	$password=$_POST['password'];
	
	$sql="select * from register where username='$username' and password='$password'";
	$result=$conn->query($sql);
	if ($result->num_rows==0) {
		echo "<p style='padding:20px;text-align:center;line-height:30px;'>用户名或者密码错误<br /><a href='index.html'>返回登录</a></p>";
	}else{
		$row=$result->fetch_assoc();
		$_SESSION["username"]=$row["username"];
		$_SESSION["adminlogin"]="ok";
		loginok($username);
	}
	$result->close();	
	
	function loginok($username){
		echo "<p style='text-align:center;font-size:18px;color:#faa;padding:20px 0 5px 0'>欢迎您，".$_SESSION["username"]."</p><p style='text-align:center;padding:0 0 20px 0;'><a style='color:#666;background:#fff;padding:0;' href='php/vote.php?username=$username'>进入投票系统</a></p>";
	}	
	
?>