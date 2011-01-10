<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="competition">
		<fieldset>
			<legend>Papel desejado</legend>
			<select class="role">
				<option>--Selecione--</option>
				<option>Aluno</option>
				<option>Professor</option>
				<option>Profissional</option>
				<option>Instituição</option>
				<option>Patrocinador</option>
			</select>
		</fieldset>
	</xsl:template>
	<xsl:template match="/">
		<xsl:apply-templates/>	
	</xsl:template>
</xsl:stylesheet>