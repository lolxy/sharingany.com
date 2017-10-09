$(document).ready(function($) {
	$(".code").click(function() {
		$(".code-click").addClass('active');
		$(".code-click img").addClass('active');
	});
	$(".code-click").click(function() {
		$(".code-click").removeClass('active');
		$(".code-click img").removeClass('active');
	});
	$("#go-top").click(function() {
	  $("html,body").animate({scrollTop:0}, 500);
	});
});