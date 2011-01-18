(function() {
	// referências iniciais
	var papel = $("#papel");
	var competicao = $("#competicao");
	var selComp = $("#selComp");
	var newsubs = $("#novaeq input");
	
	//dado de modelo 
	var subs = {
		id : 0,
		nome : ""
	};
	
	// combo de papéis
	papel.xslTransform({
		urlxml : "resource/role",
		urlxsl : "templates/roles.xsl"
	});
	competicao.xslTransform({
		urlxml : "resource/competition",
		urlxsl : "templates/listapug2.xsl"
	});
	// mostrar o usuário (conforto psicológico)
	$("#lblusu").html($(usuario).find("nome").text());

	function updateSubscriptions(){
		selComp.html("").xslTransform({
			urlxml : "resource/subscription?compid="+competicao[0].value,
			urlxsl : "templates/listasubscricao.xsl",
			hook:function(){
				
			}
		});
	}
	
	//dialog de criação de competição
	$("#novaeq").dialog({modal:true,autoOpen:false});
	$("#novaeq button").button().click(function(){
		var competition = "<competition><id>"+competicao[0].value+"</id></competition>";
		var subscription = "<subscription><id>"+subs.id+"</id><nome>"+newsubs[0].value+"</nome>"+competition+"</subscription>";
		$.ajax({
			type : "POST",
			processData : false,
			data : subscription,
			contentType : "text/xml",
			url : "resource/subscription",
			success : function() {
				alert("Sua requisição de criação de time foi enviada com sucesso!");
				updateSubscriptions();
			}
		});
		$("#novaeq").dialog("close");
	});
	
	//eventos
	competicao.change(function(){
		updateSubscriptions();
	});
	selComp.change(function(){
		if(selComp[0].value=="_novo_"){
			$("#novaeq").dialog("open");
		}else
			subs.id=selComp[0].value;
	});
	$("#form button").button().click(function() {
		$("#form .status").removeClass("ui-state-highlight")//
		.removeClass("ui-corner-all").text("");
		var user = usuario;//oriundo do jsp
		var role = "<role><id>"+papel[0].value+"</id></role>";
		var competition = "<competition><id>"+competicao[0].value+"</id></competition>";
		var subscription = "<subscription><id>"+subs.id+"</id><nome>"+subs.nome+"</nome>"+competition+"</subscription>";
		var membro = "<member>"+user+role+subscription+"</member>";
		$.ajax({
			type : "POST",
			processData : false,
			data : membro,
			contentType : "text/xml",
			url : "resource/member",
			success : function() {
				alert("Sua requisição de inscrição foi enviada com sucesso!");
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