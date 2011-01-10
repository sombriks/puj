$("#pugsatuais a").button().click(function() {
	// rotina de desmanche do href
	var uri = this.href.replace(/(.*)#(.*)/, "$2");
	var tpl = uri.replace(/(.*),(.*),(.*)/, "$1");
	var pugid = uri.replace(/(.*),(.*),(.*)/, "$2")//
	.replace(/(pugid=)(\d+)/, "$2");
	var pugnome = uri.replace(/(.*),(.*),(.*)/, "$3")//
	.replace(/(pugnome=)(.*)/, "$2");
	// do escopo grlobal, definido junto ao usuário.
	competicao = "<competition><id>" + pugid + //
	"</id><nome>" + pugnome + "</nome></competition>";
	$("#formulario").html("").xslTransform({
		urlxsl : tpl,
		xml : new XML(competicao)
	});
});
