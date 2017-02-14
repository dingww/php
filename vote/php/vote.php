<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript">
	function Dig(id,count){
		var content=document.getElementById('dig'+id);
		var dig=document.getElementById(id);
		$.ajax({
			type:"get",
			url:"service.php",
			data:{id:id,n:Math.random()},
			beforeSend:function(){
				$(dig).html('<img src="../images/Loading.gif">');
			},
			success:function(data){
				r=data.split("|");
				console.log(r[0].indexOf("yt"));
				if (r[0].indexOf("yt")!=-1) {
					$(content).html("您已经投过票了！");
					$(dig).html(r[1]);
				}else if(data=="NoData"){
					alert("参数错误！");
				}else{
					$(dig).html(data);
					var item='<img src="../images/heart0.png" />'
					$(content).html(item);
					
				}
			}
		});
	}
	function rightinfo(id){
		var content=document.getElementById("dig"+id);
		$(content).html('<a href="shown.php?id='+id +'">查看</a>');
	}	
	function submit(){
		alert("投票成功！");
	}
</script>

<?php	
	header("Content-Type: text/html;charset=utf8"); 
	require('conn.php');
	$conn->query("set names utf8");	
	$result = $conn->query("select * from news order by id asc");

	$name=$_GET['username'];	
	?>	
	<div style="width:760px;height:auto;background: #feeae0;overflow:auto;margin:0 auto;position:relative; top:0;">
		<div class="nav" style="height:30px;background:#ffefe0;">
			<p style="padding:0 0 0 70px;margin:0;line-height:30px;font-size:13px;color:#666;">Hi,<?php echo $name;?>！欢迎登录投票系统！ <a style="color:#f99;" href="../index.html">退出</a></p>
		</div>
		<h2 style="width:580px;color:#666;margin:20px auto;text-align:center">你最喜欢的电影</h2>	

		<?php
		if($result->num_rows > 0){
			while($row=$result->fetch_assoc()){?>	

		<div class="news" style="width:580px;padding:10px 20px;border:1px solid #ffcccc;margin:5px auto;overflow:auto;background:#fff;">
			<div class="dig" style="width: 80px;float:right;text-align:center;">
				<h4 style="color:#666;" id="<?=$row["id"]?>"><?=$row["dig"]?></h4>
				<p id="dig<?=$row["id"]?>">
					<a href="javascript:Dig(<?=$row["id"]?>,3);" style="color:green;"><img src="../images/heart1.png"/></a>
				</p>
			</div>
			<div class="content" style="width:450px;float:left;">
				<h3><span style="color:#f99;"><?=$row["id"]?>、</span><a style="color:#ffaaaa;text-decoration:none;" href="<?=$row["url"]?>"  target="_blank" title="点击了解详情"><?=$row["title"]?></a></h3>
				<div>导演：<?=$row["director"]?><br/> 主演：<?=$row["actors"]?><br/> <?=substr($row["addtime"],0,10)?> / <?=$row["country"]?> / <?=$row["type"]?><br/> 评分：<?=$row["scores"]?> &nbsp; <?=$row["comment"]?>人评价</div>
			</div>
		</div>	
		
	<?php }
	}?>
		<div style="text-align:center"><input style="background:#fff;border:1px solid #ccc;padding:2px;" type="button" name="button" value="提交" onclick="javaScript:submit()"></div>
	</div>

