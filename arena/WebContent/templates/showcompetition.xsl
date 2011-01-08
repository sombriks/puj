<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="competition">
		<div class="ui-corner-all ui-widget-content pugs">
			<div class="ui-widget-header ui-corner-all">
				<xsl:value-of select="nome" />
			</div>
			<div class="ui-widget ui-corner-all">
				<fieldset>
					<legend>Data de cadastro</legend>
					<div>
						<xsl:value-of select="dtCadastro" />
					</div>
				</fieldset>
			</div>
		</div>
		<script type="text/javascript" src="templates/listapug.js"></script>
	</xsl:template>
</xsl:stylesheet>