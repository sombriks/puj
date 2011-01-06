$("#lado a").each(function() {
	$(this).button().click(function() {
		var uri = this.href;
		uri = uri.replace(/(.*)#(.*)/, "$2");
		var urixml = uri.replace(/\[(.*),(.*)\]/, "$1");
		var urixsl = uri.replace(/\[(.*),(.*)\]/, "$2");
		$("#centro").html("").xslTransform({
			urlxml : urixml,
			urlxsl : urixsl,
			hook : function() {
			}
		}).css("width:100%,left:0px;height:auto");
	});
});
$("#lado a:first").click();