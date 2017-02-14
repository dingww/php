$(function() {
	$(".login").click(function(event) {
		$.post("php/login.php", {
			username: $(".username").val(),
			password: $(".password").val()
		}, function(data) {
			$('#login').html(data);
		})
	});


})