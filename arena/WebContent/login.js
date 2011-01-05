var dadoslogin = $("#t1 input");
var dadosregister = $("#t2 input");

var usuarioReg = dadosregister[0];
var emailReg = dadosregister[1];
var senhaReg = dadosregister[2];
var confirmaReg = dadosregister[3];

var usuario = dadoslogin[0];
var senha = dadoslogin[1];

$("#t1 button").click(function() {
	//limpar label de status
	$("#t1 div").removeClass("ui-state-highlight")//
	.removeClass("ui-corner-all").text("");
	var usr = "<user>" + //
	"<nome>" + usuario.value + "</nome>" + //
	"<senha>" + senha.value + "</senha>" + //
	"</user>";
	$.ajax({
		data : usr,
		type : "POST",
		processData : false,
		contentType : "text/xml",
		url : "resource/user/login",
		success : function() {
			window.location.href = "index.jsp";
		},
		error : function(req, errType, ex) {
			$("#t1 div").addClass("ui-state-highlight")//
			.addClass("ui-corner-all").text("Login incorreto");
		}
	});
});
$("#t2 button").click(function() {
	// modo sujo e rápido de postar xml -- o rootelement é importante
	var usuario = "<user>" + //
	"<nome>" + usuarioReg.value + "</nome>" + //
	"<senha>" + senhaReg.value + "</senha>" + //
	"<email>" + emailReg.value + "</email>" + //
	"</user>";
	$.ajax({
		contentType : "text/xml",
		processData : false,
		url : "resource/user",
		data : usuario,
		type : "POST",
		success : function() {
			window.location.href = "index.jsp";
		},
		error : function(req, errType, ex) {
			$("#t1 div").addClass("ui-state-highlight")//
			.addClass("ui-corner-all").text("Login incorreto");
		}
	});
});
// criando as abas automagicamente
$("#abas").tabs();