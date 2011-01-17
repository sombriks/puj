<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="competition">
		<option value="{id}">
			<xsl:value-of select="nome" />
		</option>
	</xsl:template>
	<xsl:template match="/">
		<option value="-1">--selecione--</option>
		<xsl:apply-templates />
	</xsl:template>
</xsl:stylesheet>