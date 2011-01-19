/**
 * helper para transformar uma string em xml. 100% copiado de:
 * http://www.w3schools.com/xml/xml_parser.asp
 *
 * @param txt string do xml. 
 */
function XML(txt) {
	var xmlDoc;
	if (window.DOMParser) { // Normal browsers
		var parser = new DOMParser();
		xmlDoc = parser.parseFromString(txt, "text/xml");
	} else {// Internet Explorer
		xmlDoc = new ActiveXObject("Microsoft.XMLDOM");
		xmlDoc.async = "false";
		xmlDoc.loadXML(txt);
	}
	return xmlDoc;
}