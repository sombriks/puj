<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="opcao">
		<div
			class="portlet portlet-reduced ui-widget ui-widget-content ui-helper-clearfix ui-corner-all">
			<div class="portlet-header ui-widget-header ui-corner-all">
				<label>
					<xsl:value-of select="." />
				</label>
				<a style="display:hidden" href="{@uri}"></a>
				<a style="display:hidden" href="{@template}"></a>
			</div>
			<div class="portlet-content ui-widget ui-helper-clearfix" style="visibility:hidden"></div>
		</div>
	</xsl:template>
</xsl:stylesheet>