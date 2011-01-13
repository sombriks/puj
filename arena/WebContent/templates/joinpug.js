(function() {
	// referências iniciais
	var papel = $("#papel");
	var competicao = $("#competicao");
	var nomeSubs = $("#nomeComp")[0];
	
	// mostrar o usuário (conforto psicológico)
	$("#lblusu").html($(usuario).find("nome").text());
	// combo de papéis
	papel.xslTransform({
		urlxml : "resource/role",
		urlxsl : "templates/roles.xsl"
	});
	competicao.xslTransform({
		urlxml : "resource/competition",
		urlxsl : "templates/listapug2.xsl"
	});
	$("#form button").button().click(function() {
		$("#form .status").removeClass("ui-state-highlight")//
		.removeClass("ui-corner-all").text("");
		var user = usuario;//oriundo do jsp
		var role = "<role><id>"+papel[0].value+"</id></role>";
		var competition = "<competition><id>"+competicao[0].value+"</id></competition>";
		var subscription = "<subscription><nome>"+nomeSubs.value+"</nome>"+competition+"</subscription>";
		var membro = "<member>"+user+role+subscription+"</member>";
		$.ajax({
			type : "POST",
			processData : false,
			data : membro,
			contentType : "text/xml",
			url : "resource/member",
			success : function() {
				alert("Sucesso!");
				$("#lado a:first").click();
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