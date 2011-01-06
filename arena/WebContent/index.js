/*
 * script da página inicial da aplicação
 */

/**
 * utilitário pra desmontar a hash do link.
 */
function aplicaHashHref(href) {
	var uri = href.replace(/(.*)#(.*)/, "$2");
	if (uri != href) {
		var urixml = uri.replace(/\[(.*),(.*)\]/, "$1");
		var urixsl = uri.replace(/\[(.*),(.*)\]/, "$2");
		if (urixml != urixsl) {
			$("#centro").html("").xslTransform({
				urlxml : urixml,
				urlxsl : urixsl,
				hook : function() {
				}
			}).css("width:100%,left:0px;height:auto");
		}
		return;
	}
	// fallback
	$("#lado a:first").click();
}

/**
 * registrando eventos
 */
$("#lado a").each(function() {
	$(this).button().click(function() {
		aplicaHashHref(this.href);
	});
});
// estado inicial
aplicaHashHref(window.location.href);