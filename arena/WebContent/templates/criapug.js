(function(){
	
	var campos = $("#x1 input");
	
	$("#form").tabs().find("button").button();
	
	$("#x1 .salvar").click(function() {
		$("#x1 .status").removeClass("ui-state-highlight")//
		.removeClass("ui-corner-all").text("");
		var competition = "<competition><nome>"//
				+ campos[0].value + "</nome><ativa>" //
				+ campos[1].checked + "</ativa></competition>";//
		$.ajax({
			type : "POST",
			data : competition,
			processData : false,
			contentType : "text/xml",
			url : "resource/competition",
			success : function() {
				alert("Sucesso!");
				window.location.href = "soneca.jsp";
			},
			error : function(req, errType, ex) {
				var erro = req.responseXML;
				erro = erro.getElementsByTagName("message");
				erro = erro[0].textContent;
				$("#x1 .status").addClass("ui-state-highlight")//
				.addClass("ui-corner-all").text(erro);
			}
		});
	});
	
	$("#x1 .limpar").click(function() {
		campos[0].value = "";
		campos[1].checked = false;
	});
})();