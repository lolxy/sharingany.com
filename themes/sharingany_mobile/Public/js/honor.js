$(document).ready(function($) {
	$(".honor-tab li").click(function() {
		$(".honor-tab li").removeClass('active');
		$(this).addClass('active');
	});
	$("#tab-1").click(function() {
		$(".honor-info").hide();
		$("#content-1").show();
	});
	$("#tab-2").click(function() {
		$(".honor-info").hide();
		$("#content-2").show();
	});
});