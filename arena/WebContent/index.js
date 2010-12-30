/**
 * código aplicativo da tela inicial
 */
(function() {
	$("#topo").xslTransform({
		urlxml : "staticdata/menu-headers.xml",
		urlxsl : "templates/menu-headers.xsl",
		hook : function() {
			// registrando eventos do novo trecho de documento
			$(".portlet .portlet-header").click(function() {
				var self = $(this).parent()[0];
				$(".portlet").each(function() {
					if (this == self) {
						$(this).addClass("destaque").animate({
							width : "70%",
							height : "90%"
						}).find(".portlet-content").xslTransform({
							urlxsl : "templates/content.xsl",
							urlxml : $(this).find("a").attr("href")
						}).css({
							visibility : "visible"
						});
					} else {
						$(this).removeClass("destaque").animate({
							width : "220px",
							height : "50px"
						}).find(".portlet-content").empty().css({
							visibility : "hidden"
						});
					}
				});
			});
		}
	});
}());