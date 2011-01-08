<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:import href="showcompetition.xsl"/>
	<xsl:template match="/">
		<h1>Competições</h1>
		<xsl:apply-templates/>
	</xsl:template>
</xsl:stylesheet>