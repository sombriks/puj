(function() {
	// referências iniciais
	var papel = $("#papel");

	// mostrar o próprio usuário (conforto psicológico)
	$("#lblusu").html($(usuario).find("nome").text());
	// combo de papéis
	papel.xslTransform({
		urlxml : "resource/role",
		urlxsl : "templates/roles.xsl"
	});
	$("#form button").button().click(function() {
		$("#form .status").removeClass("ui-state-highlight")//
		.removeClass("ui-corner-all").text("");
		var subscricao = "<subscription>" + usuario + //
		"<role><id>" + papel[0].value + "</id></role></subscription>";
		$.ajax({
			type : "POST",
			processData : false,
			data : subscricao,
			contentType : "text/xml",
			url : "resource/subscripe",
			success : function() {
				alert("Sucesso!");
				window.location.href = "puj.jsp";//XXX não necessário
			},
			error : function(req, errType, ex) {
				var erro = req.responseXML;
				erro = erro.getElementsByTagName("message");
				erro = erro[0].textContent;
				$("#form .status").addClass("ui-state-highlight")//
				.addClass("ui-corner-all").text(erro);
			}
		});
	});
})();