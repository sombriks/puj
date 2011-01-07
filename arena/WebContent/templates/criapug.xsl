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
				<fieldset>
					<legend>Versão</legend>
					<input/>
				</fieldset>
				<fieldset>
					<legend>Ativo</legend>
					<input type="checkbox"/>
				</fieldset>
				<p><button>Limpar</button><button>Salvar</button></p>
			</div>
		</div>
		<script type="text/javascript">
			$("#form").tabs().find("button").button();
		</script>
		<h1>PUG's criados</h1>
		<p>
			<xsl:apply-templates select="competition" />
		</p>
	</xsl:template>
</xsl:stylesheet>