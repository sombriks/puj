<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!-- este template serve para filtrar elementos html indesejados. -->
	<!-- abaixo a whitelist dos elementos permitidos, :)-->
	<xsl:template match="p|h1|h2|a|ul">
		<xsl:copy-of select="."/>
	</xsl:template>
	<xsl:template match="/">
		<xsl:apply-templates/>
	</xsl:template>
</xsl:stylesheet>