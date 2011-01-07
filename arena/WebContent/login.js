var dadoslogin = $("#t1 input");
var dadosregister = $("#t2 input");

var usuarioReg = dadosregister[0];
var emailReg = dadosregister[1];
var senhaReg = dadosregister[2];
var confirmaReg = dadosregister[3];

var usuario = dadoslogin[0];
var senha = dadoslogin[1];

$("#inicio").button();
$("button").button();
$("#t1 button").click(function() {
	//limpar label de status
	$("#t1 .status").removeClass("ui-state-highlight")//
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
			var erro = req.responseXML;
			erro = erro.getElementsByTagName("message");
			erro = erro[0].textContent;
			$("#t1 .status").addClass("ui-state-highlight")//
			.addClass("ui-corner-all").text(erro);
		}
	});
});
$("#t2 button").click(function() {
	//limpar label de status
	$("#t2 .status").removeClass("ui-state-highlight")//
	.removeClass("ui-corner-all").text("");
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
			alert("sucesso, um email de confirmação será enviado a você");
			window.location.href = "index.jsp";
		},
		error : function(req, errType, ex) {
			var erro = req.responseXML;
			erro = erro.getElementsByTagName("message");
			erro = erro[0].textContent;
			$("#t2 .status").addClass("ui-state-highlight")//
			.addClass("ui-corner-all").text(erro);
		}
	});
});
// criando as abas automagicamente
$("#centro").tabs();