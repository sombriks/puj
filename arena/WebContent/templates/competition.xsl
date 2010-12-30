<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="competition">
		<li>
			<xsl:value-of select="nome" />
		</li>
	</xsl:template>
	<xsl:template match="/">
		<ul>
			<xsl:apply-imports />
		</ul>
	</xsl:template>
</xsl:stylesheet>