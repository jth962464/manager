$(function() {
	//自适应移动端比例
	function rem(size) {
		var clientW = document.documentElement.clientWidth;
		var bili = clientW / size;
		var fontSize = bili * 100;
		document.getElementsByTagName("html")[0].style.fontSize = fontSize + "px"
	}
	rem(750);
	/*********************************/
	$('.close').click(function() {
		$('.mask').hide();
		$('.xieyiBox').hide();
		$('.hyshBox').hide();
	});

//预加载
})