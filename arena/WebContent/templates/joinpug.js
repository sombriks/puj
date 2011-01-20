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

	function updateteams(){
		selComp.html("").xslTransform({
			urlxml : "resource/team?compid="+competicao[0].value,
			urlxsl : "templates/listateam.xsl",
			hook:function(){
				
			}
		});
	}
	
	//dialog de criação de competição
	$("#novaeq").dialog({modal:true,autoOpen:false});
	$("#novaeq button").button().click(function(){
		var competition = "<competition><id>"+competicao[0].value+"</id></competition>";
		var team = "<team><id>"+subs.id+"</id><nome>"+newsubs[0].value+"</nome>"+competition+"</team>";
		$.ajax({
			type : "POST",
			processData : false,
			data : team,
			contentType : "text/xml",
			url : "resource/team",
			success : function() {
				alert("Sua requisição de criação de time foi enviada com sucesso!");
				updateteams();
			}
		});
		$("#novaeq").dialog("close");
	});
	
	//eventos
	competicao.change(function(){
		updateteams();
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
		var team = "<team><id>"+subs.id+"</id><nome>"+subs.nome+"</nome>"+competition+"</team>";
		var membro = "<member>"+user+role+team+"</member>";
		$.ajax({
			type : "POST",
			processData : false,
			data : membro,
			contentType : "text/xml",
			url : "resource/member",
			success : function() {
				alert("Sua requisição de inscrição foi enviada com sucesso!");
				$("#form select").each(function(){
					this.selectedIndex=0;
				});
				$("#form input").each(function(){
					this.value="";
				});
				subs.id=0;
				subs.nome="";
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