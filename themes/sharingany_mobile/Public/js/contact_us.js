$(document).ready(function($) {
	$(".add-tab li").click(function() {
		$(".add-tab li").removeClass('active');
		$(this).addClass('active');
	});
	$("#fuzhou").click(function() {
		$(".map .imgbox").hide();
		$(".map .fuzhou").show();
	});
	$("#chongqing").click(function() {
		$(".map .imgbox").hide();
		$(".map .chongqing").show();
	});
});