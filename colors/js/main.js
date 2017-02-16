$(function() {
	$(".colors li").mouseover(function(event) {
		var _this = $(this);
		var bgc = getBackgroundColor(_this, 'background-color');
		$(this).addClass('hover');
		$(this).html(bgc);
	});
	$(".colors li").mouseout(function(event) {
		$(this).removeClass('hover');
		$(this).html("");
	});

	// 点赞
	var flag0 = 0;
	$(".like img").click(function(event) {
		var num = $(this).parent(".icon").siblings('.count').text();
		var src = $(this).attr('src').split("/")[1];
		if (flag0 == 0) {
			if (src === "loved.png") {
				flag0 = 1;
				like($(this), flag0);
				num = count(num, flag0);
				$(this).parent(".icon").siblings('.count').html(num);
			} else {
				flag0 = 0;
				like($(this), flag0);
				num = count(num, flag0);
				$(this).parent(".icon").siblings('.count').html(num);
			}
		} else {
			if (src === "love.png") {
				flag0 = 0;
				like($(this), flag0);
				num = count(num, flag0);
				$(this).parent(".icon").siblings('.count').html(num);
			} else {
				flag0 = 1;
				like($(this), flag0);
				num = count(num, flag0);
				$(this).parent(".icon").siblings('.count').html(num);
			}
		}
		// console.log(flag0);

	});

	function like(obj, flag) {
		if (flag == 0) {
			obj.attr('src', 'images/loved.png');
		} else {
			obj.attr('src', 'images/love.png');
		}
	}

	function count(count0, flag) {
		if (flag == 0) {
			count0++;
		} else {
			count0--;
		}
		return count0;
	}

	function getBackgroundColor(obj, property) {
		var rgb = obj.css(property);
		if (rgb >= 0) {
			return rgb;
		} else {
			rgb = rgb.match(/^rgb\((\d+),\s*(\d+),\s*(\d+)\)$/);
			rgb = "#" + hex(rgb[1]) + hex(rgb[2]) + hex(rgb[3]);
			return rgb;
		}
	}

	function hex(x) {
		return ("0" + parseInt(x).toString(16)).slice(-2);
	}
});