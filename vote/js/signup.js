$(function() {
	$(".submit").click(function(event) {
		var re = /^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/;
		var nM = $(".name").val();
		var eM = $(".email").val();
		var pW = $(".password").val();
		var repW = $(".repw").val();

		if (re.test(eM) && pW === repW && nM != null) {

			$.ajax({
				url: 'php/signup.php',
				type: 'POST',
				data: {
					username: nM,
					password: pW,
					email: eM
				},
				success: function() {
					alert("账户创建成功");
				}
			});

		} else {
			alert("账户创建失败，请检查用户名是否为空，或两次密码是否输入一致，或是否是有效的邮件地址");
			// alert($(".email").val());
		}
	});
});