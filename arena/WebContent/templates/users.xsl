<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="user">
		<div class="ui-corner-all ui-widget-content" style="float:left;margin:5px;display:inline;">
			<div class="ui-widget-header ui-corner-all" style="margin:5px;height:20px;">
				<xsl:value-of select="nome"/>
			</div>
			<div class="ui-widget ui-corner-all" style="margin:5px">
				<img alt="gravatar" src="http://www.gravatar.com/avatar/{mailHex}.jpg?s=90" style="float:left;margin:5px"/>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="/">
		<h1>Participantes de todas as edições do PUG</h1>
		<xsl:apply-templates/>	
	</xsl:template>
</xsl:stylesheet>