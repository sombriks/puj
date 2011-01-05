var dadoslogin = $("#t1 input");
var dadosregister = $("#t2 input");

var usuarioReg = dadosregister[0];
var emailReg = dadosregister[1];
var senhaReg = dadosregister[2];
var confirmaReg = dadosregister[3];

var usuario = dadoslogin[0];
var senha = dadoslogin[1];

$("#t1 button").click(function() {
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
		callback : function() {
			alert("haaa")
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
		type : "POST"
	});
});
// criando as abas automagicamente
$("#abas").tabs();