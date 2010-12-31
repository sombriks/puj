$(document).ready(function() {
	$("#showLoading").ajaxSend(function() {
		$(this).show();
	});
	$("#showLoading").ajaxStop(function() {
		var loading = $(this);
		setTimeout(function(){
			loading.hide();
		}, 500);
	});
});