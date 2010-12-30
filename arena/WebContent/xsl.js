/**
 * toy para carregarmos folhas de estilo a serem combinadas com documentos xml.
 * 
 * iremos prover possibilidade de aplicar o estilo em um xml a carregar ou
 * previamente carregado.
 * 
 * deve ser informada ainda a div/p/qualquer coisa de destino do resultado da
 * transformação.
 * 
 * todos os atributos são mandatórios
 * 
 * @param oparam
 *            array associativo de parâmetros, a saber:
 * 
 * @param oparam.xsl
 *            documento contendo o estilo xsl a aplicar. note que trata-se de
 *            uma referência ao estilo, e não a url do mesmo
 * 
 * @param oparam.xml
 *            documento com os dados. não a url do documento, mas a referência
 *            ao documento previamente carregado
 * 
 * @param oparam.dst
 *            elemento html que sirva de conteiner
 * 
 * @param oparam.hook
 *            callback se houver a necessidade de encadear algum evento após os
 *            acontecimentos assíncronos
 * 
 * @author leonardo/Usix Technology
 * @license Public Domain
 * 
 */
function XSL(oparam) {

	var self = this;
	this.oparam = oparam || {};

	// decindindo que abordagem tomar
	if (typeof ActiveXObject != "undefined") {
		this.aplicar = function() {
			if (!self.oparam.xml || !self.oparam.xsl)
				throw new Error("sem estilo ou sem xml para processar");
			self.oparam.dst.innerHTML = self.oparam.xml
					.transformNode(self.oparam.xsl);
			if (self.oparam.hook)
				self.oparam.hook();
		};
	} else {
		this.aplicar = function() {
			if (!self.oparam.xml || !self.oparam.xsl)
				throw new Error("sem estilo ou sem xml para processar");
			var processor = new XSLTProcessor();
			processor.importStylesheet(self.oparam.xsl);
			self.oparam.dst.appendChild(processor.transformToFragment(//
			self.oparam.xml, document));
			if (self.oparam.hook)
				self.oparam.hook();
		};
	}
}
/* na forma de plugin jQuery */
if (jQuery) {
	(function($) {
		$.fn.xslTransform = function(params) {
			var self = this;
			if (!params)
				throw new Error("você deve informar: {urlxml|xml, urlxsl|xsl}");
			if (!params.urlxml && !params.xml)
				throw new Error("informe urlxml ou xml");
			if (!params.urlxsl && !params.xsl)
				throw new Error("informe urlxsl ou xsl");
			/* model data */
			var docs = {
				xml : null,
				xsl : null
			};
			/* hook */
			function quandoPronto() {
				if (docs.xml && docs.xsl) {
					var x = new XSL({
						xml : docs.xml,
						xsl : docs.xsl,
						dst : self[0]
					});
					if (params.hook)
						x.oparam.hook = params.hook;
					x.aplicar();
				}
			}
			/* helper */
			function recupera(doc, key) {
				$.ajax({
					url : doc,
					dataType : 'xml',
					success : function(data) {
						docs[key] = data;
						quandoPronto();
					}
				});
			}
			/* combining the xml and xsl on data model */
			if (!params.xml)
				recupera(params.urlxml, "xml");
			else
				docs.xml = params.xml;
			if (!params.xsl)
				recupera(params.urlxsl, "xsl");
			else
				docs.xsl = params.xsl;
			/* already loaded, so let's rumble... */
			if (params.xml && params.xsl)
				quandoPronto();
			return this;
		};
	})(jQuery);
}
