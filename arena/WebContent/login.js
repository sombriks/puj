var dadoslogin = $("#t1 input");
var dadosregister = $("#t2 input");

var usuarioReg = dadosregister[0];
var emailReg = dadosregister[1];
var senhaReg = dadosregister[2];
var confirmaReg = dadosregister[3];

$("#t1 button").click(function() {
	// $.ajax({});
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