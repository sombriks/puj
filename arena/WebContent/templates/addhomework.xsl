<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:import href="listapug2.xsl"/>
	<!-- standard copy template -->
	<xsl:template match="/">
			<h1>Incluir homework</h1>
			<div id="formhw">
				<fieldset class="ui-corner-all ui-widget-content">
					<legend class="ui-widget-header ui-corner-all">Competição</legend>
						<select id="competicao">
							<xsl:apply-imports/>
						</select>
					<div title="info">
						<p>Not implemented yet</p>
					</div>
				</fieldset>
			</div>
			<script src="templates/addhomework.js"></script>
	</xsl:template>	
</xsl:stylesheet>