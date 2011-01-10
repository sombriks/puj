<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="competition">
		<a href="#templates/formjoinpug.xsl,pugid={id},pugnome={nome}">
			<xsl:value-of select="nome" />
		</a>
	</xsl:template>
	<xsl:template match="/">
		<h1>Selecione a competição:</h1>
		<div id="pugsatuais">
			<xsl:apply-templates />
		</div>
		<div id="formulario"></div>
		<script type="text/javascript" src="templates/joinpug.js"></script>
	</xsl:template>
</xsl:stylesheet>