$("#pugsatuais a").button().click(function() {
	var uri = this.href.replace(/(.*)#(.*)/, "$2");
	var tpl = uri.replace(/(.*),(.*)/, "$1");
	var pugid = uri.replace(/(.*),(.*)/, "$2").replace(/(compid=)(\d+)/, "$2");
	alert("http://www.w3schools.com/xml/xml_parser.asp");
	$("#formulario").xslTransform({
		urlxsl : tpl,
		xml:"<competition><id>"+pugid+"</id></competition>",
		hook:function(){
			alert("haaaa");
		}
	});
});
