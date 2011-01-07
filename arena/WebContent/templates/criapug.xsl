<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="competition">
		<div class="ui-corner-all ui-widget-content">
			<div class="ui-widget-header ui-corner-all">
				<xsl:value-of select="nome" />
			</div>
			<div class="ui-widget ui-corner-all">
			</div>
		</div>
	</xsl:template>
	<xsl:template match="/">
		<div id="form">
			<ul>
				<li><a href="#x1">Novo PUG</a></li>
			</ul>
			<div id="x1">
				<p class="status"></p>
				<fieldset class="ui-widget-content ui-corner-all">
					<legend class="ui-widget-header ui-corner-all">Versão</legend>
					<input/>
				</fieldset>
				<fieldset class="ui-widget-content ui-corner-all">
					<legend class="ui-widget-header ui-corner-all">Ativo</legend>
					<input type="checkbox"/>
				</fieldset>
				<p><button class="limpar">Limpar</button><button class="salvar">Salvar</button></p>
			</div>
		</div>
		<script type="text/javascript" src="templates/criapug.js"></script>
		<h1>PUG's criados</h1>
		<p>
			<xsl:apply-templates select="competition" />
		</p>
	</xsl:template>
</xsl:stylesheet>