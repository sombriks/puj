(function() {
	// referências iniciais
	var competicao = $("#competicao")[0];
	var papel = $("#papel")[0];

	// combo de papéis
	$("#papel").xslTransform({
		urlxml : "resource/role",
		urlxsl : "templates/roles.xsl"
	});
	$("#form button").button().click(function() {
		var subscricao = "<subscription>" + usuario + //
		"<role><id>" + papel.value + "</id></role>" + //
		"<competition><id>" + competicao.value + "</id></competition></subscription>";
		alert(subscricao);
	});
})();