/**
 * código aplicativo da tela inicial
 */
(function() {
	/* apply main transformation */
	$("#topo").xslTransform({
		urlxml : "staticdata/menu-headers.xml",
		urlxsl : "templates/menu-headers.xsl",
		hook : function() {
			// registrando eventos do novo trecho de documento
			$(".portlet .portlet-header").click(function() {
				var self = $(this).parent()[0];
				$(".portlet").each(function() {
					if (this == self) {
						$(this).animate({
							width : "70%",
							height : "100%"
						},function(){
							$(this).css({
								height : "auto"
							});
						}).addClass("destaque").find(".portlet-content").empty()
						.xslTransform({
							urlxml : $(this).find("a")[0].href,
							urlxsl : $(this).find("a")[1].href
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